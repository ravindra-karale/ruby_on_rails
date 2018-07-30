class TextToHtml

  def initialize(attrs = {})
    @attrs = attrs
  end

  def sample
    html = ApplicationController.new.render_to_string('shared/sample', format: 'html', layout: false, locals: {data: @attrs})
    HtmlToImage.new(html).convert_to_image
  end

end




# text = [{hed:"Before going deep on Service", desc:"heading Before going deep on Service."},{hed:"Before going deep on Service", desc:"heading Before going deep on Service."},{hed:"Before going deep on Service", desc:"heading Before going deep on Service."},{hed:"Before going deep on Service", desc:"heading Before going deep on Service."}]
# => [{:hed=>"Before going deep on Service", :desc=>"heading Before going deep on Service."}, {:hed=>"Before going deep on Service", :desc=>"heading Before going deep on Service."}, {:hed=>"Before going deep on Service", :desc=>"heading Before going deep on Service."}, {:hed=>"Before going deep on Service", :desc=>"heading Before going deep on Service."}]
