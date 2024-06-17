class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, except: [:curso]
  def home
  end

  def about
  end

  def curso
  end
end
