class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :wine_name
      t.integer :score

      t.timestamps
    end
  end
end
