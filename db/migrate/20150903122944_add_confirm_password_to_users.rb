class AddConfirmPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :confirm_password, :integer
  end
end
