class Owner
  # code goes here
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end  

end
