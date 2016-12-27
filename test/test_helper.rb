require File.expand_path(File.dirname(__FILE__) + '/../../../test/test_helper')

class ComputedCustomFieldTestCase < ActiveSupport::TestCase
  fixtures :custom_fields
  fixtures_folder = File.join(File.dirname(__FILE__), 'fixtures')
  the_fixtures = Dir[File.join(fixtures_folder, '*.yml')].map {|f| File.basename(f, '.yml') }
  ActiveRecord::FixtureSet.create_fixtures(fixtures_folder, the_fixtures)
end
