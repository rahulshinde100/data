# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 #MOBILE_SURVEY = 1

# Question.create!(que_content: 'Please select your gender group ?' , types: 'radiobutton' , survey_id: MOBILE_SURVEY, answer_options: 'Female \n Male')
# Question.create!(que_content: 'Please select your marital status' , types: 'radiobutton' , survey_id: MOBILE_SURVEY ,answer_options: 'Single \n Married ')
# Question.create!(que_content: 'Please select an age group:' , types: 'radiobutton' , survey_id: MOBILE_SURVEY ,answer_options: '12-18 \n 19-30 \n 31-40 \n 40-49 \n 50-64 \n 65+ ')
# Question.create!(que_content: 'What type of phone would you like to have ?' , types: 'radiobutton' , survey_id: MOBILE_SURVEY ,answer_options: 'Flip Phone \n Slide Phone \n Tough Phone \n Luxury Fashion Phone \n Smart Phone ')
# Question.create!(que_content: 'How important is the design or style (Look and Feel) of a mobile phone to you as opposed to functionality ?' , types: 'radiobutton' , survey_id: MOBILE_SURVEY ,answer_options: 'Not Important \n Fairly Important \n Very important \n Extremely important ')
# Question.create!(que_content: 'What size of the handset would you prefer ?' , types: 'textfield' , survey_id: MOBILE_SURVEY ,answer_options: '')
# Question.create!(que_content: 'What size would you prefer your screen to be ? ' , types: 'textfield' , survey_id: MOBILE_SURVEY ,answer_options: '')
# Question.create!(que_content: 'How much are you willing to spend on a mobile phone?' , types: 'textfield' , survey_id: MOBILE_SURVEY ,answer_options: '')
# Question.create!(que_content: 'How many working mobile or cell phones do you currently have?' , types: 'textfield' , survey_id: MOBILE_SURVEY ,answer_options: '')
# Question.create!(que_content: 'In a typical weekday, about how much time, in total, do you spend using your mobile or cell phone?' , types: 'textfield' , survey_id: MOBILE_SURVEY ,answer_options: '')
# Question.create!(que_content: 'Which of the following activities do you do on your mobile or cell phone? (Check all that apply)' , types: 'checkbox' , survey_id: MOBILE_SURVEY ,answer_options: 'Take photos \n Play videos (other than video games) \n Send or receive photos \n Send or receive texts \n Play music \n Purchase products or services \n General internet use (other than using social networking websites) \n Send or receive emails \n Record videos \n Play podcasts \n Send or receive videos \n Send or receive instant messages \n Make or receive phone calls \n Play games \n Use social networking websites ')
# Question.create!(que_content: 'Please list 3 media names that you use regularly(whether from TV, magazines, newspapers or websites, such as, TV: Pearl channel, Magazine: Businessweek)' , types: 'textarea' , survey_id: MOBILE_SURVEY ,answer_options: '')
# Question.create!(que_content: 'In a typical weekday, which of the following activities do you do on your mobile or cell phone most often?' , types: 'textfield' , survey_id: MOBILE_SURVEY ,answer_options: 'Take photos \n Play videos (other than video games) \n Send or receive photos \n Send or receive texts \n Play music \n Purchase products or services \n General internet use (other than using social networking websites) \n Send or receive emails \n Record videos \n Play podcasts \n Send or receive videos \n Send or receive instant messages \n Make or receive phone calls \n Play games \n Use social networking websites ')
# Question.create!(que_content: 'Nationality' , types: '1' , survey_id: '1' ,answer_options: '')

# survey = Survey.find_by_name('Mobile')

