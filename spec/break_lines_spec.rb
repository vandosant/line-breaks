require 'spec_helper'
require_relative '../lib/break_lines'

describe BreakLines do
  it 'moves the first word after 80 characters to a new line' do
    input = %q{Jean shorts you probably haven't heard of them farm-to-table, ennui hella American Apparel 8-bit ugh skateboard. Polaroid Odd Future gluten-free, post-ironic four loko viral Cosby sweater Helvetica ugh Intelligentsia Etsy wayfarers.}

    lines = BreakLines.new(input, 'jeans')

    actual = lines.separate(80)

    expected = %Q{Jean shorts you probably haven't heard of them farm-to-table, ennui hella American\nApparel 8-bit ugh skateboard. Polaroid Odd Future gluten-free, post-ironic four\nloko viral Cosby sweater Helvetica ugh Intelligentsia Etsy wayfarers.}

    expect(actual).to eq expected
  end
end