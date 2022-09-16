class EmployeesController < ApplicationController
  before_action :set_emp, only: [:edit, :update, :show, :destroy]

    def index
      @emp=Employee.all
    end

    def show
    end

    def new
      @emp= Employee.new
    end

    def create
      @emp = Employee.new(emp_params)
      if @emp.save
        flash[:notice] = "Employee was created successfully."
        redirect_to employees_path
      else
        render 'new', status: :unprocessable_entity
      end  
    end

    def edit
    end

    def update
      if @emp.update(emp_params)
        flash[:notice] = "Employee was updated successfully."
          redirect_to employees_path
      else
          render 'edit', status: :unprocessable_entity
      end   
    end

    def destroy
      @emp.destroy
      redirect_to employees_path
    end

    private

    def emp_params
      params.require(:employee).permit(:first_name, :middle_name, :last_name, :personal_email,:city, :state, :country, :pincode, :address_1,:address_2)
    end

    def set_emp
      @emp = Employee.find(params[:id])
    end
      
  end