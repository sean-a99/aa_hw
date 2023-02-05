class Map

  def initialize
    @data = []
  end

  def set(key, value)
    @data.each do |pair|
      if pair[0] == key
        pair[1] = value
        return
      end
    end
    @data << [key, value]
  end

  def get(key)
    @data.each do |pair|
      if pair[0] == key
        return pair[1]
      end
    nil
    end
  end

  def delete(key)
    duped_arr = []

    @data.each do |pair|
      unless pair[0] == key
        duped_arr << pair
      end
    end
    @data = duped_arr
  end

  def show
    print @data
  end


end

m = Map.new

p m

m.set(2, 5)

p m

m.set(2, 6)
m.set(3, 7)
m.set('hello', 'world')


p m

p m.get(2)

m.delete(2)

p m

puts
m.show