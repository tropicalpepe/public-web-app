class AddReferralSourceToWaitlistEntries < ActiveRecord::Migration[7.2]
  def change
    add_column :waitlist_entries, :referral_source, :string
  end
end
