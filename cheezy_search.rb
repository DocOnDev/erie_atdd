require 'rubygems'
require 'watir'

browser = Watir::Browser.new 
browser.goto "http://www.google.com/"

browser.text_field(:name => "q").set "cucumber cheezy"
browser.button(:name => "btnG").click

puts browser.text.include? "Did you mean:" 

browser.link(:url => "http://www.cheezyworld.com/category/cucumber/").click
puts browser.text.include? "This past week on the cucumber list Aslak asked if people knew about and where using"
