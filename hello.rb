# module
# -名前空間

def movie_encode
end

def movie_export
end

module Movie

  VERSION = 1.1

  def self.encode
    puts "exporting..."
  end
  def self.export
    puts "encoding..."
  end
end

Movie.encode
Movie.export
p Movie::VERSION
