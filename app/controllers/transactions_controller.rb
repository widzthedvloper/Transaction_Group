class TransactionsController < ApplicationController
  def new
    @transactions = Transaction.new
  end

  def index
    @transactions = Transaction.user_transac(Current.user.id)
    @sum = Transaction.sum_amount(Current.user.id)
  end

  def show
  end

  def create
  end
end
