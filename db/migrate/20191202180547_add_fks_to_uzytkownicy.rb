class AddFkAdresZamieszkaniaToUzytkownicy < ActiveRecord::Migration[5.1]
  def change
    add_column :uzytkownicy, :fk_adres_zamieszkania, :integer
    add_column :uzytkownicy, :fk_adres_zameldowania, :integer
    add_column :uzytkownicy, :fk_pracownicy, :integer
  end
end
