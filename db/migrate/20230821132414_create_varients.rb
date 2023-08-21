class CreateVarients < ActiveRecord::Migration[7.0]
  def change
    create_table :varients do |t|
      t.belongs_to :product, null: false
      t.string :color
      t.string :size
      t.string :sku

      t.timestamps
    end
  end
end
