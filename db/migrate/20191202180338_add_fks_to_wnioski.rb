class AddFkUzytkownicyToWnioski < ActiveRecord::Migration[5.1]
  def change
    add_column :wnioski, :fk_uzytkownicy, :integer
    add_column :wnioski, :fk_zgloszenia, :integer
    add_column :wnioski, :fk_pracownicy, :integer
  end
end
