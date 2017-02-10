class DevicesController < ApplicationController
  def showIphone
    @iphones = Device.where("brand = ?", "iPhone").order("model DESC")
  end

  def showIpad
    @ipads = Device.where("brand = ?", "iPad").order("model DESC")
  end

  def showSamsung
    @samsungs = Device.where("brand = ?", "Samsung Galaxy").order("model DESC")
  end

  def showOther
    @others = Device.where("brand = ?", "Other")
  end
end
