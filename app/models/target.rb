class Target < ActiveRecord::Base
  self.per_page = 20

  validates :url, :name, :selector, presence: true
  validates :name, length: { maximum: 255 }
  validates_format_of :url, :with => URI::regexp, :message => "is invalid url."

  def crawl
    require 'open-uri'
    @activities = []
    @doc = Nokogiri::HTML(open(self.url))
    @links = @doc.css(self.selector)
    @links.each do |a|
      @activity = Activity.new

      next unless self.linkreg.empty? or a[:href] =~ Regexp.new(self.linkreg)
      a.content =~ Regexp.new(self.namereg) ? @activity.name = a.content : next
      # todo blacklist

      if a[:href] =~ /(http|https):\/\/[^\s]*/
        @activity.link = a[:href]
      else
        uri = URI.parse(self.url)
        @activity.link = uri.scheme + uri.host + "/" + a[:href]
      end

      @activity.target = self
      @activity.status_id = 10
      @activities.push(@activity)
    end
    return @activities
  end

end
