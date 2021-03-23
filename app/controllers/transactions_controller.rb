class TransactionsController < ApplicationController
  def new
    @transactions = Transaction.new
  end

  def index
    @transactions = Transaction.all
  end

  def show
  end

  def create
  end
end