# if survey.present?
# 	puts "Mobile survey already exists"
# 	else
# 		survey=Survey.create(name: "Mobile" ,user_id: 1)
# 		survey.questions.build(que_content: 'Please select your gender group ?' , types: 'radiobutton' , survey_id: MOBILE_SURVEY, answer_options: 'Female \n Male').save!
# 		survey.questions.build(que_content: 'Please select your marital status' , types: 'radiobutton' , survey_id: MOBILE_SURVEY ,answer_options: 'Single \n Married ').save!
# 		survey.questions.build(que_content: 'Please select an age group:' , types: 'radiobutton' , survey_id: MOBILE_SURVEY ,answer_options: '12-18 \n 19-30 \n 31-40 \n 40-49 \n 50-64 \n 65+ ').save!
# 		survey.questions.build(que_content: 'What type of phone would you like to have ?' , types: 'radiobutton' , survey_id: MOBILE_SURVEY ,answer_options: 'Flip Phone \n Slide Phone \n Tough Phone \n Luxury Fashion Phone \n Smart Phone ').save!
# 		survey.questions.build(que_content: 'How important is the design or style (Look and Feel) of a mobile phone to you as opposed to functionality ?' , types: 'radiobutton' , survey_id: MOBILE_SURVEY ,answer_options: 'Not Important \n Fairly Important \n Very important \n Extremely important ').save!
# 		survey.questions.build(que_content: 'What size of the handset would you prefer ?' , types: 'textfield' , survey_id: MOBILE_SURVEY ,answer_options: '').save!
# 		survey.questions.build(que_content: 'What size would you prefer your screen to be ? ' , types: 'textfield' , survey_id: MOBILE_SURVEY ,answer_options: '').save!
# 		survey.questions.build(que_content: 'How much are you willing to spend on a mobile phone?' , types: 'textfield' , survey_id: MOBILE_SURVEY ,answer_options: '').save!
# 		survey.questions.build(que_content: 'How many working mobile or cell phones do you currently have?' , types: 'textfield' , survey_id: MOBILE_SURVEY ,answer_options: '').save!
# 		survey.questions.build(que_content: 'In a typical weekday, about how much time, in total, do you spend using your mobile or cell phone?' , types: 'textfield' , survey_id: MOBILE_SURVEY ,answer_options: '').save!
# 		survey.questions.build(que_content: 'Which of the following activities do you do on your mobile or cell phone? (Check all that apply)' , types: 'checkbox' , survey_id: MOBILE_SURVEY ,answer_options: 'Take photos \n Play videos (other than video games) \n Send or receive photos \n Send or receive texts \n Play music \n Purchase products or services \n General internet use (other than using social networking websites) \n Send or receive emails \n Record videos \n Play podcasts \n Send or receive videos \n Send or receive instant messages \n Make or receive phone calls \n Play games \n Use social networking websites ').save!
# 		survey.questions.build(que_content: 'Please list 3 media names that you use regularly(whether from TV, magazines, newspapers or websites, such as, TV: Pearl channel, Magazine: Businessweek)' , types: 'textarea' , survey_id: MOBILE_SURVEY ,answer_options: '').save!
# 		survey.questions.build(que_content: 'In a typical weekday, which of the following activities do you do on your mobile or cell phone most often?' , types: 'radiobutton' , survey_id: MOBILE_SURVEY ,answer_options: 'Take photos \n Play videos (other than video games) \n Send or receive photos \n Send or receive texts \n Play music \n Purchase products or services \n General internet use (other than using social networking websites) \n Send or receive emails \n Record videos \n Play podcasts \n Send or receive videos \n Send or receive instant messages \n Make or receive phone calls \n Play games \n Use social networking websites ').save!
# 		survey.questions.build(que_content: 'Nationality' , types: 'textfield' , survey_id: '1' ,answer_options: '').save!
# end

survey = Survey.find_by_name('ROR Survey')
if survey.present?
	puts "ROR survey already exists"
	else
		survey=Survey.create(name: "ROR Survey" ,user_id: 1)
		survey.questions.build(que_content: "What is ROR ?", types: 'checkbox', survey_id: 2 , answer_options: 'rails \n ruby').save!
		survey.questions.build(types: 'radiobutton', que_content: "What is ORM in Rails?" , answer_options: 'Object Relationship Model \n Object related model \n Object Refining model').save!
		survey.questions.build(types: 'textarea', que_content: "What are the servers supported by ruby on rails?" , answer_options: '' ).save!
		survey.questions.build(types: 'checkbox', que_content: "What is Ruby Gems ?" , answer_options: 'software package \n hardware package \n browser').save!
		survey.questions.build(types: 'radiobutton', que_content: "Which of the following is not a Form_tag?" , answer_options: 'taxt_field \n check_box_tag \n tooltip').save!
		survey.questions.build(types: 'textfield',que_content: "What is restful in rails ?" , answer_options: '').save!
		survey.questions.build(types: 'checkbox', que_content: "which of the following ia a type of variable in ruby  ?" , answer_options: 'local\n global \n classvariable' ).save!
		survey.questions.build(types: 'radiobutton', que_content: "which of the following is available in ruby on rails ?" , answer_options: 'IRB\nJDK\nJVM' ).save!
		survey.questions.build(types: 'textarea', que_content: "What is Active record ?" , answer_options: '' ).save!
		survey.questions.build(types: 'textfield',que_content:"What is use of Nested Forms ?" , answer_options: '' ).save!

end








