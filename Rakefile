require "bundler/gem_tasks"

require 'rake/clean'
CLEAN.include 'pkg'

task :git_local_check do
  sh "git diff --no-ext-diff --ignore-submodules --quiet --exit-code" do |ok, _|
    raise "working directory is unclean" if !ok
    sh "git diff-index --cached --quiet --ignore-submodules HEAD --" do |ok, _|
      raise "git index is unclean" if !ok
    end
  end
end
task :release => :git_local_check
task :build => :git_local_check
