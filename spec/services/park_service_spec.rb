require 'rails_helper'

RSpec.describe 'park service' do
  it 'can connect to a park service api' do
    parks = ParksService.parks_by_state("TN")

    expect(parks).to be_a(Hash)
  end
end
