class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
    # Tweet.create(tweet_params)
  end

  def create
    Tweet.create(tweet_params)
    #@tweet = Tweet.new
    #@tweet.text = params[:text]
    #@tweet.save
    #redirect_to '/tweets/index'
  end
    

  def show
  
  end

  private
  def tweet_params
    params.require(:tweet).permit(:text)
  end
  
end
