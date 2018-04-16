<<<<<<< HEAD
=======
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


>>>>>>> 6dca82065ac6ac9c61e5b39195bbe0b4574ba920

test_categories = ['Microbiology','Haematology','Blood Bank','Serology','Lab Reception','Biochemistry','Flow Cytometry','DNA/PCR']
categories_id_look_up = {}
measure_type_id_look_up = {}
counter = 1

<<<<<<< HEAD
=======
puts 'loading test categories--------------'
>>>>>>> 6dca82065ac6ac9c61e5b39195bbe0b4574ba920
test_categories.each do |ca|
	res = CouchTestCategory.create(name: ca , created_at: DateTime.now.strftime("%d/%m/%Y %H:%M"),type: 'test ategory' )
	tca = TestCategory.create(name: ca, doc_id: res.id)	
	categories_id_look_up[counter] = res.id 
	counter = counter + 1
end
counter = 1
test_types = [[1,'TB Microscopic Exam','AFB',2,'20 min'],[2,'GeneXpert','GXp',2,'6 hrs'],
			  [3,'Gram Stain','GS',2,'1 hr'], [4,'Culture & Sensitivity','C&S',2,'7 days'],
			  [5,'Cell Count','ClCt',2,'1 hr'],[6,'India Ink','II',2,'1 hr'], 
			  [7,'Differential','Diff',2,'1 hr'], [8,'ZN Stain','ZN',2,'30 min'],
			  [9,'Wet prep','WP',2,'30 min'],[10,'TB Tests','TB',2,'5 hrs'],
			  [11,'Urine Macroscopy','UA',1,'30 min'],[12,'Urine Microscopy','UA',1,'30 min'],
			  [13,'Urine Chemistries','UA',1,'30 min'],[14,'Stool Analysis','StoA',1,'30 min'],
			  [15,'Malaria Screening','MalScr',1,'30 min'],[16,'Blood Parasites Screen','BF',1,'1 hr'],
			  [17,'Semen Analysis','SA',1,'30 min'],[18,'HVS analysis','HVS',1,'30 min'],
			  [19,'Syphilis Test','STS',4,'30 min'],[20,'Hepatitis B Test','HBsAg',4,'30 min'],
			  [21,'Hepatitis C Test','HCVAB',4,'30 min'],[22,'Rheumatoid Factor Test','RF',4,'30 min'],
			  [23,'Cryptococcus Antigen Test','CRAG',4,'30 min'],[24,'Anti Streptolysis O','ASO',4,'30 min'],
			  [25,'C-reactive protein','CRP',4,'30 min'],[26,'Measles','Meas',4,'1 wk'],
			  [27,'Rubella','Rub',4,'1 wk'],[28,'CD4','CD4',8,'30 min'],
			  [29,'ABO Blood Grouping','ABO',5,'30 min'],[30,'Cross-match','Xmatch',5,'1 hr'],
			  [31,'Transfusion Outcome','',5,'30 min'],[32,'Liver Function Tests','LFT',7,'2 hrs'],
			  [33,'Renal Function Test','RFT',7,'24 hrs'],[34,'Lipogram','LIPO',7,'24 hrs'],
			  [35,'FBC','FBC',3,'2 hrs'],[36,'Electrolytes','E',7,'2 hrs'],
			  [37,'Enzymes','',7,'30 min'],[38,'Glucose','GLU',7,'2 hrs'],[39,'Prothrombin Time','PT',3,'2 hrs'],
			  [40,'APTT','APTT',3,'2 hrs'],[41,'INR','INR',3,'2 hrs'],
			  [42,'ESR','ESR',3,'2 hrs'],[43,'Sickling Test','',3,'24hrs'],
			  [44,'Pregnancy Test','PT(ßHCG)',4,'30 min'],[45,'Manual Differential & Cell Morphology','PRSM',3,'48 hrs'],
			  [46,'Pancreatic Function Test','PFT',7,''],[47,'Direct Coombs Test','',5,'4  hours'],
			  [48,'Calcium','Ca',7,'2 hrs'],[49,'Phosphorus','P',7,'2 hrs'],
			  [50,'Magnesium','Mg',7,'2 hrs'],[51,'Creatinine Kinase','CK',7,'2 hrs'],
			  [52,'Uric Acid','UA',7,'2 hrs'],[53,'ESBL Test','ESBL',2,''],
			  [54,'APTT Ratio','APTT Ratio',3,'24hrs'],[55,'Fibronogen','PF',3,'24hrs'],
			  [56,'50:50 Normal Plasma','',3,'24hrs'],[57,'50:50 Mix FVIII Deficient','',3,'24hrs'],
			  [58,'50:50 Mix F-IX Deficient','',3,'24hrs'],[59,'Factor VIII Assay','',3,''],
			  [60,'Factor IX Assay','',3,'24hrs'],[61,'TT','TT',3,'24hrs'],
			  [62,'Coagulation Assay','',3,'24hrs'],[63,'Cardiac Function Tests','CFT',7,''],
			  [64,'Minerals','',7,'24hrs'],[65,'BioMarkers','',7,'24hrs'],
			  [66,'Iron Studies','',7,''],[67,'HbA1c','',7,'',1,''],
			  [68,'Microalbumin','MAL',7,''],[69,'Microprotein','MPR',7,''],
			  [70,'Von Willebrand Factor','vWf',3,'72'],[71,'Viral Load','VL',9,'30']	

			]
<<<<<<< HEAD

=======
puts 'loading test types--------------'
>>>>>>> 6dca82065ac6ac9c61e5b39195bbe0b4574ba920
test_types.each do |t|
	_id = categories_id_look_up[t[3]]
	res = CouchTestType.create(name: t[1], short_name: t[2], test_category_id: _id, targetTAT: t[4])
	TestType.create(name: t[1], short_name: t[2], test_category_id: t[3], targetTAT: t[4], doc_id: res.id)
end


specimen_types = [[1,'Sputum'],[2,'CSF'],[3,'Blood'],[4,'Pleural Fluid'],[5,'Ascitic Fluid'],[6,'Pericardial Fluid'],[7,'Peritoneal Fluid'],
				  [8,'HVS'], [9,'Swabs'], [10,'Pus'], [11,'Stool'],[12,'Urine'],[13,'Other'],[15,'Semen'],[16,'Swab'],[17,'Synovial Fluid'],
				  [18,'Plasma'],[19,'DBS (Free drop to DBS card)'],[21,'DBS (Using capillary tube)']
				]

<<<<<<< HEAD
=======
puts 'loading specimen types--------------'
>>>>>>> 6dca82065ac6ac9c61e5b39195bbe0b4574ba920
specimen_types.each do |sp|
	res = CouchSpecimenType.create(name: sp[1])
	SpecimenType.create(name:sp[1], doc_id: res.id)
end



test_panels = ['CSF Analysis','Urinalysis','Sterile Fluid Analysis','MC&S']
<<<<<<< HEAD
=======
puts 'loading test panels--------------'
>>>>>>> 6dca82065ac6ac9c61e5b39195bbe0b4574ba920
test_panels.each do |tp|
	res = CouchPanelType.create(name: tp)
	PanelType.create(name: tp, doc_id: res.id)
end


<<<<<<< HEAD
test_status = ['not_received','pending','started','completed','verified','voided','not-done','test-rejected']

=======
test_status = ['not-received','pending','started','completed','verified','voided','not-done','test-rejected','drawn']

puts 'loading test statuses--------------'
>>>>>>> 6dca82065ac6ac9c61e5b39195bbe0b4574ba920
test_status.each do |t|
	res = CouchTestStatus.create(name: t)
	TestStatus.create(name: t, doc_id: res.id)
end


specimen_status = ['specimen_not_collected','specimen_accepted','specimen_rejected']

<<<<<<< HEAD
=======
puts 'loading specimen statuses--------------'
>>>>>>> 6dca82065ac6ac9c61e5b39195bbe0b4574ba920
specimen_status.each do |sps|
	res = CouchSpecimenType.create(name: sps)
	SpecimenStatus.create(name:sps, doc_id: res.id)
end

ward = ['CWC','CWC HDU','CWB','OPD 2','Facilities','OPD 1','CWA','Theatre','Dialysis Unit','ICU','1A','1B','2B','2A','Oncology','3A','Skin','Dental',
		'3A','3B','Labour','Dental','Skin','Eye','Under 5 Clinic','7B','7C','GYNAE','Casulty','EM OPD','EM HDU','EM LW',
		'ANC']

