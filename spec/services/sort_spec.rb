require "#{ROOT}/app/sort"
require "#{ROOT}/app/location"

RSpec.describe App::Sort do
  let(:seed) do
    {
      rule1: [
        { id: 1 },
        { id: 2, parent_id: 1 },
        { id: 3, parent_id: 2 },
        { id: 4, parent_id: 3 },
        { id: 5, parent_id: 1 },
        { id: 6 },
        { id: 7, parent_id: 2 }
      ],
      rule2: [
        { id: 1 },
        { id: 2, location_type: 4},
        { id: 3, location_type: 2 },
        { id: 4, location_type: 1 },
        { id: 5, location_type: 1 },
        { id: 6 },
        { id: 7, location_type: 0 }
      ],
      rule3: []
    }
  end
  let(:sorts) do
    {
      rule1: [],
      rule2: [],
      rule3: []
    }
  end
end
