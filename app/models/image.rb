class Image
  def self.find(id)
    svg = Scale::SVG.new(width: "100%", height: "100%")

    svg.add(Scale::Text.new("HELLO WORLD #{id}", x: 250, y: 250, font_size: 55, font_family: "Verdana"))
    svg.add(Scale::Path.new.tap do |path|
      path.move_to(x: 20, y: 1)
      10.times do |n|
        path.horizontal(rand(50), relative: true)
        path.vertical(rand(50), relative: true)
        path.horizontal(rand(50), relative: true)
      end
      path.close_path
    end)
    svg.add(Scale::Circle.new(r: 10, cx: 100, cy: 100))
    svg.add(Scale::Rectangle.new(width: 10, height: 100, x: 200, y: 200))
    svg
  end
end
