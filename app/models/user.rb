class User < ApplicationRecord

  #has_many :orders, :prodects

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
  validate :validate_age


  before_create :calculate_current_age
  

  

  def calculate_current_age
    self.current_age = Date.today.year - self.dob.year if self.dob.present?
  end


  

  def validate_age

    if dob.present? && dob.to_date > 18.years.ago.to_date
       errors.add(:dob, "You should be over 18 years old.")

    end
  end
end

#DateTime.now - 30.years
