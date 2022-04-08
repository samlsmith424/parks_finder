class ParkFacade
  def self.state_parks(state)
    data = ParksService.parks_by_state(state)

    data[:data].map do |park_data|
      Park.new(park_data)
    end
  end
end
