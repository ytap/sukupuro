class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.string :publishe
      t.integer :zemi_id

      t.timestamps
    end
  end
end
