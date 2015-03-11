class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_home_bikes, :load_skylon_images, :load_izon_images, :load_fluidity_images, :load_geo


  protected

  def load_geo
    @geoip = GeoIP.new(Rails.root.join("GeoIP.dat"))
  end

  def load_home_bikes
    @home_bikes = [
      {bike_url: '/framesets/skylon', bike_image: 'Skylon-AKTIV-Team_bike.png', bike_logo: 'home-SKYLON-LOGO-black.png', bike_headline: 'Skylon', bike_bg: 'home-bike-skylon-bg.jpg'},
      {bike_url: '/framesets/izon', bike_image: 'Izon-AKTIV-white-bike.png', bike_logo: 'home-IZON-LOGO-black.png', bike_headline: 'Izon', bike_bg: 'home-bike-izon-bg.jpg'},
      {bike_url: '/framesets/fluidity', bike_image: 'Fluidity-AKTIV-black-bike.png', bike_logo: 'home-FLUIDITY-LOGO-black.png', bike_headline: 'Fluidity', bike_bg: 'home-bike-fluidity-bg.jpg'},
      {bike_url: '/framesets/limited-edition-bettini-vxrs', bike_image: 'Bettini-frame.png', bike_logo: 'home-VXrs-LOGO-black.png', bike_headline: 'Bettini Limited Edition VXrs', bike_bg: 'home-bike-bettini-bg.png'}

    ]
  end

  def load_skylon_images
    @skylon_images = [
      { bike_image: 'Skylon-AKTIV-plasma-bike.png', bike_title: 'Skylon AKTIV Plasma' },
      { bike_image: 'Skylon-AKTIV-white-bike.png', bike_title: 'Skylon AKTIV White' },
      { bike_image: 'Skylon-AKTIV-Team_bike.png', bike_title: 'Skylon AKTIV Team' },
      { bike_image: 'Skylon-AKTIV-red-bike.png', bike_title: 'Skylon AKTIV Red' },
      { bike_image: 'Skylon-plasma-bike.png', bike_title: 'Skylon Plasma' },
      { bike_image: 'Skylon-white-bike.png', bike_title: 'Skylon White' },
      { bike_image: 'Skylon-Team-bike.png', bike_title: 'Skylon Team' },
      { bike_image: 'Skylon-red_bike.png', bike_title: 'Skylon Red' },
      { bike_image: 'Skylon-red-frame.png', bike_title: 'Skylon Red Frame' },
      { bike_image: 'Skylon-team-frame.png', bike_title: 'Skylon Team Frame' },
      { bike_image: 'Skylon-plasma-frame.png', bike_title: 'Skylon Plasma Frame' },
      { bike_image: 'Skylon-white-frame.png', bike_title: 'Skylon white Frame' }
    ]
  end

  def load_izon_images
    @izon_images = [
      { bike_image: 'Izon-AKTIV-red-bike.png', bike_title: 'Izon AKTIV Red' },
      { bike_image: 'Izon-AKTIV-white-bike.png', bike_title: 'Izon AKTIV White' },
      { bike_image: 'Izon-plasma-bike.png', bike_title: 'Izon Plasma' },
      { bike_image: 'Izon-red-bike.png', bike_title: 'Izon Red' },
      { bike_image: 'Izon-AKTIV-white-frame.png', bike_title: 'Izon AKTIV White Frame' },
      { bike_image: 'Izon-AKTIV-red-frame.png', bike_title: 'Skylon AKTIV Red Frame' },
      { bike_image: 'Izon-red-frame.png', bike_title: 'Izon Red Frame' },
      { bike_image: 'Izon-plasma-frame.png', bike_title: 'Izon Plasma Frame' },
    ]
  end

  def load_fluidity_images
    @fluidity_images = [
      { bike_image: 'Fluidity-AKTIV-black-bike.png', bike_title: 'Fluidity AKTIV Black'},
      { bike_image: 'Fluidity-AKTIV-yellow-bike.png', bike_title: 'Fluidity AKTIV Yellow'},
      { bike_image: 'Fluidity-montrouge-frame.png', bike_title: 'Fluidity Mont Rouge'},
      { bike_image: 'Fluidity-montblanc-frame.png', bike_title: 'Fluidity Mont Blanc'},
      { bike_image: 'Fluidity-AKTIV-rouge-frame.png', bike_title: 'Fluidity AKTIV Rouge'},
      { bike_image: 'Fluidity-AKTIV-noir-frame.png', bike_title: 'Fluidity AKTIV Noir'},
      { bike_image: 'Fluidity-AKTIV-jaune-frame.png', bike_title: 'Fluidity AKTIV Jaune'},
      { bike_image: 'Fluidity-DISC-red-bike.png', bike_title: 'Fluidity DISC Red'},
      { bike_image: 'Fluidity-montblanc-bike.png', bike_title: 'Fluidity Mont Blanc'},
      { bike_image: 'Fluidity-montrouge-bike.png', bike_title: 'Fluidity Mont Rouge'}
    ]
  end

end
