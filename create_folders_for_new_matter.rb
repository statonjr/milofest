#!/usr/bin/env ruby

require 'rubygems'
require 'appscript'
require 'osax'
require 'fileutils'

include Appscript
include OSAX

proj_dir = '/Users/statonjr/Documents/matters/'

matter_name = osax.display_dialog("Name of new matter", :default_answer => "", :with_title => "Create Folders for New Matter", :buttons => ["Cancel", "Create Folders"])[:text_returned]

FileUtils.mkdir_p [proj_dir + matter_name + '/Correspondence', proj_dir + matter_name + '/Pleadings', proj_dir + matter_name + '/Discovery']

finder = app.by_id('com.apple.finder')
finder.open(MacTypes::FileURL.path(proj_dir + matter_name))