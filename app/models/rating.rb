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
