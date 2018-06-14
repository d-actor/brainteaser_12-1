require 'pry'
require 'colorize'

def menu
  print `clear`
  puts "---Letters---".yellow
  @entry = gets.strip
  letter_check
end

def letter_check
  most_repeats = ''
  most = 0
  words = @entry.split(/\W/)
  words.each do |word|
    letters = word.length
    letters_uniq = word.split("").uniq.length
    repeats = letters - letters_uniq
    if repeats > most
      most = repeats
      most_repeats = word
    end
  end
  puts most_repeats + " has the most repeated letters."
end

menu
