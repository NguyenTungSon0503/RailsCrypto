class CreateCryptos < ActiveRecord::Migration[7.0]
  def change
    create_table :cryptos do |t|
      t.string :symbol
      t.integer :user_id
      t.decimal :cost_per
      t.decimal :amount_owned

      t.timestamps
    end
    add_index :cryptos, :user_id
  end
end
