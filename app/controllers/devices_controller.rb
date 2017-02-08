class DevicesController < ApplicationController
  def showiphone
    @iphones = Device.where("brand = ?", "iPhone")
  end
end
