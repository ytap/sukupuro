class CreateShosais < ActiveRecord::Migration[7.1]
  def change
    create_table :shosais do |t|
      t.string :comment

      t.timestamps
    end
  end
end
