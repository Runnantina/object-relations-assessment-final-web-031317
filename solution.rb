# Please copy/paste all three classes into this file to submit your solution!
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

class Rating
  attr_accessor :score, :viewer, :movie

  ALL = []

  def initialize(score, viewer, movie)
    @score = score
    @viewer = viewer
    @movie = movie
    ALL << self
  end

  def self.all
    ALL
  end

  def viewer
    # returns the viewer
    ALL.find do |rating|
      rating.viewer == self
    end
  end

  def movie
    ALL.find do |movie|
      rating.movie == self
    end
  end


end

class Movie
  attr_accessor :title
  ALL = []

  def initialize(title)
    @title = title
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_title(title)
    ALL.find do |movie|
      movie.title == title
    end
  end

  def ratings

  end

  def viewers
    # return all viewers who have left RATINGS for this movie
    Viewer.all.select do |viewer|
      viewer.movie == self
    end
  end

  def average_rating

  end

end
