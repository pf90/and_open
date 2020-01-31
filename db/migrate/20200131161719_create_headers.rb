class CreateHeaders < ActiveRecord::Migration[5.1]
  def change
    create_table :headers do |t|
      t.integer :heading_type
      t.references :member, index: true, foreign_key: true
      t.text :detail
      t.timestamps null: false
    end
  end
end
