class CreateCorsairs < ActiveRecord::Migration[5.1]
  def change
    create_table :corsairs do |t|
      t.string :username

      t.timestamps
    end
  end
end
