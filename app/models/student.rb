class Student < ActiveRecord::Base
   belongs_to :company
   belongs_to :group 
   #Student validations
   validations :name, presence:  true , length: { maximum:25 }
   validations :last_name, presence: true, length: { maximum:100 }
   validations :rfc, presence: true, length: { minimum:13, maximum:13 }
   validations :phone, presence: true
   VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
   validates :email, presence: true, uniqueness: { case_sensitive: false }, # validates email is unique.
                                    format: {with: VALID_EMAIL_REGEX } # validates with regular expression. 
   validations :user_name, presence: true, length: { minimum: 5, maximum: 10 }
   validations :password, presence: true, length: { minimum: 5, maximum: 11 }
   
end