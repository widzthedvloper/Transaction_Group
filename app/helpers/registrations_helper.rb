module RegistrationsHelper
  def div_reg_start
    var = '<div class="alert alert-danger" role="alert">'
    var.html_safe if @user.errors.any?
  end

  def div_reg_end
    var1 = '</div>'
    var1.html_safe if @user.errors.any?
  end

  def display_reg_errors
    @user.errors.full_messages.each { |message| p message } if @user.errors.any?
  end
endd
