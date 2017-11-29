class CreateTweeets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweeets do |t|
      t.text :tweeet

      t.timestamps
    end
  end
end
