class CreateCryptos < ActiveRecord::Migration[5.2]
  def change
    create_table :cryptos do |t|
      t.string :symbol
      t.integer :user_id
      t.decimal :amount_owned
      t.decimal :paid_per

      t.timestamps
    end
    add_index :cryptos, :user_id
  end
end
