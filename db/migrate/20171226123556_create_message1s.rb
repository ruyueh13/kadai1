class CreateMessage1s < ActiveRecord::Migration[5.1]
  def change
    create_table :message1s do |t|
      t.string :title1
      t.string :message1

      t.timestamps
    end
  end
end
