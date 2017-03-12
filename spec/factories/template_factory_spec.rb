require 'spec_helper'

describe ReadingList::TemplateFactory do
  subject(:factory) { ReadingList::TemplateFactory.new }

  describe '#load' do
    it 'returns the text of a template' do
      template = factory.load('list.mustache')

      expect(template).to be_a(String)
    end
  end
end
