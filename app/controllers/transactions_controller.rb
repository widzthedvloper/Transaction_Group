class TransactionsController < ApplicationController
  def new
    @transactions = Transaction.new
  end

  def index
    @transactions = Transaction.user_transac(Current.user.id)
    @sum = Transaction.sum_amount(Current.user.id)
  end

  def create
    @transactions = Transaction.new(user_attributes)
    if @transactions.save
      redirect_to transaction_path, notice: 'Transaction Created successfully'
    else
      render :new
    end
  end

  private

  def user_attributes
    params.require(:transaction).permit(:name, :amount, :user_id)
  end
end
