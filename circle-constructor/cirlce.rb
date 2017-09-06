class Circle
  def initialize(size)
    if size.kind_of? Hash
      if size[:diameter]
        @radius = size[:diameter].to_f / 2
      elsif size[:radius]
        @radius = size[:radius]
      end
    else
      @radius = size
    end
  end
end
