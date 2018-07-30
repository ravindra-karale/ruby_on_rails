SRCPATH = "/home/wgbl/ravindra/ruby_on_rails/project/html_to_img/app/views/static_pages/"
DESTPATH = "/home/wgbl/ravindra/ruby_on_rails/project/html_to_img/app/assets/images/generated_img/"
FILENAME = "image"
EXTENSION = ".jpg"

class HtmlToImage

  def initialize(html)
    @html = html
  end

  def convert_to_image
    fileHtml = File.new("#{SRCPATH}#{FILENAME}.html", "w+")
    fileHtml.puts @html
    fileHtml.close()
    `wkhtmltoimage --height 500 --quality 100  #{SRCPATH}#{FILENAME}.html  #{DESTPATH}#{FILENAME}#{EXTENSION}`
  end

end


