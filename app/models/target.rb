class Target < ActiveRecord::Base
  self.per_page = 20

  validates :url, :name, :selector, presence: true
  validates :name, length: { maximum: 255 }
  validates_format_of :url, :with => URI::regexp, :message => "is invalid url."
end
