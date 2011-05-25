require 'rubygems'
require 'watir'

browser = Watir::Browser.new 
browser.goto "http://www.google.com/"

browser.text_field(:name => "q").set "Ruby on Rails"
browser.button(:name => "btnG").click

puts browser.text.include? "often shortened to Rails or RoR, is an open source web application framework"

browser.link(:url => "http://en.wikipedia.org/wiki/Ruby_on_Rails").click
puts browser.text.include? "Ruby on Rails includes tools that make common development tasks easier \"out of the box\""
