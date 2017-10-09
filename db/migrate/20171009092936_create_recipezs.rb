class CreateRecipezs < ActiveRecord::Migration[5.1]
  def change
    create_table :recipezs do |t|
      t.string :title
      t.string :region

      t.timestamps
    end
  end
end
