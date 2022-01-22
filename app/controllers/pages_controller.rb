class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :cbd_story, :contact]
  def home
  end

  def cbd_story
  end

  def contact
    @markers = [{lat: 52, lng: 5,  image_url: helpers.asset_url('Cannabis_leaf_2.svg')}]
  end
end
