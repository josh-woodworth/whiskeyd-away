class CreateWhiskeys < ActiveRecord::Migration[6.1]
  def change
    create_table :whiskeys do |t|
      t.string :name
      t.string :description
      t.string :style

      t.timestamps
    end
  end
end
