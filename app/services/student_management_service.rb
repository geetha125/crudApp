class StudentManagementService  

	def self.create_student(params)  
		StudentManagement.create(params)
	end  

	def self.update_student(student,params)   
		student.update(params)
	end  

	def self.destroy_student(student)   
		student.destroy
	end

end