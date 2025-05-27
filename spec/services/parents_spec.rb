require "#{ROOT}/app/parents"
require "#{ROOT}/app/location"

RSpec.describe App::Parents do
  let(:seed) do
    [
      { id: 1 },
      { id: 2, parent_id: 1 },
      { id: 3, parent_id: 2 },
      { id: 4, parent_id: 3 },
      { id: 5, parent_id: 1 },
      { id: 6 },
      { id: 7, parent_id: 2 }
    ]
  end
  let(:parents) do
    {
      1 => [],
      2 => [1],
      3 => [2, 1],
      4 => [3, 2, 1],
      5 => [1],
      6 => [],
      7 => [2, 1]
    }
  end

  shared_examples 'parents' do |model, block|
    before do
      model.delete_all
      model.create!(seed)
    end

    it 'returns correct records' do
      for id, parent_ids in parents
        expected_records = model.where(id: [id] + parent_ids)
        result_records = block.call(model.find(id))

        expect(result_records).to contain_exactly(*expected_records)
      end
    end
  end

  describe '.via_orm' do
    it_behaves_like 'parents', App::Location, ->(record) { described_class.via_orm(record) }
  end

  describe '.via_sql' do
    it_behaves_like 'parents', App::Location, ->(record) { described_class.via_sql(record) }
  end
end
