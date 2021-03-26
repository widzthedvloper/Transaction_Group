module TransactionsHelper
  def div_start
    var = '<div class="alert alert-danger" role="alert">'
    var.html_safe if @transactions.errors.any?
  end

  def div_end
    var1 = '</div>'
    var1.html_safe if @transactions.errors.any?
  end

  def display_errors
    @transactions.errors.full_messages.each { |message| p message } if @transactions.errors.any?
  end
end
