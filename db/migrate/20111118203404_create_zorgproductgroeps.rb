class CreateZorgproductgroeps < ActiveRecord::Migration
  def change
    create_table :zorgproductgroeps do |t|
      t.integer :code
      t.text :omschrijving
      t.date :ingangsdatum
      t.date :einddatum
      t.integer :mutatie

      t.timestamps
    end
  end
end
