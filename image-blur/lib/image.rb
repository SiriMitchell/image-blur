
class Image

  def initialize(matrix)
    @matrix = matrix
  end

  def find_coordinates() 
    pair_list = []
    @matrix.each_with_index do |row, r|
      row.each_with_index do |val, c|
        if @matrix[r][c] == 1
          pair_list.push [r, c]
        end
      end
    end
    return pair_list
  end


  def transform()
    pair_list = find_coordinates()

    pair_list.each do |r, c|
      @matrix[r - 1][c] = 1 unless r-1 < 0
      @matrix[r + 1][c] = 1 unless r+1 > 6
      @matrix[r][c - 1] = 1 unless c-1 < 0
      @matrix[r][c + 1] = 1 unless c+1 > 6
    end
  end

  def output_image()
    @matrix.each do |row|
      row.each do |c|
        print c
        print ' '
      end
      puts
    end
  end
end



one_pixel_image = Image.new(
  [
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 1, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0]
  ]
)

##one_pixel_image.output_image()
one_pixel_image.transform()
one_pixel_image.output_image()