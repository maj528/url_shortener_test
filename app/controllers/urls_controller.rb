class UrlsController < ApplicationController
    
    def index
      @urls = Url.all
    end

    def new
      @url = Url.new
    end

    def create
      @url = Url.new(url_params)
      @url.short_url =@url.generate_short_url
      @url.long_url = @url.sanitize
      p @url
      if @url.save
        redirect_to urls_path
      else
        p "nope"
        flash[:error] = @url.errors.full_messages
        redirect_to new_url_path
      end
    end

    def show
      @url = Url.find_by(short_url: params[:short_url])
    end

    private

    def url_params
      params.require(:url).permit(:long_url)
    end
end

