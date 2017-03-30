require 'spec_helper'

describe ReadingList::IocContainer do
  subject(:ioc_container) { ReadingList::IocContainer.new(CONFIG_FILE) }

  describe '#container' do
    it 'returns a configured Codependent container' do
      container = ioc_container.container

      expect(container).to be_a(Codependent::Container)
    end
  end
end
