require_relative "bounding_box"

class BoundingArea
  def initialize(bounding_boxes)
    @bounding_boxes = bounding_boxes
  end

  def boxes_contain_point?(x, y)
    @bounding_boxes.map {|bounding_box| bounding_box.contains_point?(x, y)}.any?
  end
end
