class Role
  attr_reader :actor, :movie, :name

  @@all = []
  def initialize(info)
    @actor = info[:actor]
    @movie = info[:movie]
    @name = info[:name]
    @earnings = info[:earnings]
    @@all << self
  end

  def earnings
    @movie.box_office * @earnings
  end

  def self.all
    @@all
  end
  
end # end of Role class