class CreateWaitlistEntries < ActiveRecord::Migration[7.2]
  def change
    create_table :waitlist_entries do |t|
      t.string :name
      t.string :email
      t.integer :status, default: 0
      t.timestamps
    end
    add_index :waitlist_entries, :email, unique: true
  end
end
