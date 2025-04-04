class AddToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :u_name , :string
  end
end
