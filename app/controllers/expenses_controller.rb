class ExpensesController < ApplicationController
  before_filter :authorize
  def new
    @expense = Expense.new(user_id: current_user.id)
  end

  def index
    if super_admin
      @expenses = Expense.all
    else
      @expenses = Expense.where(user_id: current_user.id)
    end
  end
  
  def create
    @expense = Expense.new(expense_params)
    @expense.user_id = current_user.id
    if @expense.save
      flash[:notice] = "Expense has been created."
      redirect_to expenses_url
    else
      flash[:alert] = @expense.errors.first[1]
      render "new"
    end
  end
  
  private
  
  def expense_params
    params.require(:expense).permit(:amount, :desc)
  end
end
