class Image
  def self.find(id)
    svg = Scale::SVG.new(width: "100%", height: "100%")
    path = Scale::Path.new
    path.move_to(x: 10, y: 10)
    10.times do |n|
      path.horizontal(90, relative: true)
      path.vertical(90, relative: true)
      path.horizontal(10, relative: true)
    end
    path.close_path

    svg.add(path)
    svg
  end
end
