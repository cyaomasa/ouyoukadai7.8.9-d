class TagSearchesController < ApplicationController

    def search
        @model = Book
        @model = params[:content]
        @books = Book.where("category Like?", "%#{@word}%")
        render "tag_searches/tagsearch"
    end
    
end
