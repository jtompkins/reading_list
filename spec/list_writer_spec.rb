require 'spec_helper'

describe ReadingList::ListWriter do
  describe '#write' do
    let(:output) { '~/test_output.html' }
    let(:expanded_output) { File.expand_path(output) }
    let(:template) { 'test_template' }

    it 'writes a file' do
      expect(IO).to receive(:write).with(expanded_output, template)

      writer = ReadingList::ListWriter.new

      writer.write(output, template)
    end
  end
end
