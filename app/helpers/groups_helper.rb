module GroupsHelper
  def div_group_start
    var = '<div class="alert alert-danger" role="alert">'
    var.html_safe if @groups.errors.any?
  end

  def div_group_end
    var1 = '</div>'
    var1.html_safe if @groups.errors.any?
  end

  def display_group_errors
    @groups.errors.full_messages.each { |message| p message } if @groups.errors.any?
  end
end
