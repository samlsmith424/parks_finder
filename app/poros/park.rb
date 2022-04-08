class Park
  attr_reader :description,
              :full_name,
              :direction_info,
              :standard_hours

  def initialize(park_data)
    @full_name = park_data[:fullName]
    @description = park_data[:description]
    @direction_info = park_data[:directionsInfo]
    @standard_hours = park_data[:operatingHours][0][:standardHours]
  end
end
