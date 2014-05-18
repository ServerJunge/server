class PagesController < ApplicationController
  include HighVoltage::StaticPage

  layout :welcome

  private

  def welcome
    case params[:id]
    when 'welcome'
      'welcome'
    else
      'application'
    end
  end
end