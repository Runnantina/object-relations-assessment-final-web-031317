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
