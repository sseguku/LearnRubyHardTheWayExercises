class PagesController < ApplicationController

    def about
        @title = "About Us"
        @content = "This is the first content that I have ever created in ruby."
    end
end
