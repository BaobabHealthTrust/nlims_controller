require 'order_service.rb'
require 'user_service.rb'
require 'tracking_number_service.rb'
require 'thread'

class API::V2::OrderController < ApplicationController
	
	def request_order

				if(!params['district'])                                      
					msg = "district not provided";                                      
				elsif(!params['health_facility_name'])
					msg = "health facility name not provided"
				elsif (!params['requesting_clinician'])
					msg = 'requesting clinician not provided'
				elsif(!params['first_name'])
					msg = "patient first name not provided"
				elsif(!params['last_name'])
					msg = "patient last name not provided"
				elsif(!params['phone_number'])
					msg = "patient phone number not provided"
				elsif(!params['gender'])
					msg = "patient gender not provided"
				elsif(!params['national_patient_id'])
					msg = "patient ID not provided"
				elsif(!params['tests'])
					msg = "tests not provided";
				elsif(!params['date_sample_drawn'])
					msg = "date for sample drawn not provided"
				elsif(!params['sample_priority'])
					msg = "sample priority level not provided"
				elsif(!params['order_location'])
					msg = "sample order location not provided"
				elsif(!params['who_order_test_first_name'])
					msg = "first name for person ordering not provided"
				elsif(!params['who_order_test_last_name'])
					msg = "last name for person ordering not provided"
				else

						tracking_number = TrackingNumberService.generate_tracking_number
						st = OrderService.request_order(params, tracking_number)
									
						if st[0] == true

							response = {
									status: 200,
									error: false,
									message: 'order created successfuly',
									data: {
											tracking_number: st[1],
											couch_id: st[2]
										}
								}
							TrackingNumberService.prepare_next_tracking_number
						end										
				end

				if msg
					response = {
						status: 401,
						error: true,
						message: msg,
						data: {
							
						}
					}
				end							

		render plain: response.to_json and return	

	end

    def  confirm_order_request
        if params['tracking_number']  && params['specimen_type']	&& params['target_lab']
			OrderService.confirm_order_request(params)
			response = {
						status: 200,
						error: false,
						message: 'order request confirmed successfuly',
						data: {
						}
					}
		else
			response = {
					status: 401,
					error: true,
					message: 'missing parameter, please check',
					data: {
						
					}
			}
		end		
		render plain: response.to_json and return
    end

    
end