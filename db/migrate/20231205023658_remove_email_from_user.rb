class RemoveEmailFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :user, :email
  end
end
