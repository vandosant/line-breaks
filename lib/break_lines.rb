class BreakLines
  def initialize(input, filename)
    @input = input
    @filename = filename
  end

  def separate(modifier)
    multiplier = 1
    index = modifier * multiplier

    while @input[index] != nil
      @input[index..-1] = @input[index..-1].sub(' ', "\n")
      multiplier += 1
      index = modifier * multiplier
    end

    File.open("output/#{@filename}.md", 'w') do |f|
      f << @input
    end

    @input
  end
end