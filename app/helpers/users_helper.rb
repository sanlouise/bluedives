module UsersHelper
  def job_title_icon
    if @user.profile.job_title == "Developer"
      "<i class='fa fa-apple'></i>".html_safe
    elsif @user.profile.job_title == "Entrepreneur"
      "<i class='fa fa-line-chart'></i>".html_safe
      
    elsif @user.profile.job_title == "Investor"
      "<i class='fa fa-money'></i>".html_safe
    end
  end
end
