class Actor
  attr_reader :name
  attr_accessor :rank, :age

  @@all = []
  def initialize(info)
    @name = info[:name]
    @rank = info[:rank]
    @age = info[:age]
    @@all << self
  end

  def lie_about_age(new_age)
    if new_age > self.age
      self.age = new_age
      self.rank = self.rank.next
    elsif new_age < self.age
      self.age = new_age
      self.rank = (self.rank.chr.ord-1).chr
    end
  end

  def self.average_age
    @@all.map {|a| a.age.to_f}.sum / @@all.size
  end

  def self.a_list
    @@all.select { |a| a.rank == "A"}
  end

  def self.all
    @@all
  end
  
end # end of Actor class