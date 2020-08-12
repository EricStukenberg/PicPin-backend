class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.json :data

      t.timestamps
    end
  end
end