<<<<<<< HEAD
=======
puts 'loading wards--------------'
>>>>>>> 6dca82065ac6ac9c61e5b39195bbe0b4574ba920
ward.each do |w|
	res =  CouchWard.create(name: w)
	Ward.create(name: w, doc_id: res.id)	
end


measure_type = ['Numeric Range','Alphanumeric Values','Autocomplete','Free Text']

<<<<<<< HEAD
=======
puts 'loading measure types--------------'
>>>>>>> 6dca82065ac6ac9c61e5b39195bbe0b4574ba920
measure_type.each do |mt|
	res = CouchMeasureType.create(name: mt)
	MeasureType.create(name: mt, doc_id: res.id)
end

measures = [
	[1,2,"BS for mps",],[2,2,"Grams stain",''],[3,2,"SERUM AMYLASE",''],[4,2,'calcium',''],[5,2,'SGOT',''],
	[6,2,"Indirect COOMBS test",''],[7,2,"Direct COOMBS test",''],[8,2,"Du test",''],[9,1,"URIC ACID",'mg/dl'],
	[10,4,"CSF for biochemistry",''],[11,4,'PSA',''],[12,1,'Total','mg/dl'],[13,1,"Alkaline Phosphate",'u/l'],
	[14,1,'Direct','mg/dl'],[15,1,"Total Proteins",''],[16,4,'LFTS',''],[17,1,'Chloride','mmol/l'],
	[18,1,'Potassium','mmol/l'],[19,1,'Sodium','mmol/l'],[20,4,'Electrolytes',''],[21,1,'Creatinine','mg/dl'],
	[22,1,'Urea','mg/dl'],[23,4,'RFTS',''],[24,4,'TFT',''],[25,4,'GXM',''],[26,2,"Blood Grouping",''],
	[27,1,'HB','g/dL'],[28,4,"Urine microscopy",''],[29,4,"Pus cells",''],[30,4,"S. haematobium",''],[31,4,"T. vaginalis",''],
	[32,4,"Yeast cells",''],[33,4,"Red blood cells",''],[34,4,'Bacteria',''],[35,4,'Spermatozoa',''],
	[36,4,"Epithelial cells",''],[37,4,'ph',''],[38,4,"Urine chemistry",''],[39,4,'Glucose',''],[40,4,'Ketones',''],
	[41,4,'Proteins',''],[42,4,'Blood',''],[43,4,'Bilirubin',''],[44,4,"Urobilinogen Phenlpyruvic acid",''],
	[45,4,'pH',''],[46,1,'WBC','x10³/µL'],[47,1,'Lym','L'],[48,1,'Mon','*'],[49,1,'Neu','*'],[50,1,'Eos',''],
	[51,1,'Baso',''],[52,4,'tb',''],[53,4,"Sample Location (Swab)",''],[54,4,"Sample Appearance (Fluids)",''],
	[55,2,'Culture',''],[56,2,"Gram Stain",''],[57,2,"Gram Stain Morphology",''],[58,4,'MTB',''],[59,2,'Gram',''],
	[60,2,'Culture',''],[61,1,'WBC','cells/cu.mm'],[62,1,'RBC','cells/cu.mm'],[63,2,"India ink",''],
	[64,2,"gram morphology",''],[65,1,'Polymorphs','%'],[66,1,'Lymphocytes','%'],[67,2,"Clue cells",''],
	[68,4,"Other organism seen",''],[69,2,'ZN',''],[70,2,"wet prep",''],[71,4,"Other organism seen",''],
	[72,2,"Macro exam",''],[73,2,"Diff remarks",''],[74,2,'Colour',''],[75,2,'Appearance',''],
	[76,1,'WBC','/hpf'],[77,1,'RBC','/hpf'],[78,2,"Epithelial cells",''],[79,4,'Casts',''],[80,4,'Crystals',''],
	[81,4,'Parasites',''],[82,2,"Yeast cells",''],[83,2,'Blood','RBC/ul'],[84,1,'Urobilinogen','mg/dl'],
	[85,2,'Bilirubin',''],[86,2,'Protein',''],[87,2,'Protein','mg/dl'],[88,2,'Nitrate',''],[89,2,'Ketones',''],
	[90,2,'Glucose','mg/dl'],[91,2,"Specific gravity",''],[92,2,'Leucocytes','WBC/ul'],[93,4,'Macroscopy',''],
	[94,2,'Consistency',''],[95,4,'Microscopy',''],[96,2,"Blood film",''],[97,2,"Malaria Species",''],
	[98,2,'MRDT',''],[99,4,"Blood film",''],[100,2,'Appearance',''],[101,4,"Liquifaction time",''],
	[102,1,'volume','ml'],[103,1,'Motility','%'],[104,2,'pH',''],[105,1,"Sperm count",''],
	[106,4,"Sperm morphology",''],[107,2,'Macroscopy',''],[108,1,'WBC','hpf'],[109,2,"Epithelial cells",''],
	[110,4,'Parasites/Bacteria',''],[111,2,'Spermatozoa',''],[112,2,'RPR',''],[113,2,'VDRL',''],[114,2,'TPHA',''],
	[115,2,"Hepatitis B",''],[116,2,"Hepatitis C",''],[117,2,"Rheumatoid Factor",''],[118,2,'CrAg',''],
	[119,2,'ASO',''],[120,2,'CRP',''],[121,2,"Measles IgM ELISA-Behring enzygnost",''],
	[122,2,"Rubella IgM ELISA-Behring enzynost",''],[123,1,'Serum',''],[124,1,"CD4 Count",'cell/μl'],[125,2,'Grouping',''],
	[126,4,"Pack No.",''],[127,2,"Pack ABO Group",''],[128,2,"Product Type",''],[129,4,"Expiry Date",''],
	[130,4,'Volume','mL'],[131,2,"Cross-match Method",''],[132,2,'Outcome',''],[133,1,'ALT/GPT','U/L'],
	[134,1,'AST/GOT','U/L'],[135,1,"Alkaline Phosphate(ALP)",'U/L'],[136,1,'GGT/r-GT','U/L'],
	[137,1,"Bilirubin Direct(BID)",'mg/dl'],[138,1,"Bilirubin Total(BIT))",'mg/dl'],[139,1,'Calcium','mg/dl'],
	[140,1,'Albumin(ALB)','mg/dl'],[141,1,"Total Protein(PRO)",'mg/dl'],[142,1,'Urea','mg/dl'],
	[143,1,'Creatinine','mg/dl'],[144,1,'Glucose','mg/dl'],[145,1,'Triglycerides(TG)','mg/dl'],
	[146,1,"Cholestero l(CHOL)",'mg/dl'],[147,1,'RBC','10^6/uL'],[148,1,'HGB','g/dL'],[149,1,'HCT','%'],[150,1,'MCV','fL'],
	[151,1,'MCH','pg'],[152,1,'MCHC','g/dL'],[153,1,'PLT','10^3/uL'],[154,1,'RDW-SD','fL'],[155,1,'RDW-CV','%'],
	[156,1,'PDW','fL'],[157,1,'MPV','fL'],[158,1,'PCT','%'],[159,1,'NEUT%','%'],[160,1,'LYMPH%','%'],[161,1,'MONO%','%'],
	[162,1,'EO%','%'],[163,1,'BASO%','%'],[164,1,'NEUT#','10^3/uL'],[165,1,'LYMPH#','10^3/uL'],
	[166,1,'MONO#','10^3/uL'],[167,1,'EO#','10^3/uL'],[168,1,'BASO#','10^3/uL'],[169,1,'WBC','10^3/uL'],
	[170,1,'Mid#','10^3/uL'],[171,1,'Gran#','10^3/uL'],[172,1,'Mid%','%'],[173,1,'Gran%','%'],[174,1,'EOS%','%'],
	[175,1,'P-LCC','10^9/L'],[176,1,'P-LCR','%'],[177,1,"CD4 %",'%'],[178,1,"Lymphocyte Count",'cell/μl'],
	[179,1,"CD8 Count",'cell/μl'],[180,1,"CD3 Count",'cell/μl'],[181,1,'K',''],[182,1,'Na',''],[183,1,'Cl',''],
	[184,4,"RIF Resistance",''],[185,1,'K','mmol/L'],[186,1,'Na','mmol/L'],[187,1,'Cl','mmol/L'],
	[188,1,'a-AMYLASE-H','U/L'],[189,1,'ALT-H',''],[190,1,'AST-H',''],[191,1,'ALP-H',''],[192,1,'TP-H',''],
	[193,1,'TC-H',''],[194,1,'UREA-H',''],[195,1,'GLU-O-H',''],[196,1,'TBIL-DSA-H',''],[197,1,'DBIL-DSA-H',''],
	[198,1,'UA-H',''],[199,1,'TG-H',''],[200,1,'ALB-H',''],[201,2,"Smear microscopy result",''],
	[202,4,"Gene Xpert MTB",''],[203,4,"Gene Xpert RIF Resistance",''],[204,1,'Glucose','mg/dl'],
	[205,1,'PT','sec',''],[206,1,'APTT','sec'],[207,1,'INR',''],[208,1,'ESR','mm/hr'],[209,2,"Sickling Screen",''],
	[210,2,"Pregnancy Test",''],[211,4,"Nucleated Red Cells","/100 WBC"],[212,4,'Neutrophils','%'],[213,4,'Lymphocytes','%'],
	[214,4,'Monocytes','%'],[215,4,'Eosinophils','%'],[216,4,'Basophils','%'],[217,4,'Promyelocytes','%'],
	[218,4,'Myelocytes','%'],[219,4,'Metamyelocytes','%'],[220,4,"Band/Staff Forms",'%'],[221,4,'Blasts','%'],
	[222,4,'Other','%'],[223,4,"RBC Comments",''],[224,4,"WBC Comments",''],[225,4,"Platelet Comments",''],
	[226,4,"Interpretative Comments",''],[227,4,"Attempted/ Differential Diagnosis",''],[228,4,"Further Tests",''],
	[229,1,'Amylase','U/L'],[230,1,'Lipase','U/L'],[231,2,"Direct Coombs Test",''],[232,2,"HIV Status",''],
	[233,2,"Reason For Testing",''],[234,2,"Indication for GeneXpert Test",''],[235,1,'Calcium','mg/dl'],
	[236,1,'LDH','U/L'],[237,1,"HDL Direct (HDL-C)",'mg/dl'],[238,1,"LDL Direct (LDL-C)",'mg/dl'],
	[239,1,'CREA-J','mg/dl'],[240,1,'CREA-S','mg/dl'],[241,1,'Ca','mg/dl'],[242,1,'P','mg/dl'],[243,1,'Mg','mg/dl'],
	[244,1,'CK','IU/L'],[245,1,'UA','mg/dl'],[246,1,"Bilirubin Direct(DBIL-VOX)",'mg/dl'],
	[247,1,"Bilirubin Total(TBIL-VOX)",'mg/dl'],[248,1,"Progressive motility",'%'],[249,1,"Non-progressive motility",'%'],
	[250,1,'Immotility','%'],[251,2,'ESBL',''],[252,1,'Cefotaxime','mm'],[253,1,"Cefotaxime + Clavulanate",'mm'],
	[254,1,'Ceftazidime','mm'],[255,1,"Ceftazidime + Clavulanate",'mm'],[256,1,'Cefepime','mm'],
	[257,1,"Cefepime + clavulanate",'mm'],[258,2,'pH',''],[259,1,"APTT Ratio",''],[260,1,'Fibronogen','g/L'],
	[261,1,"50:50 Normal Plasma",'sec'],[262,1,"50:50 Mix FVIII Deficient",'sec'],[263,1,"50:50 Mix F-IX Deficient",'sec'],
	[264,1,"Factor VIII Assay",'IU/dL'],[265,1,"Factor IX Assay",'IU/dL'],[266,1,'TT','sec'],[267,1,'PT','secs'],
	[268,1,'INR',''],[269,1,'APTT','sec'],[270,1,"APTT Ratio",''],[271,1,'TT','sec'],[272,1,'Fibronogen','g/L'],
	[273,1,"50:50 Mix Normal Plasma",'sec'],[274,1,"50:50 Mix FVIII Deficient",'sec'],[275,1,"50:50 Mix F-IX Deficient",'sec'],
	[276,1,"Factor IX Assay",'IU/dL'],[277,1,"Factor VIII Assay",'IU/dL'],[278,1,"Creatine Kinase MB(CKMB)",'U/L'],
	[279,1,"Creatine Kinase(CKN)",'U/L'],[280,1,'Lactatedehydrogenase(LDH)',''],[281,1,"Calcium (CA)",'mg/dl'],
	[282,1,"Phosphorus (PHOS)",'mg/dl'],[283,1,"Magnesium (MGXB)",'mg/dl'],[284,1,"C-reactive Protein (CRP)",'mg/dl'],
	[285,1,"Rheumatoid Factor (RF)",'IU/mL'],[286,1,"Antistreptolysin O (ASO)",'IU/mL'],[287,1,'Iron','mg/dl'],
	[288,1,'UIBC','mg/dl'],[289,1,'HbA1c','%'],[290,1,'MAL','mg/dl'],[291,1,'MPR','mg/dl'],
	[292,1,"Von Willebrand (Antigen)",'%'],[293,1,"Von Willebrand (Activity)",'%'],[294,4,"Viral Load",'']

]
<<<<<<< HEAD

