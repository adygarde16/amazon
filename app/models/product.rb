class Prodect < ApplicationRecord
	include Visible

  	has_many :orders

  	before_validation :set_status

  	validates :title :presence true
  	validates :body :presence true

  	private

  	def set_status
  		self.status ='public' if status.nil?
  	end
end

