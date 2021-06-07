class CreateOenologists < ActiveRecord::Migration[5.2]
  def change
    create_table :oenologists do |t|
      t.string :oeno_name
      t.integer :age
      t.string :nationality

      t.timestamps
    end
  end
end
