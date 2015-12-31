module ApplicationHelper
  def svg_tag filename, options={}
    file = File.read(Rails.root.join('app', 'assets', 'images', filename))
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css 'svg'
    if options[:class].present?
      svg['class'] = options[:class]
    end
    doc.to_html.html_safe
  end

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
