class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.references :payer, null: false, foreign_key: true
      t.references :payee, null: false, foreign_key: true
      t.decimal :amount
      t.date :date

      t.timestamps
    end
  end
end
