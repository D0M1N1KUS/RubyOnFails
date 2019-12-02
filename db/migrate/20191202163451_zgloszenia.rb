class Zgloszenia < ActiveRecord::Migration[5.1]
  def change
    create_table :zgloszenia do |t|
      t.string :powod
      t.string :organ_scigania
    end
  end
end
