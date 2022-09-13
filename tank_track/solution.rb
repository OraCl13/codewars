def tankvol(h, d, vt)
  radius = d.to_f / 2;
  if h == radius
    vt / 2
  end

  deep = vt / (Math::PI * radius ** 2)
  height = h > radius ? radius - (d - h) : radius - h
  side = Math.sqrt(radius ** 2 - height ** 2)
  theta = Math.acos(height / radius) * (180.0 / Math::PI)
  remain_vol = (360 - 2 * theta) / 360 * vt + side * height * deep
  (h > radius ? remain_vol : vt - remain_vol).floor
end

puts tankvol(40,120,3500)

puts tankvol(60,120,3500)