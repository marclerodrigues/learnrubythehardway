class Player
  attr_reader :name
  attr_accessor :damage
  attr_accessor :wealth
  def initialize name
    @name = name
    @life = 100
    @damage = 2
    @wealth = 0
  end

  def harm harm_power
    @life -= harm_power.to_i
    dead("#{@name} too injured") if @life <= 0
  end

  def dead msg
    puts "#{msg}, Well done!"
    exit(0)
  end

  def life
    puts @life
  end

end
