class UserController < ApplicationController
  
  before_action :authenticate_user!
  require 'date'
  def age(dob)
  now = Time.now.utc.to_date
  now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
end
end
