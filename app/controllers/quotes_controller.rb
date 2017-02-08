class QuotesController < ApplicationController
  def index
  end

  def create
    @quote = Quote.create(quote_params)
    QuoteMailer.sample_email(@quote).deliver
      redirect_to "/quotes/#{@quote.id}"
  end

  def show
  end

  private
  def quote_params
    params.require(:quote).permit(:name, :email, :phone_number, :problem)
  end
end
