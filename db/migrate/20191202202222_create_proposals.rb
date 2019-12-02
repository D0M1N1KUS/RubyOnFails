class CreateProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :proposals do |t|
      t.string :decision
      t.string :loan_type
      t.date :date
      t.float :amount

      t.timestamps
    end
  end
end
