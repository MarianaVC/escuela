class Teacher < ActiveRecord::Base
    has_many :groups
    before_save { self.email = email.downcase } # downcase before saving into the database
    # teacher validations
    validates :name , presence: true, length: { maximum: 25 }
    validates :last_name, presence: true, length: { maximum: 100 } 
    validates :phone, presence: true
    validates :address, presence: true, length: { minimum: 20, maximum: 150 }
    VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: { case_sensitive: false }, # validates email is unique.
                                    format: {with: VALID_EMAIL_REGEX } # validates with regular expression.                
    validates :birthday, presence: true, length: { minimum: 10, maximum: 10 }
    validates :user_name, presence: true, length: { minimum: 5, maximum: 10 }
    validates :password, presence: true, length: { minimum: 5, maximum: 11 }
end