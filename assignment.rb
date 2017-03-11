#Question 1

module HelperMethods
  def titleize
    words = @str.split(" ")
    words.each do |firstletter|
      if firstletter == "in" ||firstletter == "the" ||firstletter ==  "of" ||firstletter ==  "and"||firstletter == "or"||firstletter == "from"
        firstletter.downcase
       else
      firstletter.capitalize!
    end
      @str = words.join(" ")
    end
    @str
  end
end

class Word
  include HelperMethods
  def initialize(str)
    @str = str
  end
end

#When you use "extend" you have to include titleize because extend does not bring the method to ExtendDemo
  class ExtendDemo
  extend HelperMethods
  def initialize(str)
    @str = str
  end
  def titleize
    words = @str.split(" ")
    words.each do |firstletter|
      if firstletter == "in" ||firstletter == "the" ||firstletter ==  "of" ||firstletter ==  "and"||firstletter == "or"||firstletter == "from"
        firstletter.downcase
       else
      firstletter.capitalize!
    end
      @str = words.join(" ")
    end
    @str
  end
end

puts "Enter a title"
input = Word.new(gets.chomp)
puts input.titleize


puts "try another"
input = ExtendDemo.new(gets.chomp)
puts input.titleize





#----------------------------------------------
#Question 2

class Book
  attr_accessor :title, :chapters
  def initialize
    @title = title
    @chapters = chapters
    @chapternum = []
    def add_chapter(chapter)
      chapter
      @chapternum.push(chapter)
    end
    def chapters
      num = 1
      puts "Your book: #{@title} has #{@chapternum.length} chapters"
      @chapternum.each do |chapter|
        puts "#{num}. #{chapter}"
        num += 1
      end
    end
  end
end

book = Book.new
book.title = "My Awesome Book"
book.add_chapter("My Awesome Chapter 1")
book.add_chapter("My Awesome Chapter 2")
book.chapters



#--------------------------------------------------
#Question 3


def is_prime(n)
  x =[]
  n = n.to_i
  y = 2
  loop do
    break if y == n
  x.push(y)
  y+= 1
end
#the code above creates an array of 2 to the number before n
outcome =[]
  x.each do |num|
    if n % num == 0
      outcome.push(true)
    else
      outcome.push(false)
    end
  end
  #the code above makes an array of every outcome
if primetest = outcome.detect {|answer| answer == true}
  puts "no"
else
  puts "yes"
end
end



is_prime(8)
is_prime(10)
is_prime(13)
is_prime(2)

#-----------------------------------------------------------
#Question 4

major_cities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]}
cities = []
major_cities.each do |province,city|
cities.push(city)
end

cities[0].insert(2,"and")
lastcity = cities[0].last
cities[0].pop
cities[1].insert(1,"and")

bc = cities[0].join(", ")
ab = cities[1].join(" ")


puts "BC has 3 main cities #{bc} #{lastcity} "
puts "AB has 3 main cities #{ab}"
