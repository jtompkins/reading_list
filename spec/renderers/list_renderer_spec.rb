require 'spec_helper'

describe ReadingList::ListRenderer do
  let(:factory) { ReadingList::TemplateFactory.new }

  subject(:renderer) do
    ReadingList::ListRenderer.new(template_factory: factory)
  end

  describe '#render' do
    it 'returns a rendered template string' do
      rendered_template = renderer.render(CONFIG, BOOKS)

      expect(rendered_template).to be_a(String)
    end
  end
end
