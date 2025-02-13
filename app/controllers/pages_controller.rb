class PagesController < ApplicationController 
  def homepage
    render({ :template => "page_templates/homepage"})
  end

  def square_new
    render({ :template => "page_templates/square"})
  end

  def square_result
    @user_number = params.fetch("user_number").to_f
    render({ :template => "page_templates/square_result"})
  end

  def square_root_new
    render({ :template => "page_templates/square_root"})
  end

  def square_root_result
    @user_number = params.fetch("number_input").to_f
    render({ :template => "page_templates/square_root_result"})
  end

  def random_new
    render({ :template => "page_templates/random"})
  end

  def random_result
    @user_min = params.fetch("user_min").to_f
    @user_max = params.fetch("user_max").to_f
    @random_num = rand(@user_min..@user_max)
    render({ :template => "page_templates/random_result"})
  end

  def payment_new
    render({ :template => "page_templates/payment"})
  end

  def payment_result
    @user_apr = params.fetch("user_apr").to_f
    @user_years = params.fetch("user_years").to_i
    @user_pv = params.fetch("user_pv").to_f
  
    # Monthly rate
    r = @user_apr / 100.0 / 12.0
  
    # Convert term in years to the total number of monthly payments.
    n = @user_years * 12
    @numerator = r * @user_pv
    @denom = 1-(1+r)**(-n)
  
    @user_payments = @numerator/@denom
    render({ :template => "page_templates/payment_result"})
  end

end
