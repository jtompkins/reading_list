require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'pry'

RuboCop::RakeTask.new
RSpec::Core::RakeTask.new(:spec)

task ci: [:spec, :rubocop]

task :compile_sass do
  theme_root = File.join('lib', 'reading_list', 'resources', 'themes')
  bin_root = File.join(theme_root, 'bin')

  Dir.mkdir(bin_root) unless Dir.exist?(bin_root)

  Dir.glob(File.join(theme_root, '*.scss')) do |file|
    f = File.basename(file).gsub('.scss', '.css')

    `sass --sourcemap=none #{file} #{File.join(bin_root, f)}`
  end
end

task default: :ci
