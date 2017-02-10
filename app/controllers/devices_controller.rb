class DevicesController < ApplicationController
  def showiphone
    @iphones = Device.where("brand = ?", "iPhone").order("model DESC")
  end
end
