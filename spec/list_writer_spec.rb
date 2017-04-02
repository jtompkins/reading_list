require 'spec_helper'

describe ReadingList::ListWriter do
  describe '#write' do
    let(:output_dir) { File.expand_path(CONFIG.output_dir) }
    let(:output_file) { File.expand_path(File.join(CONFIG.output_dir, 'index.html')) }
    let(:template) { 'test_template' }

    subject(:writer) { ReadingList::ListWriter.new }

    it 'creates the output directory' do
      allow(Dir).to receive(:exist?).with(output_dir).and_return(false)
      expect(Dir).to receive(:mkdir).with(output_dir)

      writer.write(CONFIG, template)
    end

    it 'copies the theme CSS file to the output directory' do
      expect(FileUtils).to receive(:copy_entry).once

      writer.write(CONFIG, template)
    end

    it 'writes the index file to the output directory' do
      expect(IO).to receive(:write).with(output_file, template)

      writer.write(CONFIG, template)
    end
  end
end
