class AddNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :user, :name, :string
  end
end
