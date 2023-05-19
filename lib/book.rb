class Book
    attr_accessor :title, :page_count, :genre, :author
  
    def initialize(title)
      @title = title
    end
  
    def turn_page
      @page_count ||= 0
      @page_count += 1
      puts "Flipping the page...wow, you read fast!"
    end
  end
  
  book = Book.new("And Then There Were None")
  book.turn_page