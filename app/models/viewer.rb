class Viewer
  attr_accessor :first_name, :last_name, :rating, :movie

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{:first_name} #{:last_name}"
  end

  def self.find_by_name(name)
    self.all.find do |name|
      full_name == name
    end
  end

  def create_rating(score, movie)
    new_rating = Rating.new(score)
    new_rating.movie = movie
    @@all << new_rating

  end

end
