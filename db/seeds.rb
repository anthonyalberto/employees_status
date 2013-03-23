`rake db:truncate`

statuses = ["Online", "Takes a break", "Lunching", "Offline"]

statuses.each do |status|
  Status.create!(name: status)
end

User.create!(name: "Rick Rock", email: "test@rick.com", password: "11111111", password_confirmation: "11111111", status_id: Status.where(name: "Online").first.id)
User.create!(name: "Will Pitt", email: "test@will.com", password: "11111111", password_confirmation: "11111111", status_id: Status.where(name: "Takes a break").first.id)
User.create!(name: "John Surrender", email: "test@john.com", password: "11111111", password_confirmation: "11111111", status_id: Status.where(name: "Lunching").first.id)
User.create!(name: "Alicia Clef", email: "alicia@clef.com", password: "11111111", password_confirmation: "11111111", status_id: Status.where(name: "Offline").first.id)