class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def letsencrypt
    render text: "5zDDF5tHgRYnImxjJDOuP6WnbZpwdXfKBmtSnHTi-40.DZBSrD2G3yc7tsRmS6QSNOD_xqCYlw_UhoxkYYrUv3k"
  end

  def home
    @today = Date.today
  end

  def team
    @members = ["Bob", "Romain", "Seb"]
  end

  def join_us
    render plain: "Send us a mail"
  end
end
