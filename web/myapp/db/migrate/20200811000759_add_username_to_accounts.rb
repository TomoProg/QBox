class AddUsernameToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :username, :string, limit: 20, null: false, after: :email
    add_index :accounts, :username, unique: true
  end
end
