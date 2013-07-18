class Array 
  def countingsort!
    beg_time = Time.now
    do_countingsort!(min, max)
    puts "Time elapsed #{(Time.now - beg_time) * 1000} milliseconds"
  end

  protected
  def do_countingsort!(min, max)
    count = Array.new(max - min + 1, 0)
    each {|number| count[number - min] += 1}
    z = 0
    min.upto(max) do |i|
      while count[i - min] > 0
        self[z] = i
        z += 1
        count[i - min] -= 1
      end
    end
    self
  end
end
