class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    all_chars = @shows.flat_map do |show|
      show.characters
    end
    b = all_chars.max_by do |character|
      character.salary
    end
    b.actor
  end
end
