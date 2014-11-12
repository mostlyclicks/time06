class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_home_bikes




  def load_home_bikes
    @home_bikes = [
      {bike_url: '/framesets/skylon', bike_image: 'Skylon-AKTIV-Team_bike.png', bike_logo: 'home-SKYLON-LOGO-black.png', bike_headline: 'Skylon', bike_bg: 'home-bike-skylon-bg.jpg'},
      {bike_url: '/framesets/izon', bike_image: 'Izon-AKTIV-white-bike.png', bike_logo: 'home-IZON-LOGO-black.png', bike_headline: 'Izon', bike_bg: 'home-bike-izon-bg.jpg'},
      {bike_url: '/framesets/fluidity', bike_image: 'Fluidity-AKTIV-black-bike.png', bike_logo: 'home-FLUIDITY-LOGO-black.png', bike_headline: 'Fluidity', bike_bg: 'home-bike-fluidity-bg.jpg'},
      {bike_url: '/framesets/limited-edition-bettini-vxrs', bike_image: 'Bettini-frame.png', bike_logo: 'home-VXrs-LOGO-black.png', bike_headline: 'Bettini Limited Edition VXrs', bike_bg: 'home-bike-bettini-bg.png'}

    ]
  end
end
