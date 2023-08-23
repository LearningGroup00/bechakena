class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :type
      t.belongs_to :user, null: false
      t.string :upazilla
      t.string :postcode
      t.text :address_line

      t.timestamps
    end
  end
end
