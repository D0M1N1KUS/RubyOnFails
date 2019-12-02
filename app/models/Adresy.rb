class CreateAddresses < ActiveRecord::Migration[5.0]
    def change
        create_table :adresy do |t|
            t.integer :id
            t.string :ulica
            t.string :miasto
            t.string :kod_pocztowy
        end
    end
end
