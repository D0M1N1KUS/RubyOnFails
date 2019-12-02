class Wnioski < ActiveRecord::Migration[5.1]
  def change
    create_table :wnioski do |t|
      t.string :decyzja
      t.string :typ_kredytu
      t.date :data
      t.float :kwota
    end
  end
end
