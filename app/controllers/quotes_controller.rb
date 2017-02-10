class QuotesController < ApplicationController
  def index
      @phone_model = Device.find(params[:id])
  end

  def create
    @quote = Quote.create(quote_params)
    # binding.pry
    QuoteMailer.sample_email(@quote).deliver
      redirect_to "/quotes/#{@quote.id}"
  end

  def show
  end

  private
  def quote_params
    params.require(:quote).permit(:name, :email, :phone_number, :problem, :phone_model)
  end
end
