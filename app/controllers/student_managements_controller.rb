class StudentManagementsController < ApplicationController  


	def index
		@students = StudentManagement.where(id: StudentManagement.select(:id).pluck(:id).sort).page(params[:page])
	end
   


   def new  
   	@student = StudentManagement.new
   end




   def create
    @student=StudentManagementService.create_student(student_params)
     # or colum_name:params[:mode_name][:fieldname]
     #first_name: params[:student_management][:FirstName],
     #last_name: params[:student_management][:LastName],
     #roll_num: params[:student_management][:RollNumber],
     #age: params[:student_management][:Age],
     #father_name: params[:student_management][:FatherName])
    
    if @student.save
    	redirect_to student_managements_path
    else 
    	render :new 
    end  
   end   


    

    def show
    	@student = StudentManagement.find(params[:id])
    end    



    def edit
    	@student = StudentManagement.find(params[:id])  
    end 



    def update
    	@student =StudentManagement.find(params[:id])  
    	if StudentManagementService.update_student(@student,student_params) 
    		redirect_to student_managements_path 
    	else
    		render :edit
    	end
    end  




    def destroy
    	@student = StudentManagement.find(params[:id])  
    	StudentManagementService.destroy_student(@student)
    	redirect_to student_managements_path 
    end

    



   private 

  	def student_params
  		params.require(:student_management).permit(:first_name, :last_name, :roll_num, :age, :father_name)
  	end  

     

end
