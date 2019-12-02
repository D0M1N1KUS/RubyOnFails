class CreateFrauds < ActiveRecord::Migration[5.1]
  def change
    create_table :frauds do |t|
      t.string :reson
      t.string :authority

      t.timestamps
    end
  end
end
