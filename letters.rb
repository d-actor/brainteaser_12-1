require 'pry'
require 'colorize'

@most = []

def menu
  print `clear`
  puts "---Letters---".yellow
  puts "Enter a sentence and I will tell you which word has the most letters:".yellow
  @entry = STDIN.gets.strip.to_s
  letter_check
end

def letter_check
  words = @entry.split(/\W+/)
  words.each do |word|
    letters = word.split("").length
    letters_uniq = word.split("").uniq.length
    if letters != letters_uniq
      @most << word
    end
  end
  puts @most + " has the most letters."
end

menu
