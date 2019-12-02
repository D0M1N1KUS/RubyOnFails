class Pracownicy < ActiveRecord::Migration[5.1]
  def change
    create_table :pracownicy do |t|
      t.string :stanowisko
    end
  end
end
