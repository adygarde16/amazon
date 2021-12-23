class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         :confirmable


  validates :email, :password, :password_confirmation, :dob, presence: true 
  validates :first_name, :last_name, :address, format: { with: /\A[a-zA-Z]+\z/, message: "Only allows letters" }
  validates :mobile_number, :pincode, numericality: { only_integer: true}
  validates :mobile_number, length: { is: 10 }
  validates :pincode, length: { is: 6 } 
end
