class CreateSubs < ActiveRecord::Migration
  def change
    create_table :subs do |t|
      t.integer :moderator_id, null:false
      t.string :title, null: false
      t.text :description, null: false

      t.timestamps null: false
    end
    
    add_index :subs, :title
    add_index :subs, :moderator_id
  end
end
