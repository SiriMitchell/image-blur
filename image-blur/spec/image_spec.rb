require 'spec_helper'

RSpec.describe Image, type: :model do
  describe "blurring should work" do
    it "should blur a standard image" do
      matrix = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]
      ]

       expected = [
        [0, 0, 0, 0],
        [0, 0, 1, 0],
        [0, 1, 1, 1],
        [0, 0, 1, 0],
        [0, 0, 0, 0]
      ]

      one_pixel_image = Image.new(matrix)
      one_pixel_image.transform()
      expect(one_pixel_image.output_image()).to eq expected
    end
  end
end