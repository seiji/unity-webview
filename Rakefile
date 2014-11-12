#!/usr/bin/env ruby
require 'rake'

PROJECT_DIR = File.dirname __FILE__

task 'default' => 'build'

desc 'build plugins'
task :build do
  %w(Mac iOS Android).each do |p|
    Dir.chdir(File.join('plugins', p)) do
      system_or_exit(%Q[./install.sh])
    end
  end
end

private

def system_or_exit(cmd, stdout = nil)
  cmd += " >#{stdout}" if stdout
  puts "$ #{cmd}"
  system(cmd) || fail('command failed. ')
end
