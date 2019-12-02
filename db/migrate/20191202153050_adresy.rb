class Adresy < ActiveRecord::Migration[5.1]
  def change
    create_table :adresy do |t|
        t.string :ulica
        t.string :miasto
        t.string :kod_pocztowy
      end
  end
end
