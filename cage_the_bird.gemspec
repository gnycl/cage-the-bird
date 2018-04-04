# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cage_the_bird/version'

Gem::Specification.new do |s|
  s.name = "cage_the_bird"
  s.version = CageTheBird::VERSION
  s.license = 'MIT'
  s.date = '2018-04-04'

  s.author = "Harry Stebbins"
  s.email = 'hcstebbins@gmail.com'
  s.homepage = 'https://github.com/stebbins/cage-the-bird'

  s.summary = "Cage the Bird is a simple Ruby command line application for purging your Twitter account of Tweets, Retweets, and Likes."

  s.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(spec)/})
  end

  s.require_paths = ["lib"]
  s.add_dependency "require_all"
  s.add_dependency "twitter"
  s.add_development_dependency "rspec"
end

