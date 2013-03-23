class Status < ActiveRecord::Base
  attr_accessible :name
  validates :name, presence: true

  def css_class_name
    name.gsub(/\s+/, "_").downcase
  end
end
