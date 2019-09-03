class Movie
  attr_reader :title, :year, :box_office

  @@all = []
  def initialize(info)
    @title = info[:title]
    @year = info[:year]
    @box_office = info[:box_office]
    @@all << self
  end

  def within_five_years
    @@all.select {|m| (m.year - self.year).abs <= 5 }.reject {|m| m == self}
  end

  def self.all
    @@all
  end

  def self.blockbusters
    @@all.select {|m| m.box_office > 50000000}
  end

  def self.box_office_total_by_year(year)
    @@all.select {|m| m.year == year}.map {|m| m.box_office}.sum
  end
  
end # end of Movie class