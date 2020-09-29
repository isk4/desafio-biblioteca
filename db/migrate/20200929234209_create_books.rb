class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.boolean :lent, null: false, default: false
      t.date :loan_date
      t.date :return_date

      t.timestamps
    end
  end
end
