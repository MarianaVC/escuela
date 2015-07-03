class Company < ActiveRecord::Base
    has_many :students
    has_many :groups
   #Company validations
   validates :name, presence: true, length: { maximum: 25 }
   validates :phone, presence: true
   validates :address, presence: true, length: { minimum: 20, maximum: 150 }
   validates :rfc, presence: true, length:  { minimum: 13, maximum: 13}
end