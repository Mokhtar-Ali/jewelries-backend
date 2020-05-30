class CreateJewelries < ActiveRecord::Migration[6.0]
  def change
    create_table :jewelries do |t|
      t.string :name

      t.timestamps
    end
  end
end
