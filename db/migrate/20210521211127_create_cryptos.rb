class CreateCryptos < ActiveRecord::Migration[6.0]
  def change
    create_table :cryptos do |t|
      t.string :name
      t.string :symbol
      t.float :price
      t.integer :volume

      t.timestamps
    end
  end
end
