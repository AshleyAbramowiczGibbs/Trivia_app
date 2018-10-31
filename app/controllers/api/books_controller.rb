class Api::BooksController < ApplicationController

  def index
    response = HTTP.get("https://opentdb.com/api.php?amount=1")
    render json: {
      question: response.parse["results"][0]["question"],
      correct_answer: response.parse["results"][0]["correct_answer"],
      incorrect_answers: response.parse["results"][0]["incorrect_answers"],
    }
    # render json: response.parse
  end
end
