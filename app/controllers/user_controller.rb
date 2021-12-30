class UserController < ApplicationController

  has_many :orders 
  
  before_action :authenticate_user!
  
end
