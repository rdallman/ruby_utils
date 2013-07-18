# runs fibonacci up to the Nth number

class Integer
  def fibonacci
    current = nextone = 1
    self.times do |i|
      current, nextone = nextone, current + nextone
    end
    current
  end
end
