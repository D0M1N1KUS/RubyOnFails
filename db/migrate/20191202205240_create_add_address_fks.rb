class CreateAddAddressFks < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :mail_address_fk, :integer
    add_column :users, :home_address_fk, :integer
    add_column :users, :staffs_fk, :integer

    add_column :proposals, :users_fk, :integer
    add_column :proposals, :frauds_fk, :integer
    add_column :proposals, :staffs_fk, :integer

    add_foreign_key :users, :adresses, column: :home_address_fk
    add_foreign_key :users, :adresses, column: :mail_address_fk
    add_foreign_key :users, :staffs, column: :staffs_fk

    add_foreign_key :proposals, :users, column: :users_fk
    add_foreign_key :proposals, :frauds, column: :frauds_fk
    add_foreign_key :proposals, :staffs, column: :staffs_fk
  end
end
