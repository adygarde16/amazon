class AddCurrentAge < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :current_age, :integer
  end
end
