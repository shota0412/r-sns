class TweetsController < ApplicationController
  def index
  end

  def new
    @tweet = Tweet.new
  end

  def show
  end
end
