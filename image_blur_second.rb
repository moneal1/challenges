class Image

    def initialize (show)
      @show = show
    end
  
    def get_ones
      ones = []
      @show.each_with_index do |row, row_number|
        row.each_with_index do |item, col_number|
          if item == 1
            ones << [row_number, col_number]
          end
        end
      end
      
    end
    def row
    end
    def x_number
        @x_number = row
    end
    def y_number
        @y_number = col
    end
  
    def blur!
      ones = get_ones
    @show.each_with_index do |x, x_number|
     x.each_with_index do |item, y_number|
     ones.each do |x_number, y_number|
  
         if x_number == x_number && y_number == y_number
         @show[x_number -1][y_number] = 1 unless x_number == 0
        @show[x_number +1][y_number] = 1 unless x_number >= 3 
         @show[x_number][y_number -1] = 1 unless y_number == 0 
         @show[x_number][y_number +1] = 1 unless y_number >= 3 
              end
            end
          end
        end
    end
  
    def project_blur_image
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
  
  
  image.project_blur_image
  puts
  image.blur!
  
  image.project_blur_image