class PagesController < ApplicationController

  def about
  end

  def contact
    @members = ["elorm", "enam", "eyram", "kplorla"]
    search = params[:member]

    if search
      @members = @members.select do |member|
        member.start_with? search.downcase
      end
    end
  end

  def home
  end
end
