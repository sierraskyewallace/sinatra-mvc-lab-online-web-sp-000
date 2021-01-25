class PigLatinizer
    def piglatinize(user_phrase)
    words = user_phrase.split(" ")
    piglatin = words.collect do |w|
      if w =~ /\A([aeiou])/i
        "#{w}way"
      else array = w.split(/([aeiou].*)/i)
        "#{array[1]}#{array[0]}ay"
      end
    end
    piglatin.join(" ")
  end
end