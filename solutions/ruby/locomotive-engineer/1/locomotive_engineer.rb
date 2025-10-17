class LocomotiveEngineer
  def self.generate_list_of_wagons(*id_list) = id_list

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    wagon_a, wagon_b, *rest = each_wagons_id
    to_be_moved_wagons = wagon_a, wagon_b
    locomotive, *wagons = rest
    reordered_wagons = wagons << wagon_a << wagon_b
    reconnected_wagons = *locomotive, *missing_wagons, *reordered_wagons
  end

  def self.add_missing_stops(hash, **routes)
    hash[:stops] = routes.values
    hash
  end

  def self.extend_route_information(route, more_route_information)
    route_information = {**route, **more_route_information}
  end
end
