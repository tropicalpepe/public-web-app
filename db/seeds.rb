# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Array of random names
names = [
  "Emma Johnson", "Liam Smith", "Olivia Brown", "Noah Jones", "Ava Davis",
  "Ethan Miller", "Sophia Wilson", "Mason Taylor", "Isabella Anderson", "William Thomas",
  "Mia Jackson", "James White", "Charlotte Harris", "Benjamin Martin", "Amelia Thompson"
]
statuses = [ :unverified, :verified, :informed, :joined, :quit ]

puts "Seeding waitlist entries..."

# Create or update 20 entries
20.times do |i|
  name = names.sample
  email = "#{name.downcase.gsub(' ', '.')}#{i+1}@example.com"
  status = statuses.sample

  entry = WaitlistEntry.find_or_create_by(email: email) do |e|
    e.name = name
    e.status = status
  end

  if entry.persisted?
    entry.update(name: name, status: status)
    puts "Updated entry for #{name} (#{email}) - Status: #{status}"
  else
    puts "Created entry for #{name} (#{email}) - Status: #{status}"
  end
end

puts "Seed data operation complete!"
puts "Total entries: #{WaitlistEntry.count}"
puts "Status breakdown:"
WaitlistEntry.statuses.keys.each do |status|
  count = WaitlistEntry.where(status: status).count
  puts "  #{status.capitalize}: #{count}"
end
