class CreateWhiskeys < ActiveRecord::Migration[6.1]
  def change
    create_table :whiskeys do |t|
      t.string :name
      t.text :description
      t.string :brand

      t.timestamps
    end
  end
end
