class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def backdoor

  
    render({ :template => "item_templates/backdoor"})
  end

  def add_link

    @link_description = params.fetch("link_description", "")
    @link_url = params.fetch("link_url", "")
    @image_url = params.fetch("image_url", "")

    @i = Item.new

    @i.link_url = @link_url
    @i.link_description = @link_description
    @i.thumbnail_url = @image_url

    @i.save

    redirect_to("/")
  end
end
