defmodule Teenager do

  def hey(input) do
    if input == "" do
      "Fine. Be that way."
    else
      if String.ends_with? input, "?" do
        "Sure."
      else
        if input == String.upcase(input) do
          "Woah, chill out!"
        else
          "Whatever."
        end
      end
    end
  end
end

