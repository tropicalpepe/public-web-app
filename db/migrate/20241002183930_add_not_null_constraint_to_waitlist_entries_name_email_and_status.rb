class AddNotNullConstraintToWaitlistEntriesNameEmailAndStatus < ActiveRecord::Migration[7.2]
  def change
    [ :name, :email, :status ].each do |column|
      change_column_null :waitlist_entries, column, false
    end
  end
end
