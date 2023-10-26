class ExpensesController < ApplicationController
    before_action :set_expense, only: [:show, :edit, :update, :destroy]
  
    def index
      @expenses = Expense.all
    end
  
    def show
        set_expense
    end
  
    def new
      @expense = Expense.new
    end
  
    def edit
        if current_user == @expense.user
            render :edit
          else
            redirect_to root_path, alert: "Vous n'êtes pas autorisé à modifier cette dépense."
        end
    end
  
    def create
      @expense = Expense.new(expense_params)
      if @expense.save
        redirect_to @expense, notice: 'Dépense créé avec succès.'
      else
        render :new
      end
    end
  
    def update
      if @expense.update(expense_params)
        redirect_to @expense, notice: 'Dépense modifiée avec succès.'
      else
        render :edit
      end
    end
  
    def destroy
      @expense.destroy
      redirect_to expenses_url, notice: 'Dépense supprimée avec succès.'
    end
  
    private
    def set_expense
      @expense = Expense.find(params[:id])
    end
  
    def expense_params
      params.require(:expense).permit(:name, :amount, :date, :user_id)
    end
  end
  