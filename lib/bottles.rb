class Bottles
  def get_bottle_string(n)
    if n > 1
      "#{n} bottles"
    elsif n == 1
      "#{n} bottle"
    else
      "No more bottles"
    end
  end

  def get_take_string(n)
    if n > 1
      "Take one down and pass it around"
    elsif n == 1
      "Take it down and pass it around"
    else
      "Go to the store and buy some more"
    end
  end

  def decrement_bottles(n)
    if n > 0
      n - 1
    else
      99
    end
  end

  def verse(n)
    bottles_left = decrement_bottles(n)
    current_bottle_str = get_bottle_string(n)
    next_bottle_str = get_bottle_string(bottles_left)
    take_str = get_take_string(n)

    "#{current_bottle_str} of beer on the wall, #{current_bottle_str.downcase} of beer.\n" +
      "#{take_str}, #{next_bottle_str.downcase} of beer on the wall.\n"
  end

  def verses(first, last)
    $i = first
    verses_array = Array.new

    while $i >= last do
      verses_array.push(verse($i))
      $i -= 1
    end

    verses_array.join("\n")
  end

  def song
    verses(99, 0)
  end

end
