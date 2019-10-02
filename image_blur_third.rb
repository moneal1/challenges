class Image

    def initialize (show)
      @show = show
    end
  
    def get_ones
      ones = []
      @show.each_with_index do |x, x_number|
        x.each_with_index do |item, y_number|
          if item == 1
            ones << [x_number, y_number]
            
                  end
        end
      end
     ones 
    end
    def row
    end
    
  
    def blur!(blur_distance)
      ones = get_ones

      @show.each_with_index do |x, current_x_number|
      x.each_with_index do |item, current_y_number|
      ones.each do |x_number, y_number|
      distance = manhattan_distance(current_x_number, current_y_number, x_number, y_number) 
        
     if manhattan_distance(current_x_number, current_y_number, x_number, y_number) <= blur_distance
        @show [current_x_number][current_y_number] = 1
               end
            end
          end
        end
    end

    def manhattan_distance(x1, y1, x2, y2)
        horizontal_distance = (x2 - x1).abs
        vertical_distance = (y2 - y1).abs
        horizontal_distance + vertical_distance 
    end
  
    def project_blur_image
      @show.each do |square|
        puts square.join
      end
    end
  end
  
  image = Image.new([
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 1, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 1, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0]
  ])
  
  
  image.project_blur_image
  puts
  image.blur!(2)
  
  image.project_blur_image