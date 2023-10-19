class StudentManagement < ApplicationRecord  
  paginates_per 5
  validates :first_name, :last_name, :roll_num, :age, :father_name, presence: true
end
