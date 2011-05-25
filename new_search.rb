require 'rubygems'
require 'watir'
require 'google_page'

browser = Watir::Browser.new 
google_page = GooglePage.new(browser)
results_page = google_page.search_for("cucumber cheezy")

puts results_page.text.include? "Did you mean:" 

results_page.link(:url => "http://www.cheezyworld.com/category/cucumber/").click
puts results_page.text.include? "This past week on the cucumber list Aslak asked if people knew about and where using"
