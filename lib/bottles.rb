class Bottles
  def get_bottle_string(number)
    if number > 1
      "#{number} bottles"
    elsif number == 1
      "#{number} bottle"
    else
      "No more bottles"
    end
  end

  def get_action_string(number)
    if number > 1
      "Take one down and pass it around"
    elsif number == 1
      "Take it down and pass it around"
    else
      "Go to the store and buy some more"
    end
  end

  def decrement_bottles(number)
    if number > 0
      number - 1
    else
      99
    end
  end

  def verse(number)
    bottles_left = decrement_bottles(number)
    current_bottle_str = get_bottle_string(number)
    next_bottle_str = get_bottle_string(bottles_left)
    action_str = get_action_string(number)

    "#{current_bottle_str} of beer on the wall, #{current_bottle_str.downcase} of beer.\n" +
      "#{action_str}, #{next_bottle_str.downcase} of beer on the wall.\n"
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
