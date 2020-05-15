class TestType < ApplicationRecord

    def self.get_test_type_id(type)
        res = TestType.where("name = '#{type}' or short_name = '#{type}'")
        return res[0]['id'] if !res.blank?
    end

end
