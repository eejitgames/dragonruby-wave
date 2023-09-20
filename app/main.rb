def tick args
  min_x = 0
  max_x = 2 * Math::PI
  min_y = -15
  max_y = 15

  args.grid.x.upto(args.grid.w - 1) do |ax|
    x = ax * (max_x - min_x) / args.grid.w - min_x
    y = Math.cos(x)
    ay = (y - min_y) * args.grid.h / (max_y - min_y) + args.grid.y
    normal = Math.cos(x)

    args.outputs.sprites << {
      x: ax,
      y: ay,
      w: 2,
      h: 10,
      path: :pixel,
      angle: normal,
      a: 255,
      r: 100,
      g: 100,
      b: 100,
    }
  end
end
