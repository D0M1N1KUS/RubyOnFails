class Uzytkownicy < ActiveRecord::Migration[5.1]
  def change
    create_table :uzytkownicy do |t|
      t.string :imie
      t.string :nazwisko
      t.string :pesel
      t.string :login
      t.string :haslo
      end
  end
end
