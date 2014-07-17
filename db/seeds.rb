require_relative '../lib/df.rb'

file_array = Dir.entries("././AllMyBooksArePacked/data")
file_array.each do |file|
  file_name = "./AllMyBooksArePacked/data/" + file
  html_doc = DF::AmazonCrawler.new(file_name)
  result = DF::AddBookToDatabase.run(html_doc)
  binding.pry
end