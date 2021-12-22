ceclass AddMobilePinCodeAddresstoUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :mobile_number, :integer, null: false, default:""
    add_column :users, :address, :string, null: false, default:""
    add_column :users, :pincode, :integer, null: false, default:""
  end
end
