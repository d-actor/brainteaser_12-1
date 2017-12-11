require 'pry'
require 'colorize'

@most = []

def menu
  print `clear`
  puts "---Letters---".yellow
  puts "Enter a sentence and I will tell you which word has the most letters:".yellow
  @entry = STDIN.gets.strip
  letter_check
end

def letter_check
  words = @entry.split(/\W+/)
  words.each do |word|
    letters = word.split("")
    letters.each do |l|
      
    end
  end
end

menu
