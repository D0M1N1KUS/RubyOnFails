class CreateUsers < ActiveRecord::Migration[5.0]
    def change
        create_table :uzytkownicy do |t|
            t.integer :id
            # belongs_to :adres_zamieszkania, foreign_key: true
            # belongs_to :adres_zameldowania, foreign_key: true
            # belongs_to :pracownik, foreign_key: true, :nullify

            t.string :imie
            t.string :nazwisko
            t.string :pesel
            t.string :login
            t.string :haslo
        end
    end
end
