class CreateZemis < ActiveRecord::Migration[7.1]
  def change
    create_table :zemis do |t|
      t.string :name
      t.string :bango
      t.string :abstract
      t.string :credit
      t.string :link
      t.string :info

      t.timestamps
    end
  end
end
