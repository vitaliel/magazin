class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title, :short_description
      t.text :description
      t.string :um
      t.float :price
      t.integer :status, default: 0 # este disponibil, 1 - nu este în stoc
      t.timestamps # automat definește 2 coloane: created_at, updated_at
    end
  end
end
