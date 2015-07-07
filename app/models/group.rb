class Group < ActiveRecord::Base
    belongs_to :teacher
    has_many  :students
    #group validations:
    validates :name, presence: true, length: { minimum: 5, maximum: 10 }
    validates :time_class, presence: true, length: { minimum: 5, maximum: 10 }
    validates :level, presence: true
    validates :state, presence: true
    validates :teacher_id, presence: true
end