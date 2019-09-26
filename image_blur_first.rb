class Image

    def initialize (show)
      @show = show
    end
    def project_image
      @show.each do |square|
        puts square.join
      end
    end
  end
  image = Image.new([
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 1],
    [0, 0, 0, 0]
  ])
  
  image.project_image