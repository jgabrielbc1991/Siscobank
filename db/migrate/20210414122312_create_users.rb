class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_type
      t.string :document_type
      t.string :document
      t.string :name
      t.string :last_name
      t.string :phone1
      t.datetime :emission_date
      t.datetime :expiration_date
      t.string :email
      t.string :phone2

      t.timestamps
    end
  end
end
