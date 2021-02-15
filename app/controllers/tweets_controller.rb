class TweetsController < ApplicationController
  def index
  end

  def new
    @tweet = Tweet.new
  end

  def create
     @tweet = Tweet.new(tweet_params)
     @tweet.user_id = current_user.id
     @tweet.save
     redirect_to tweet_path(@tweet)
  end

  def show
  end

  private
  def tweet_params
    params.require(:tweet).permit(:text, :image)
  end
end