measures.each do |me|
	res = CouchMeasure.create(name: me[2],units: me[3],measure_type: 'x')
=======
puts 'loading test measures--------------'
measures.each do |me|
	res = CouchMeasure.create(name: me[2],unit: me[3],measure_type: 'x')
>>>>>>> 6dca82065ac6ac9c61e5b39195bbe0b4574ba920
	Measure.create(name: me[2], doc_id: res.id, unit: me[3], measure_type_id: me[1])
end


testtype_measures =[
		[233,11,74],[234,11,75],[299,31,132],[309,20,115],[311,21,116],[349,1,52],[522,24,119],[523,16,99],
		[524,25,120],[527,30,126],[528,30,127],[529,30,128],[530,30,129],[531,30,130],[532,30,131],[533,23,118],
		[535,7,65],[536,7,66],[537,7,73],[594,6,63],[611,22,117],[612,27,122],[620,14,93],[621,14,94],[622,14,95],
		[623,19,112],[624,19,113],[625,19,114],[655,9,70],[656,9,71],[663,2,58],[664,2,184],[673,35,169],[674,35,147],
		[675,35,148],[676,35,149],[677,35,150],[678,35,151],[679,35,152],[680,35,153],[681,35,154],
		[682,35,155],[683,35,156],[684,35,157],[685,35,158],[686,35,159],[687,35,160],[688,35,161],
		[689,35,162],[690,35,163],[691,35,164],[692,35,165],[693,35,166],[694,35,167],[695,35,168],[696,35,170],
		[697,35,171],[698,35,172],[699,35,173],[700,35,174],[701,35,175],[702,35,176],[704,40,206],
		[705,41,207],[706,42,208],[708,44,210],[709,45,211],[710,45,212],[711,45,213],[712,45,214],[713,45,215],
		[714,45,216],[715,45,217],[716,45,218],[717,45,219],[718,45,220],[719,45,221],[720,45,222],[721,45,223],
		[722,45,224],[723,45,225],[724,45,226],[725,45,227],[726,45,228],[727,43,209],[736,47,231],[752,26,121],
		[763,28,124],[764,28,177],[765,28,178],[766,28,179],[767,28,180],[775,18,107],[776,18,108],[777,18,109],
		[778,18,110],[779,18,111],[860,37,188],[861,37,189],[862,37,190],[863,37,191],[864,37,192],[865,37,193],
		[866,37,194],[867,37,195],[868,37,196],[869,37,197],[870,37,198],[871,37,199],[872,37,200],[913,50,243],
		[920,49,242],[924,48,241],[928,51,244],[943,12,76],[944,12,77],[945,12,78],[946,12,79],[947,12,80],
		[948,12,81],[949,12,82],[959,17,248],[960,17,249],[961,17,250],[962,17,100],[963,17,101],
		[964,17,102],[965,17,104],[966,17,105],[967,17,106],[982,13,258],[983,13,83],[984,13,84],[985,13,85],
		[986,13,87],[987,13,88],[988,13,89],[989,13,90],[990,13,91],[991,13,92],[992,53,251],
		[993,53,252],[994,53,253],[995,53,254],[996,53,255],[997,53,256],
		[998,53,257],[999,54,259],[1000,39,205],[1001,55,260],[1002,56,261],
		[1003,57,262],[1004,58,263],[1005,59,264],[1006,60,265],[1007,61,266],[1008,62,267],[1009,62,268],
		[1010,62,269],[1011,62,270],[1012,62,271],[1013,62,272],[1014,62,273],
		[1015,62,274],[1016,62,275],[1017,62,276],[1018,62,277],[1026,10,72],[1027,10,201],[1028,10,202],[1029,10,203],
		[1030,10,232],[1031,10,233],[1032,10,234],[1033,5,61],[1034,5,62],[1035,3,59],[1036,3,67],[1037,3,68],
		[1038,8,69],[1043,33,142],[1044,33,143],[1045,32,133],[1046,32,134],[1047,32,135],[1048,32,136],[1049,32,137],
		[1050,32,138],[1051,32,140],[1052,32,141],[1053,36,185],[1054,36,186],[1055,36,187],[1062,63,278],[1063,63,279],
		[1064,63,280],[1065,46,229],[1066,46,230],[1067,34,145],[1068,34,146],[1069,34,237],[1070,34,238],[1074,64,281],
		[1075,64,282],[1076,64,283],[1077,65,284],[1078,65,285],[1079,65,286],[1080,66,287],[1081,66,288],[1082,52,245],
		[1083,38,204],[1084,67,289],[1085,68,290],[1086,69,291],[1087,15,96],[1088,15,97],[1089,15,98],[1090,70,292],
		[1091,70,293],[1093,71,294],[1094,29,125],[1095,4,60]

	]
