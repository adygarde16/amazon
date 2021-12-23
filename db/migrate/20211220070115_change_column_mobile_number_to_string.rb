class ChangeColumnMobileNumberToString < ActiveRecord::Migration[6.1]
  def change
    change_column( :users, :mobile_number, :string )
  end
end
