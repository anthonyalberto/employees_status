statuses = ["online", "takes a break", "lunching", "offline"]

statuses.each do |status|
  Status.create(name: status)
end
