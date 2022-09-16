class EmployeesController < ApplicationController

    def index
      @emp=Employee.all
    end

    def show
      @emp = Employee.find(params[:id])
    end

    def new
      @emp= Employee.new
    end

    def create
      @emp = Employee.new(params.require(:employee).permit(:first_name, :middle_name, :last_name, :personal_email,:city, :state, :country, :pincode, :address_1,:address_2))
      if @emp.save
        flash[:notice] = "Employee was created successfully."
        redirect_to employees_path
      else
        render 'new', status: :unprocessable_entity
      end  
    end

    def edit
      @emp = Employee.find(params[:id])
    end

    def update
      @emp  = Employee.find(params[:id])
          if @emp.update(params.require(:employee).permit(:first_name, :middle_name, :last_name, :personal_email,:city, :state, :country, :pincode, :address_1,:address_2))
            flash[:notice] = "Employee was updated successfully."
            redirect_to employees_path
          else
            render 'edit', status: :unprocessable_entity
          end
        end
    end

    def destroy
      @emp = Employee.find(params[:id])
      @emp.destroy
      redirect_to employees_path
    end