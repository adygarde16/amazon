class RemoveColumnDob < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :dob, :string, null: false, default:"" 
  end
end