# Question.create( survey_id: 2 ,  types: 'checkbox', que_content: "What is ROR ?" , answer_options: 'rails \n ruby' )
#  Question.create( survey_id: 2 ,  types: 'radiobutton', que_content: "What is ORM in Rails?" , answer_options: 'Object Relationship Model \n Object related model \n Object Refining model')
#  Question.create( survey_id: 2 ,  types: 'textarea', que_content: "What are the servers supported by ruby on rails?" , answer_options: '' )
#  Question.create( survey_id: 2 ,  types: 'checkbox', que_content: "What is Ruby Gems ?" , answer_options: 'software package \n hardware package \n browser')
#  Question.create( survey_id: 2 ,  types: 'radiobutton', que_content: "Which of the following is not a Form_tag?" , answer_options: 'taxt_field \n check_box_tag \n tooltip')
#  Question.create( survey_id: 2 ,  types: 'textfield',que_content: "What is restful in rails ?" , answer_options: '')
#  Question.create( survey_id: 2 ,  types: 'checkbox', que_content: "which of the following ia a type of variable in ruby  ?" , answer_options: 'local\n global \n classvariable' )
#  Question.create( survey_id: 2 ,  types: 'radiobutton', que_content: "which of the following is available in ruby on rails ?" , answer_options: 'IRB\nJDK\nJVM' )
#  Question.create( survey_id: 2 ,  types: 'textarea', que_content: "What is Active record ?" , answer_options: '' )
#  Question.create( survey_id: 2 ,  types: 'textfield',que_content:"What is use of Nested Forms ?" , answer_options: '' )







################################################Option####################################################


# Option.create!(ans_content: 'Female' , question_id: '1')
# Option.create!( ans_content: 'Male' , question_id: '1')

# Option.create!(ans_content: 'Single' , question_id: '2')
# Option.create!( ans_content: 'Married' , question_id: '2')

# Option.create!(ans_content: '12-18' , question_id: '3')
# Option.create!( ans_content: '19-30' , question_id: '3')
# Option.create!(ans_content: '31-40' , question_id: '3')
# Option.create!( ans_content: '40-49' , question_id: '3')
# Option.create!(ans_content: '50-64' , question_id: '3')
# Option.create!( ans_content: '65+' , question_id: '3')


# Option.create!(ans_content: 'Flip Phone' , question_id: '4')
# Option.create!( ans_content: 'Slide Phone' , question_id: '4')
# Option.create!(ans_content: 'Tough Phone' , question_id: '4')
# Option.create!( ans_content: 'Luxury Fashion Phone' , question_id: '4')
# Option.create!(ans_content: 'Smart Phone ' , question_id: '4')

# Option.create!(ans_content: 'Not Important' , question_id: '5')
# Option.create!( ans_content: 'Fairly Important' , question_id: '5')
# Option.create!(ans_content: 'Very important' , question_id: '5')
# Option.create!( ans_content: 'Extremely important' , question_id: '5')




# Option.create!(ans_content: 'Take photos' , question_id: '11')
# Option.create!( ans_content: 'Play videos (other than video games)' , question_id: '11')
# Option.create!(ans_content: 'Send or receive photos' , question_id: '11')
# Option.create!( ans_content: 'Send or receive texts ' , question_id: '11')
# Option.create!(ans_content: 'Play music  ' , question_id: '11')
# Option.create!(ans_content: 'Record videos ' , question_id: '11')
# Option.create!( ans_content: 'Send or receive emails ' , question_id: '11')
# Option.create!(ans_content: 'General internet use (other than using social networking websites) 
# ' , question_id: '11')
# Option.create!( ans_content: 'Purchase products or services ' , question_id: '11')
# Option.create!(ans_content: 'Play podcasts ' , question_id: '11')
# Option.create!(ans_content: 'Send or receive videos ' , question_id: '11')
# Option.create!( ans_content: 'Send or receive instant messages ' , question_id: '11')
# Option.create!(ans_content: 'Make or receive phone calls ' , question_id: '11')
# Option.create!( ans_content: 'Play games ' , question_id: '11')
# Option.create!(ans_content: 'Use social networking websites  ' , question_id: '11')



 
#  Option.create!(ans_content: 'General internet use (other than using social networking websites) ' , question_id: '13')
# Option.create!( ans_content: 'Play music' , question_id: '13')
# Option.create!(ans_content: 'Send or receive emails' , question_id: '13')
# Option.create!( ans_content: 'Send or receive texts ' , question_id: '13')
# Option.create!(ans_content: 'Play music  ' , question_id: '13')
# Option.create!(ans_content: 'Record videos ' , question_id: '13')
# Option.create!( ans_content: 'Send or receive emails ' , question_id: '13')
# Option.create!(ans_content: 'General internet use (other than using social networking websites) 
# ' , question_id: '13')
# Option.create!( ans_content: 'Purchase products or services ' , question_id: '13')
# Option.create!(ans_content: 'Play podcasts ' , question_id: '13')
# Option.create!(ans_content: 'Send or receive videos ' , question_id: '13')
# Option.create!( ans_content: 'Send or receive instant messages ' , question_id: '13')
# Option.create!(ans_content: 'Make or receive phone calls ' , question_id: '13')
# Option.create!( ans_content: 'Play games ' , question_id: '13')
# Option.create!(ans_content: 'Use social networking websites  ' , question_id: '13')
 
 
 



 
















