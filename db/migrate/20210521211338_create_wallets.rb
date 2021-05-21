class CreateWallets < ActiveRecord::Migration[6.0]
  def change
    create_table :wallets do |t|
      t.string :crypto_name
      t.float :send
      t.float :receive
      t.float :convert

      t.timestamps
    end
  end
end
