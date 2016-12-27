require File.expand_path('../../test_helper', __FILE__)

class PatcherTest < ComputedCustomFieldTestCase
  def test_patch_for_computing_cfs
    classes = [
      Issue, Project, User, TimeEntry, Version,
      Group, TimeEntryActivity, IssuePriority, DocumentCategory
    ]
    classes.each do |klass|
      assert klass.included_modules
                  .include?(ComputedCustomFieldPlugin::KlassPatch)
    end
  end
end
