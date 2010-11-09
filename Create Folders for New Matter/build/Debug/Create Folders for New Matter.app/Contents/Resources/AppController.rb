# AppController.rb
# Create Folders for New Matter
#
# Created by Larry Staton Jr. on 6/7/10.
# Copyright 2010 Sweetpea Software. All rights reserved.

require 'fileutils'

class AppController

	attr_accessor :matter_name_text_field
	attr_accessor :create_folders_button
	attr_accessor :matter_name
	attr_accessor :spinner
	
	def matters_directory
		'/Users/statonjr/Documents/matters/'
	end
	
	def create_folders(sender)
	
		@matter_name = @matter_name_text_field.stringValue

		new_matter_directory = self.matters_directory + @matter_name
		NSLog new_matter_directory
	
		@spinner.startAnimation(self)
	
		# Use FileUtils to make our directory structure
		FileUtils.mkdir_p [new_matter_directory + '/Correspondence', new_matter_directory + '/Pleadings', new_matter_directory + '/Discovery']
	
		@spinner.stopAnimation(self)
	
		# Use NSWorkspace to open the new matter folder
		NSWorkspace.sharedWorkspace.openURL(NSURL.URLWithString('file:///' + new_matter_directory))
	
		# Reset the text field
		@matter_name_text_field.setStringValue("")
	end
	
	def cancel(sender)
		@matter_name_text_field.setStringValue("")
	end

end