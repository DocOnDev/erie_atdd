class GooglePage
    def initialize(browser)
        @browser = browser
        @browser.goto("http://www.google.com")
    end

    def search_for(search_text)
        @browser.text_field(:name => "q").set search_text
        @browser.button(:name => "btnG").click
        @browser
    end
end

