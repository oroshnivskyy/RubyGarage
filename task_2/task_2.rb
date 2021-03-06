# coding: utf-8
word = <<DOC
But I must 1 explain to you 3444 how all http://www.ukr.net/news/politika.html this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great 444 explorer of the truth, the master-builder of 11134 human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know 0 how to pursue 334 pleasure rationally encounter consequences that are 111 extremely painful. Nor again 2 is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which 3444 toil and pain can procure him some great 234234 234 pleasure. http://www.teletrade.com.ua/novice/promo?utm_source=ukr&utm_medium=kak&utm_campaign=silki to take a trivial example, which of us ever undertakes laborious physical exercise, http://orakul.com/horoscope/astro/general/today/lion.html except to obtain 11 some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure 312 that has 777 no annoying consequences, or one who avoids a pain that produces no resultant pleasure? testword11111,
DOC

# First task:
# Return first longest word
puts "Last longest word: #{word.scan(/[\w']+(?=[\s.,!?\-$])/).sort { |x, y| y.length <=> x.length }.first}"

# Return longest words
class Array
  def count_length
    counts = Hash.new()
    each do |word|
      if counts[word.length].nil?
        counts[word.length] = [ word ]
      else
        counts[word.length].push( word )
      end
    end
    counts
  end
end
puts "Longest words: #{word.scan(/[\w']+(?=[\s.,!?\-$])/).count_length.sort.last[1]}"

# Second task
links = word.scan(/http:[^\s]+/)
puts "All links: #{links}"

puts "All home pages: #{links.map { |word| word[/(?<=http:\/\/)[^\s\/]+/] }}"

# Third task:
puts "Longest digit: #{word.scan(/\d+/).sort_by { |x| x.length }.last}"

# Forth task:
class Array
  def count_frequency
    counts = Hash.new(0)
    each do |word|
      counts[word] += 1
    end
    counts
  end
end

puts "Frequency of each word: #{word.scan(/(?!\s)[\w']+(?=[\s.,!?\-$])/).count_frequency}"
