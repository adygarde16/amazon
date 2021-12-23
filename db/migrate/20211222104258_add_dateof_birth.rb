class AddDateofBirth < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :dob, :string, null: false, default:"" 
  end
end