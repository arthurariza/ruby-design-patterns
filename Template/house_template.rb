class HouseTemplate
  def build_house
    build_roof
    build_walls
    build_doors
    build_windows
    build_rooms
  end

  def build_roof
    raise NotImplementedError
  end

  def build_walls
    raise NotImplementedError
  end

  def build_doors
    raise NotImplementedError
  end

  def build_windows
    raise NotImplementedError
  end

  def build_rooms
    raise NotImplementedError
  end
end
