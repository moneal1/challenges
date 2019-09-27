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
    
  
    def blur!
      ones = get_ones

      @show.each_with_index do |x, current_x_number|
      x.each_with_index do |item, current_y_number|
      ones.each do |x_number, y_number|
        
     if x_number == current_x_number && y_number == current_y_number
         @show[current_x_number -1][current_y_number] = 1 unless current_x_number == 0
         @show[current_x_number +1][current_y_number] = 1 unless current_x_number >= 3 
         @show[current_x_number][current_y_number -1] = 1 unless current_y_number == 0 
         @show[current_x_number][current_y_number +1] = 1 unless current_y_number >= 3 
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