class CreateGossips < ActiveRecord::Migration[5.1]
  def change
    create_table :gossips do |t|
      t.string :content
      t.references :corsair, foreign_key: true

      t.timestamps
    end
  end
end
