class CreateUpdates < ActiveRecord::Migration[6.0]
  def change
    create_table :updates do |t|
      t.string :summary
      t.text :body
      t.integer :priority
      t.integer :area
      t.date :on
      t.boolean :private

      t.timestamps
    end
  end
end
