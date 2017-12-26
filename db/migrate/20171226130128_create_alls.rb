class CreateAlls < ActiveRecord::Migration[5.1]
  def change
    create_table :alls do |t|
      t.string :top
      t.string :text

      t.timestamps
    end
  end
end
