class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :cbd_story, :contact]
  def home
    @flowers = Flower.all
  end

  def cbd_story
  end

  def contact
  end
end
