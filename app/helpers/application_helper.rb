module ApplicationHelper
  def gallery_cover(gallery)
    if gallery.pictures.first
      gallery.pictures.first.image.url(:thumb)
    else
      'placeholder.jpg'
    end
  end

  def gallery_cover_h(gallery)
    if gallery.pictures.first
      gallery.pictures.first.image.url(:h_thumb)
    else
      'placeholder.jpg'
    end
  end
end
