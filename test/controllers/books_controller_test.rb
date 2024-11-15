require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url, as: :json
    assert_response :success
  end

  test "should create book" do
    assert_difference("Book.count") do
      post books_url, params: { book: { author: @book.author, genre: @book.genre, published_year: @book.published_year, title: @book.title } }, as: :json
    end

    assert_response :created
  end

  test "should show book" do
    get book_url(@book), as: :json
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { author: @book.author, genre: @book.genre, published_year: @book.published_year, title: @book.title } }, as: :json
    assert_response :success
  end

  test "should destroy book" do
    assert_difference("Book.count", -1) do
      delete book_url(@book), as: :json
    end

    assert_response :no_content
  end
  test "should not create book without title" do
    # Attempt to create a book with missing title
    assert_no_difference("Book.count") do
      post books_url, params: { book: { author: "Unknown Author", genre: "Fiction", published_year: 2000 } }, as: :json
    end
  
    # Expect an unprocessable entity response (422) since the title is missing
    assert_response :unprocessable_entity
  end
  
end
