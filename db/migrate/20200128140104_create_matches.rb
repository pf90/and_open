class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.references :member, index: true, foreign_key: true
      t.references :matched_member, index: true

      t.timestamps null: false
    end

    add_foreign_key :matches, :members, column: :matched_member_id
    add_index :matches, [:member_id, :matched_member_id], unique: true
  end
end
