class LocomotiveEngineer
  def self.generate_list_of_wagons(*id_list) = id_list

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    wagon_a, wagon_b, locomotive, *rest = each_wagons_id
    reordered_wagons = rest << wagon_a << wagon_b
    reconnected_wagons = *locomotive, *missing_wagons, *reordered_wagons
  end

  def self.add_missing_stops(route, **stops)
    {**route, stops: stops.values}
  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end