<<<<<<< HEAD
puts '--------------loading test type measures--------------'
testtype_measures.each do |tm|

	TesttypeMeasure.create(test_type_id: tm[1] , measure_type_id: tm[2])

end

puts '--------------creating default user account--------------'
=======
puts 'loading test type measures--------------'
testtype_measures.each do |tm|

	TesttypeMeasure.create(test_type_id: tm[1] , measure_id: tm[2])

end

puts 'loading panel tests---------------------'

panel_tests =  [
				[2,11],[2,12],[2,13],[1,3],[1,4],[1,5],[1,6],[1,7],[4,4],[4,3],[3,5],[3,4],[3,7],[3,3],[3,8]
	]

panel_tests.each do |pan|
	Panel.create(
			test_type_id:  pan[1],
			panel_type_id: pan[0]
		)
end


puts 'loading measure ranges...................'

ranges = [
			[1,	'',	'',	'',	'',	'',	'No mps seen',	'Negative',	''],
			[1,	'',	'',	'',	'',	'',	'+','Positive',	''],
			[1,	'',	'',	'',	'',	'',	'++','Positive',''],
			[1,	'',	'',	'',	'',	'',	'+++','Positive', ''],
			[2,	'',	'',	'',	'',	'',	'Negative',	'',	''],
			[2,	'',	'',	'',	'',	'',	'Positive',	'',	''],
			[3,	'',	'',	'',	'',	'',	'Low',	'',	''],
			[3,	'',	'',	'',	'',	'',	'High',	'',	''],
			[3,	'',	'',	'',	'',	'',	'Normal','',''],
			[4,	'',	'',	'',	'',	'',	'High',	'',	''],
			[4,	'',	'',	'',	'',	'',	'Low',	'',	''],
			[4,	'',	'',	'',	'',	'',	'Normal','',''],
			[5,	'',	'',	'',	'',	'',	'High',	'',''],
			[5,	'',	'',	'',	'',	'',	'Low',	'',	''],
			[5,	'',	'',	'',	'',	'',	'Normal',	'',	''],
			[6,	'',	'',	'',	'',	'',	'Positive',	'',	''],
			[6,	'',	'',	'',	'',	'',	'Negative',	'',	''],
			[7,	'',	'',	'',	'',	'',	'Positive',	'',	''],
			[7,	'',	'',	'',	'',	'',	'Negative',	'',	''],
			[8,	'',	'',	'',	'',	'',	'Positive',	'',	''],
			[8,	'',	'',	'',	'',	'',	'Negative',	'',	''],
			[26,'',	'',	'',	'',	'',	'O-','',''],
			[26,'',	'',	'',	'',	'',	'O+','',''],
			[26,'',	'',	'',	'',	'',	'A-','',''],
			[26,'',	'',	'',	'',	'',	'A+','',''],
			[26,'',	'',	'',	'',	'',	'B-','',''],
			[26,'',	'',	'',	'',	'',	'B+','',''],
			[26,'',	'',	'',	'',	'',	'AB-',	'',	''],
			[26,'',	'',	'',	'',	'',	'AB+',	'',	''],
			[46,0,	'100',	2,	4,	 11, '','', ''],
			[47,0,	'100',	2,	1.5, 4,	'',	'',	''],
			[48,0,	'100',	2,	0.1, 9,	'',	'',	''],
			[49,0,	'100',	2,	2.5, 7,	'',	'',	''],
			[50,0,	'100',	2,	0,	 6,	'',	'',	''],
			[51,0,	'100',	2,	0,	 2,	'',	'',	''],
			[55,'',	'',	'',	'',	'',	'Not performed',''],
			[55,'',	'',	'',	'',	'',	'No growth 24 hrs',	''],
			[55,'',	'',	'',	'',	'',	'No growth 48 hrs',	''],
			[55,'',	'',	'',	'',	'',	'No growth 72 hrs',	'NEGATIVE',''],
			[55,'',	'',	'',	'',	'',	'Growth	POSITIVE',	''],
			[56,'',	'',	'',	'',	'',	'Gram Positve',		''],
			[56,'',	'',	'',	'',	'',	'Gram Negative',''],
			[56,'',	'',	'',	'',	'',	'Gram Variable', ''],
			[57,'',	'',	'',	'',	'',	'Cocci', ''],
			[57,'',	'',	'',	'',	'',	'Bacilli',	''],
			[57,'',	'',	'',	'',	'',	'Cocci-Bacilli',''],
			[57,'',	'',	'',	'',	'',	'Diplococci',	''],
			[57,'',	'',	'',	'',	'',	'Yeast',''],
			[57,'',	'',	'',	'',	'',	'Other', ''],
			[60,'',	'',	'',	'',	'',	'Growth', 'POSITIVE',''],
			[60,'',	'',	'',	'',	'',	'No growth',''],
			[60,'',	'',	'',	'',	'',	'Mixed growth; no predominant organism',''],
			[60,'',	'',	'',	'',	'',	'Growth of normal flora; no pathogens isolated',''],
			[61,	0,	120,	2,	0,	1000000,	'',		''],
			[62,	0,	120,	2,	0,	1000000,	'',		''],
			[63,	'',	'',	'',	'',	'',	'Positive',	'POSITIVE',	''],
			[63,	'',	'',	'',	'',	'',	'Negative',	'NEGATIVE',	''],
			[64,	'',	'',	'',	'',	'',	'Cocci',		''],
			[64,	'',	'',	'',	'',	'',	'Bacilli',		''],
			[64,	'',	'',	'',	'',	'',	'Cocco-bacilli',		''],
			[59,	'',	'',	'',	'',	'',	'No organism seen',		''],
			[59,	'',	'',	'',	'',	'',	'Gram positive cocci (clusters)',		''],
			[59,	'',	'',	'',	'',	'',	'Gram positive cocci (chains)',		''],
			[65,	0,	120,    2,	0,	100,	''		''],
			[66,	0,	120,	2,	0,	100,	''		''],
			[67,	'',	'',	'',	'',	'',	'Yes',		''],
			[67,	'',	'',	'',	'',	'',	'No',		''],
			[59,	'',	'',	'',	'',	'',	'Gram positive diplococci',	''],
			[59,	'',	'',	'',	'',	'',	'Gram positive bacilli',		''],
			[59,    '',	'',	'',	'',	'',	'Gram positive cocco-bacilli',	''],
			[59,	'',	'',	'',	'',	'',	'Gram negative cocci',		''],
			[59,	'',	'',	'',	'',	'',	'Gram negative bacilli',	''],
			[59,	'',	'',	'',	'',	'',	'Gram negative cocco-bacilli',		''],
			[59,	'',	'',	'',	'',	'',	'Gram negative diplococci',		''],
			[59,	'',	'',	'',	'',	'',	'Gram variable cocci',	''],
			[59,	'',	'',	'',	'',	'',	'Gram variable  bacilli',		''],
			[59,	'',	'',	'',	'',	'',	'Gram variable cocco-bacilli',		''],
			[59,	'',	'',	'',	'',	'',	'Yeast cells seen',		''],
			[60,	'',	'',	'',	'',	'',	'Growth of contaminants',		''],
			[69,	'',	'',	'',	'',	'',	'Scanty AAFB seen',		''],
			[69,	'',	'',	'',	'',	'',	'1+ AAFB seen',		''],
			[69,	'',	'',	'',	'',	'',	'2+ AAFB seen',		''],
			[69,	'',	'',	'',	'',	'',	'3+ AAFB seen',		''],
			[69,	'',	'',	'',	'',	'',	'No AAFB seen',		''],
			[70,	'',	'',	'',	'',	'',	'Trichomonas vaginalis seen',		''],
			[70,	'',	'',	'',	'',	'',	'Yeast cells seen',		''],
			[70,	'',	'',	'',	'',	'',	'Spermatozoa seen',		''],
			[72,	'',	'',	'',	'',	'',	'Clear/colourless',		''],
			[72,	'',	'',	'',	'',	'',	'Slightly Cloudy',		''],
			[72,	'',	'',	'',	'',	'',	'Purulent',		''],
			[72,	'',	'',	'',	'',	'',	'Clotted',		''],
			[72,	'',	'',	'',	'',	'',	'Turbid',		''],
			[72,	'',	'',	'',	'', '',	'Blood stained',		''],
			[73,	'',	'',	'',	'',	'',	'Mainly lymphocytes',		''],
			[73,	'',	'',	'',	'',	'',	'Mainly polymorphs',		''],
			[73,	'',	'',	'',	'',	'',	'Not enough cells for differential count',		''],
			[73,	'',	'',	'',	'',	'',	'No cells seen',		''],
			[58,	'',	'',	'',	'',	'',	'Positive',	'POSITIVE',	''],
			[58,	'',	'',	'',	'',	'',	'Negative',	'Negative',	''],
			[74,	'',	'',	'',	'',	'',	'Brown',	''],
			[74,	'',	'',	'',	'',	'',	'Red',	''],
			[74,	'',	'',	'',	'',	'',	'Pale',	''],
			[74,	'',	'',	'',	'',	'',	'Yellow', ''],
			[74,	'',	'',	'',	'',	'',	'Light yellow',	''],
			[74,	'',	'',	'',	'',	'',	'Amber',	''],
			[75,	'',	'',	'',	'',	'',	'Cloudy',	''],
			[75,	'',	'',	'',	'',	'',	'Blood Stained',	''],
			[75,	'',	'',	'',	'',	'',	'Clear',	''],
			[76,	0,	120,	2,	0,	1000000,	'',		''],
			[77,	0,	120,	2,	0,	1000000,	'',		''],
			[78,	'',	'',	'',	'',	'',	'+',		''],
			[78,	'',	'',	'',	'',	'',	'++',		''],
			[78,	'',	'',	'',	'',	'',	'+++',		''],
			[82,	'',	'',	'',	'',	'',	'Yeast cells +',		''],
			[82,	'',	'',	'',	'',	'',	'Not seen',''],
			[83,	'',	'',	'',	'',	'',	'Negative', ''],
			[83,	'',	'',	'',	'',	'',	'Heamolysis + (10) RBC/ul',		''],
			[83,	'',	'',	'',	'',	'',	'Heamolysis ++ (50) RBC/ul',		''],
			[83,	'',	'',	'',	'',	'',	'Heamolysis+++ (250) RBC/ul',		''],
			[83,	'',	'',	'',	'',	'',	'Non- Heamolysis +10 RBC/ul', ''],
			[83,	'',	'',	'',	'',	'',	'Non- Heamolysis ++50 RBC/ul', ''],
			[83,	'',	'',	'',	'',	'',	''],
			[84,	0,	120,	2,	0,	1000000, '',	''],
			[85,	'',	'',	'',	'',	'',	'Negative',		''],
			[85,	'',	'',	'',	'',	'',	'+',		''],
			[85,	'',	'',	'',	'',	'',	'++',		''],
			[85,	'',	'',	'',	'',	'',	'+++',		''],
			[86,	'',	'',	'',	'',	'',	'Negative',		''],
			[86,	'',	'',	'',	'',	'',	'Trace',	''],
			[87,	0,	120,	2,	1,	1000000,	'',	''],	
			[88,	'',	'',	'',	'',	'',	'Negative',	'NEGATIVE'	''],
			[88,	'',	'',	'',	'',	'',	'Trace',		''],
			[88,	'',	'',	'',	'',	'',	'Positive',	'POSITIVE',	''],
			[89,	'',	'',	'',	'',	'',	'Negative',	'NEGATIVE',	''],
			[89,	'',	'',	'',	'',	'',	'+/-',		''],
			[89,	'',	'',	'',	'',	'',	'Positive',	'POSITIVE', ''],
			[90,	0,	120,	2,	0,	0,	'',	'NEGATIVE',	''],
			[90,	0,	120,	2,	1,	1000000,'',	'POSITIVE'	''],
			[91,	0,	120,	2,	1,	100000,	'',	''],
			[92,	0,	120,	2,	0,	0,	'',	'NEGATIVE',	''],
			[92,	0,	120,	2,	1,	1000000,	'',	'POSITIVE', ''],
			[94,	'',	'',	'',	'',	'',	'Formed'		''],
			[94,	'',	'',	'',	'',	'',	'Semi-formed',		''],
			[94,	'',	'',	'',	'',	'',	'Unformed',		''],
			[94,	'',	'',	'',	'',	'',	'Watery',		''],
			[94,	'',	'',	'',	'',	'',	'Rice appearance',		''],
			[96,	'',	'',	'',	'',	'',	'No parasite seen',		''],
			[96,	'',	'',	'',	'',	'',	'+ (1-10 parasites/100 fields)',		''],
			[96,	'',	'',	'',	'',	'',	'++ (11-99 parasites/100 field)', 		''],
			[96,	'',	'',	'',	'',	'',	'+++ (1-10 parasites /field)',		''],
			[96,	'',	'',	'',	'',	'',	'++++ (>10 parasites/field)',		''],
			[97,	'',	'',	'',	'',	'',	'Plasmodium falciparum',		''],
			[97,	'',	'',	'',	'',	'',	'Plasmodium ovale',		''],
			[97,	'',	'',	'',	'',	'',	'Plasmodium vivax',		''],
			[97,	'',	'',	'',	'',	'',	'Plasmodium malariae',		''],
			[97,	'',	'',	'',	'',	'',	'Plasmodium knowlesi',		''],
			[98,	'',	'',	'',	'',	'',	'Positive',		''],
			[98,	'',	'',	'',	'',	'',	'Negative',		''],
			[100,	'',	'',	'',	'',	'',	'Grey',		''],
			[100,	'',	'',	'',	'',	'',	'Opaque',		''],
			[100,	'',	'',	'',	'',	'',	'Red-brown',		''],
			[100,	'',	'',	'',	'',	''	'Opalescent',		''],
			[102,	0,	120,	0,	0,	1000,'',		''],
			[103,	0,	120,	0,	0,	100,	'',		''],
			[104,	0,	120,	0,	0,	100,	'',	''],
			[105,	0,	120,	0,	0,	1000000,	'',		''],
			[107,	'',	'',	'',	'',	'',	'blood stained',		''],
			[107,	'',	'',	'',	'',	'',	'clear',		''],
			[108,	0,	120,	2,	0,	1000000,	'',		''],
			[109,	'',	'',	'',	'',	'',	'+',		''],
			[109,	'',	'',	'',	'',	'',	'++',		''],
			[109,	'',	'',	'',	'',	'',	'+++',		''],
			[111,	'',	'',	'',	'',	'',	'Seen',		''],
			[111,	'',	'',	'',	'',	'',	'Not seen',		''],
			[112,	'',	'',	'',	'',	'',	'Reactive',	'POSITIVE',	''],
			[112,	'',	'',	'',	'',	'',	'Non-reactive',	'NEGATIVE',	''],
			[113,	'',	'',	'',	'',	'',	'Reactive',	'POSITIVE',	''],
			[113,	'',	'',	'',	'',	'',	'Non-reactive',	'NEGATI0VE',	''],
			[114,	'',	'',	'',	'',	'',	'Reactive',	'POSITIVE',	''],
			[114,	'',	'',	'',	'',	'',	'Non-reactive',	'NEGATIVE',	''],
			[115,	'',	'',	'',	'',	'',	'Positive',		''],
			[115,	'',	'',	'',	'',	'',	'Negative',		''],
			[115,	'',	'',	'',	'',	'',	'Invalid',		''],
			[116,	'',	'',	'',	'',	'',	'Positive',	'POSITIVE',	''],
			[116,	'',	'',	'',	'',	'',	'Negative',	'NEGATIVE',	''],
			[116,	'',	'',	'',	'',	'',	'Invalid',		''],
			[117,	'',	'',	'',	'',	'',	'Positive',	'POSITIVE',	''],
			[117,	'',	'',	'',	'',	'', 'Negative',	'NEGATIVE',	''],
			[118,	'',	'',	'',	'',	'',	'Positive',	'POSITIVE',	''],
			[118,	'',	'',	'',	'',	'',	'Negative',	'NEGATIVE',	''],
			[119,	'',	'',	'',	'',	'',	'Positive',	'POSITIVE',	''],
			[119,	'',	'',	'',	'',	'',	'Negative',	'NEGATIVE',	''],
			[120,	'',	'',	'',	'',	'',	'Positive',	'POSITIVE',	''],
			[120,	'',	'',	'',	'',	'',	'Negative',	'NEGATIVE',	''],
			[121,	'',	'',	'',	'',	'',	'Positive (OD>0.2)',	'POSITIVE',	''],
			[121,	'',	'',	'',	'',	'',	'Negative(OD<0.1)',	'NEGATIVE',	''],
			[121,	'',	'',	'',	'',	'',	'Equivocal',		''],
			[122,	'',	'',	'',	'',	'',	'Positive (OD>0.2)',	'POSITIVE',	''],
			[122,	'',	'',	'',	'',	'',	'Negative (OD<0.1)',	'NEGATIVE',	''],
			[122,	'',	'', '',	'',	'',	'Equivocal',		''],
			[123,	0,	120,	2,	0,	1000000,	'',		''],
			[124,	0,	120,	2,	0,	100,	'',		''],
			[125,	'',	'',	'',	'',	'',	'A RhD Positive',		''],
			[125,	'',	'',	'',	'',	'',	'B RhD Positive', 		''],
			[125,	'',	'',	'',	'',	'',	'AB RhD Positive',		''],
			[125,	'',	'',	'',	'',	'',	'O RhD Positive',		''],
			[125,	'',	'',	'',	'',	'',	'A RhD Negative',		''],
			[125,	'',	'',	'',	'',	'',	'B RhD Negative',		''],
			[125,	'',	'',	'',	'',	'',	'AB RhD Negative',		''],
			[125,	'',	'',	'',	'',	'',	'O RhD Negative',		''],
			[131,	'',	'',	'',	'',	'',	'Saline',		''],
			[131,	'',	'',	'',	'',	'',	'Coombs',		''],
			[132,	'',	'',	'',	'',	'',	'No Reaction',		''],
			[132,	'',	'',	'',	'',	'',	'Suspected Reaction',		''],
			[132,	'',	'',	'',	'', '',	'Confirmed Reaction',		''],
			[127,	'',	'',	'',	'',	'',	'A RhD Positive',		''],
			[127,	'',	'',	'',	'',	'',	'B RhD Positive',		''],
			[127,	'',	'',	'',	'',	'',	'AB RhD Positive', 		''],
			[127,	'',	'',	'',	'',	'',	'O RhD Positive', 		''],
			[127,	'',	'',	'',	'',	'',	'A RhD Negative',		''],
			[127,	'',	'', '',	'',	'',	'B RhD Negative',		''],
			[127,	'',	'',	'',	'',	'',	'AB RhD Negative',		''],
			[127,	'',	'',	'',	'',	'',	'O RhD Negative',		''],
			[133,	0,	120,	2,	0,	45,	'',		''],
			[134,	0,	120,	2,	0,	35,	'',		''],
			[135,	0,	120,	2,	53,	128,	'',		''],
			[136,	0,	120,	2,	0,	55,	'',		''],
			[137,	0,	120,	2,	0,	0.2,	'',		''],
			[138,	0,	120,	2,	0,	2,	'',		''],
			[139,	0,	120,	2,	0,	1000000,	'',		''],
			[140,	0,	120,	2,	3.5,	5.2,	'',		''],
			[141,	5,	120,	2,	6.8,	8.3,	'',		''],
			[142,	5,	120,	2,	13,	43,	'',	''],
			[143,	0,	120,	2,	0.7,	1.3,	'',		''],
			[144,	0,	120,	2,	0,	1000000,	'',		''],
			[145,	0,	120,	2,	0,	150,	'',		''],
			[146,	0,	120,	2,	0,	200,	'',		''],
			[147,	0,	120,	2,	4,	6,	'',	'Normal',	''],
			[147,	0,	120,	2,	3.5,	5.5,	'',	'Normal',	''],
			[148,	0,	120,	2,	10.9,	17.3,	'',	'Normal',	''],
			[148,	0,	120,	2,	11,	16,	'',	'Normal', ''], 
			[149,	0,	120,	2,	32,	50,	'',	'Normal',	''],
			[149,	0,	120,	2,	37,	54,	'',	'Normal', ''], 
			[150,	0,	120,	2,	71,	95,	'',	'Normal',	''], 
			[150,	0,	120,	0,	80,	100,	'',	'Normal', ''],
			[151,	0,	120,	2,	23,	34,	'',	'Normal',	''],
			[152,	0,	120,	2,	33,	36,	'',	'Normal',	''],
			[153,	0,	120,	2,	122,	330,	'',	'Normal',	''],
			[154,	0,	120,	2,	37,	54,	'',	'Normal',	''],
			[155,	0,	120,	2,	10,	16,	'',	'Normal',	''],
			[156,	0,	120,	2,	9,	17,	'',	'Normal',	''],
			[157,	0,	120,	2,	6,	10,	'',	'Normal',	''],        
			[158,	0,	120,	2,	0.17,	0.35,	'',	'Normal',	''],
			[159,	0,	120,	2,	27,	60,	'',	'Normal',	''],
			[160,	0,	120,	2,	29,	59,	'',	'Normal',	''],
			[160,	0,	120,	2,	20,	40,	'',	'Normal',	''],
			[161,	0,	120,	2,	2,	10,	'',	'Normal',	''],
			[162,	0,	120,	2,	0,	12,	'',	'Normal',	''],
			[163,	0,	120,	2,	0,	1,	'',	'Normal',	''],
			[164,	0,	120,	2,	0.82,	4.1,	'',	'Normal',	''],
			[165,	0,	120,	2,	1.26,	3.62,	'',	'Normal',	''],
			[166,	0,	120,	2,	0.12,	0.56,	'',	'Normal',	''],
			[167,	0,	120,	2,	0,	0.78,	'',	'Normal',	''],
			[168,	0,	120,	2,	0,	0.07,	'',	'Normal',	''],
			[169,	0,	120,	2,	4,	10,	'',	'Normal',	''],
			[170,	0,	120,	2,	0.1,	1.5,	'',	'Normal',	''],
			[171,	0,	120,	2,	2,	7,	''	'Normal',	''],
			[172,	0,	120,	2,	3,	15,	''	'Normal',	''],
			[173,	0,	120,	2,	50,	70,	''	'Normal',	''],
			[174,	0,	120,	2,	0.5,	5,	'',	'Normal',	''],
			[175,	0,	120,	2,	30,	90,	''	'Normal',	''],
			[176,	0,	120,	2,	11,	45,	''	'Normal',	''],
			[177,	0,	120,	2,	0,	1000000,	'',		''],
			[178,	0,	120,	2,	0,	1000000,	'',		''],
			[179,	0,	120,	2,	0,	1000000,	'',		''],
			[180,	0,	120,	2,	0,	1000000,	'',		''],
			[181,	0,	120,	2,	0,	1000000,	'',		''],
			[182,	0,	120,	2,	0,	1000000,	'',		''],
			[183,	0,	120,	2,	0,	1000000,	'',		''],
			[185,	0,	120,	2,	3.5,	5.5,	'',		''],
			[186,	0,	120,	2,	135,	145,	'',		''],
			[187,	0,	120,	2,	95,	105,	'',		''],
			[188,	0,	120,	0,	0,	1000000,	'',		''],
			[189,	0,	120,	2,	0,	1000000,	'',		''],
			[190,	0,	120,	2,	0,	1000000,	'',		''],
			[191,	0,	120,	2,	0,	1000000,	'',		''],
			[192,	0,	120,	2,	0,	1000000,	'',		''],
			[193,	0,	120,	2,	0,	1000000,	'',		''],
			[194,	0,	120,	2,	0,	1000000,	'',		''],
			[195,	0,	120,	2,	0,	1000000,	'',		''],
			[196,	0,	120,	2,	0,	1000000,	'',		''],
			[197,	0,	120,	2,	0,	1000000,	'',		''],
			[198,	0,	120,	2,	0,	1000000,	'',		''],
			[199,	0,	120,	2,	0,	1000000,	'',		''],
			[200,	0,	120,	2,	0,	1000000,	'',		''],
			[128,	'',	'',	'',	'',	'',	'Whole Blood',		''],
			[128,	'',	'',	'',	'',	'',	'Packed Red Cells',		''],
			[128,	'',	'',	'',	'',	'',	'Platelets',		''],
			[128,	'',	'',	'',	'',	'',	'FFPs',		''],
			[128,	'',	'',	'',	'',	'',	'Cryoprecipitate',		''],
			[201,	'',	'',	'',	'',	'',	'Negative',		''],
			[201,	'',	'',	'',	'',	'',	'+++',		''],
			[201,	'',	'',	'',	'',	'',	'++',		''],
			[201,	'',	'',	'',	'',	'',	'+',		''],
			[201,	'',	'',	'',	'',	'',	'Scanty (1-3) per 100,'		''],
			[201,	'',	'',	'',	'',	'',	'Scanty (4-6) per 100,'		''],
			[201,	'',	'',	'',	'',	'',	'Scanty (7-9) per 100',		''],
			[201,	'',	'',	'',	'',	'',	'Scanty (1-5) per 40',		''],
			[201,	'',	'',	'',	'',	'',	'Scanty (6-9) per 40',		''],
			[201,	'',	'',	'',	'',	'',	'Scanty (10-14) per 40',		''],
			[201,	'',	'',	'',	'',	'',	'Scanty (15-19) per 40',		''],
			[204,	0,	120,	2,	74,	100,	'',		''],
			[204,	5,	120,	1,	70,	110,	'',		''],
			[205,	18,	120,	2,	12.9,	16.9,	'',	'Normal',	''],
			[206,	18,	120,	2,	25,	41,	'',	'Normal',	''],
			[207,	18,	120,	2,	0.9,	1.4,	'',	'Normal',	''],
			[208,	18,	120,	0,	0,	10,	'',	'Normal',	''],
			[208,	18,	20,	1,	0,	15,	'',	'Normal',	''],
			[209,	'',	'',	'',	'',	'',	'Positive',		''],
			[209,	'',	'',	'',	'',	'',	'Negative',		''],
			[210,	'',	'',	'',	'',	'',	'Positive',		''],
			[210,	'',	'',	'',	'',	'',	'Negative',		''],
			[231,	'',	'',	'',	'',	'',	'Positive',		''],
			[231,	'',	'',	'',	'',	'',	'Negative',		''],
			[98,	'',	'',	'',	'',	'',	'Invalid',		''],
			[232,	'',	'',	'',	'',	'',	'Reactive',		''],
			[232,	'',	'',	'',	'',	'',	'Non-Reactive',		''],
			[233,	'',	'',	'',	'',	'',	'Diagnosis',		''],
			[233,	'',	'',	'',	'',	'',	'Follow-up',		''],
			[234,	'',	'',	'',	'',	'',	'New presumptive TB-smear Neg.HIV Pos',		''],
			[234,	'',	'',	'',	'',	'',	'Presumptive MDR TB',		''],
			[202,	'',	'',	'',	'',	'',	'MTB Detected High',		''],
			[202,	'',	'',	'',	'',	'',	'MTB Detected Medium',		''],
			[202,	'',	'',	'',	'',	'',	'MTB Detected Low,',		''],
			[202,	'',	'',	'',	'',	'',	'MTB Not Detected',		''],
			[203,	'',	'',	'',	'',	'',	'RIF Resistant detected',		''],
			[203,	'',	'',	'',	'',	'',	'RIF Resistant not detected',		''],
			[203,	'',	'',	'',	'',	'',	'RIF Resistant indeterminate',		''],
			[234,	'',	'',	'',	'',	'',	'Hospitalised',		''],
			[234,	'',	'',	'',	'',	'',	'Others',		''],
			[235,	0,	120,	2,	0,	1000000,	'',		''],
			[236,	5,	120,	2,	226,	450,	'',		''],
			[237,	0,	120,	2,	0,	79.5,	'',		''],
			[238,	0,	120,	2,	0,	130,	'',		''],
			[239,	5,	120,	0,	0.7,	1.3,	'',		''],
			[240,	5,	120,	0,	0.7,	1.3,	'',		''],
			[241,	5,	120,	0,	8.6,	10.2,	'',		''],
			[242,	5,	120,	2,	2.5,	4.5,	'',		''],
			[243,	5,	120,	2,	1.6,	2.6,	'',		''],
			[244,	5,	120,	2,	0,	170,	'',		''],
			[245,	0,	120,	2,	3.5,	7.2,	'',		''],
			[246,	5,	120,	2,	0,	0.2,	'',		''],
			[247,	5,	120,	2,	0.3,	1.2,	'',		''],
			[243,	0,	5,	2,	1.6,	2.6,	'',		''],
			[145,	5,	120,	1,	35,	135,	''	, ''],
			[145,	0,	4,	2,	35,	135,	'',		''],
			[146,	5,	120,	1,	110,	230,	'', ''],
			[146,	0,	4,	0,	110,	230,	'',		''],
			[237,	5,	120,	1,	42,	88,	'',		''],
			[237,	0,	4,	2,	42,	88,	'',		''],
			[238,	0,	4,	2,	0,	130,	'',		''],
			[133,	5,	120,	1,	0,	32,	'',		''],
			[133,	0,	4,	2,	0,	32,	'',		''],
			[134,	5,	120,	1,	0,	31,	'',		''],
			[134,	0,	4,	2,	0,	37,	'',		''],
			[135,	5,	120,	1,	53,	128,	'',		''],
			[135,	0,	4,	2,	42,	98,	'',	''],
			[136,	5,	120,	1,	0,	38,	'',		''],
			[136,	0,	4,	2,	0,	32,	'',		''],
			[137,	0,	4,	2,	0,	0.2,	'',		''],
			[138,	0,	4,	2,	0.3,	1.2,	'',		''],
			[140,	0,	4,	2,	3.2,	5,	'',		''],
			[141,	0,	4,	2,	6,	8.3,	'',		''],
			[236,	0,	4,	0,	226,	450,	'',		''],
			[246,	0,	4,	2,	0,	0.2,	'',		''],
			[247,	0,	4,	2,	0.3,	1.2,	'',		''],
			[142,	0,	120,	2,	18,	55,	'',		''],
			[143,	5,	120,	1,	0.6,	1.1,	'',		''],
			[143,	0,	4,	2,	0.6,	1.1,	'',		''],
			[239,	0,	4,	2,	0.6,	1.1,	'',		''],
			[240,	0,	4,	2,	0.6,	1.1,	'',		''],
			[245,	5,	120,	1,	2.4,	5.7,	'',		''],
			[245,	0,	4,	2,	3.4,	7,	'',	''],
			[239,	5,	120,	1,	0.6,	1.1,	'',		''],
			[240,	5,	120,	1,	0.6,	1.1,	'',		''],
			[204,	0,	4,	2,	65,	110,	'',		''],
			[242,	0,	4,	2,	2.5,	4.5,	'',		''],
			[229,	0,	120,	2,	0,	80,	'',		''],
			[229,	0,	4,	2,	0,	80,	'',		''],
			[230,	0,	120,	2,	0,	38,	'',		''],
			[230,	0,	4,	2,	0,	60,	''		,''],
			[241,	5,	120,	1,	8.4,	10.4,	'',		''],
			[241,	0,	4,	2,	8.4,	10.4,	'',		''],
			[185,	0,	4,	2,	3.5,	5.5,	'',		''],
			[186,	0,	4,	2,	135,	145,	'',	''],
			[187,	0,	4,	2,	98,	108,	'',	''],
			[78,	'',	'',	'',	'',	'',	'no cells seen',		''],
			[82,	'',	'',	'',	'',	'',	'Yeast cells ++',		''],
			[82,	'',	'',	'',	'',	'',	'Yeast cells +++',		''],
			[82,	'',	'',	'',	'',	'',	'Not seen',		''],
			[83,	'',	'',	'',	'',	'',	'Haemolysis +/-',		''],
			[83,	'',	'',	'',	'',	'',	'Negative',		''],
			[83,	'',	'',	'',	'',	'',	'+/- (trace)',		''],
			[83,	'',	'',	'',	'',	'',	'+ (25)',		''],
			[83,	'',	'',	'',	'',	'',	'++ (75)',		''],
			[83,	'',	'',	'',	'',	'',	'+++ (500)',		''],
			[87,	'',	'',	'',	'',	'',	'Negative',		''],
			[87,	'',	'',	'',	'',	'',	'+/-',		''],
			[87,	'',	'',	'',	'',	'',	'+',		''],
			[87,	'',	'',	'',	'',	'',	'++',	''],
			[87,	'',	'',	'',	'',	'',	'+++',		''],
			[87,	'',	'',	'',	'',	'',	'++++',		''],
			[89,	'',	'',	'',	'',	'',	'+',		''],
			[89,	'',	'',	'',	'',	'',	'++',	''],
			[89,	'',	'',	'',	'',	'',	'+++',		''],
			[89,	'',	'',	'',	'',	'',	'++++',		''],
			[90,	'',	'',	'',	'',	'',	'Negative',		''],
			[90,	'',	'',	'',	'',	'',	'+/- (100)',		''],
			[90,	'',	'',	'',	'',	'',	'+ (250)',		''],
			[90,	'',	'',	'',	'',	'',	'++ (500)',		''],
			[90,	'',	'',	'',	'',	'',	'+++ (1000)',		''],
			[90,	'',	'',	'',	'',	'',	'++++ (2000)',		''],
			[91,	'',	'',	'',	'',	'',	1,		''],
			[91,	'',	'',	'',	'',	'',	1.005,		''],
			[91,	'',	'',	'',	'',	'',	1.01,		''],
			[91,	'',	'',	'',	'',	'',	1.015,		''],
			[91,	'',	'',	'',	'',	'',	1.02,		''],
			[91,	'',	'',	'',	'',	'',	1.025,		''],
			[91,	'',	'',	'',	'',	'',	1.03,		''],
			[92,	'',	'',	'',	'',	'',	'+ (25)',		''],
			[92,	'',	'',	'',	'',	'',	'++ (75)',		''],
			[92,	'',	'',	'',	'',	'',	'+++ (500)',		''],
			[92,	'',	'',	'',	'',	'',	'Negative',		''],
			[248,	0,	0,	0,	0,	0,	'',		''],
			[249,	0,	0,	0,	0,	0,	'',		''],
			[250,	0,	0,	0,	0,	0,	'',		''],
			[104,	'',	'',	'',	'',	'',	1,		''],
			[104,	'',	'',	'',	'',	'',	2,		''],
			[104,	'',	'',	'',	'',	'',	3,		''],
			[104,	'',	'',	'',	'',	'',	4,		''],
			[104,	'',	'',	'',	'',	'',	5,		''],
			[104,	'',	'',	'',	'',	'',	6,		''],
			[104,	'',	'',	'',	'',	'',	7,		''],
			[104,	'',	'',	'',	'',	'',	8,		''],
			[104,	'',	'',	'',	'',	'',	9,		''],
			[104,	'',	'',	'',	'',	'',	10,		''],
			[104,	'',	'',	'',	'',	'',	11,		''],
			[104,	'',	'',	'',	'',	'',	12,		''],
			[104,	'',	'',	'',	'',	'',	13,		''],
			[104,	'',	'',	'',	'',	'',	14,		''],
			[232,	'',	'',	'',	'',	'',	'Not known',		''],
			[251,	'',	'',	'',	'',	'',	'Positive',		''],
			[251,	'',	'',	'',	'',	'',	'Negative',		''],
			[252,	0,	0,	2,	0,	0,	'',		''],
			[253,	0,	0,	0,	0,	0,	'',		''],
			[254,	0,	0,	0,	0,	0,	'',		''],
			[255,	0,	0,	0,	0,	0,	'',		''],
			[256,	0,	0,	0,	0,	0,	'',		''],
			[257,	0,	0,	0,	0,	0,	'',		''],
			[258,	'',	'',	'',	'',	'',	1,		''],
			[258,	'',	'',	'',	'',	'',	2,		''],
			[258,	'',	'',	'',	'',	'',	3,		''],
			[258,	'',	'',	'',	'',	'',	4,		''],
			[258,	'',	'',	'',	'',	'',	5,		''],
			[258,	'',	'',	'',	'',	'',	6,		''],
			[258,	'',	'',	'',	'',	'',	7,		''],
			[258,	'',	'',	'',	'',	'',	8,		''],
			[258,	'',	'',	'',	'',	'',	9,		''],
			[258,	'',	'',	'',	'',	'',	10,		''],
			[258,	'',	'',	'',	'',	'',	11,		''],
			[258,	'',	'',	'',	'',	'',	12,		''],
			[258,	'',	'',	'',	'',	'',	13,		''],
			[258,	'',	'',	'',	'',	'',	14,		''],
			[259,	0,	120,	2,	0.82,	1.09,	'',		''],
			[260,	0,	120,	2,	2.61,	3.81,	'',		''],
			[261,	0,	0,	0,	0,	0,	'',		''],
			[262,	0,	0,	0,	0,	0,	'',		''],
			[263,	0,	0,	0,	0,	0,	'',		''],
			[264,	0,	120,	2,	77,	117,	'',		''],
			[265,	0,	120,	2,	95,	135,	'',		''],
			[266,	0,	0,	0,	0,	0,	'',		''],
			[267,	0,	0,	0,	0,	0,	'',		''],
			[268,	0,	0,	0,	0,	0,	'',		''],
			[269,	0,	120,	2,	25,	41,	'',		''],
			[270,	0,	0,	0,	0,	0,	'',		''],
			[271,	0,	0,	0,	0,	0,	'',		''],
			[272,	0,	120,	2,	2.61,	3.81,	'',		''],
			[273,	0,	0,	0,	0,	0,	'',		''],
			[274,	0,	0,	0,	0,	0,	'',		''],
			[275,	0,	0,	0,	0,	0,	'',		''],
			[276,	0,	120,	2,	95,	135,	'',	'normal',	''],
			[277,	0,	120,	2,	77,	117,	'',	'normal',	''],
			[234,	'',	'',	'',	'',	'',	'not indicated',		''],
			[278,	0,	120,	2,	0,	25,	'',		''],
			[279,	0,	120,	2,	46,	171,	'',		''],
			[280,	0,	120,	2,	225,	450,	'',		''],
			[281,	0,	120,	2,	8.6,	10.2,	'',		''],
			[282,	0,	120,	2,	2.5,	4.5,	'',		''],
			[283,	0,	120,	2,	1.8,	2.6,	'',		''],
			[284,	0,	120,	2,	0,	1,	'',		''],
			[285,	0,	120,	2,	0,	20,	'',		''],
			[286,	0,	120,	2,	0,	200,	'',		''],
			[287,	0,	120,	2,	65,	175,	'',		''],
			[288,	0,	120,	2,	110,	370,	'',		''],
			[289,	0,	120,	2,	4,	6,	'',		''],
			[290,	0,	120,	2,	0,	2.5,	'',		''],
			[291,	0,	120,	2,	0,	15,	'',		''],
			[292,	0,	0,	0,	0,	0,	'',		''],
			[293,	0,	0,	0,	0,	0,	'',		''],


]


ranges.each do |ra|

	MeasureRange.create(
		measures_id: ra[0],
		age_min: ra[1],
		age_max: ra[2],
		gender: ra[3],
		range_lower: ra[4],
		range_upper: ra[5],
		alphanumeric: ra[6],
		interpretation: ra[7]
		)
end

puts 'creating default user account--------------'
>>>>>>> 6dca82065ac6ac9c61e5b39195bbe0b4574ba920

password_has = BCrypt::Password.create("knock_knock")
username = 'admin'
app_name = 'nlims'
location = 'lilongwe'
partner = 'api_admin'
<<<<<<< HEAD
token = ''
token_expiry_time = ''

User.create(password: password_has, username: username, 
=======
token = 'xxxxxxx'
token_expiry_time = '000000000'

User.create(password: password_has, 
			username: username, 
>>>>>>> 6dca82065ac6ac9c61e5b39195bbe0b4574ba920
			app_name: app_name, 
			partner: partner, 
			location: location,
			token: token,
			token_expiry_time: token_expiry_time			
		)


puts '-------------done----------'