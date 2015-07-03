require 'test_helper'
#Class for testing group. 
class GroupTest< ActiveSupport::TestCase
    
    def setup 
    @group = Group.new(name:"COCA01", time_class: "01:30", level: "BASICO")
    end
    #group should be valid.
    test "group should be valid" do
        assert @group.valid?
    end
    # name should be present.
    test "name should be present" do
        @group.name = ""
        assert_not @group.valid?
    end
    #name should be up to 10 characters.
    test "group name should not be too long" do
        @group.name = "a" * 11
        assert_not @group.valid?
    end
    #name should be no shorter than 5 characters.
    test "group name should not be too short" do
        @group.name = "aaaa"
        assert_not @group.valid?
    end
    # time class should be present. 
    test "time class should be present" do
        @group.time_class=" "
        assert_not @group.valid?
    end
    #time class should be 5 characters long (00:00)
    test "time class length should be 5" do
        @group.time_class = " "
        assert_not @group.valid?
    end
    # group level should be present. 
    test "level should be present" do
        @group.level = ""
        assert_not @group.valid?
    end
end    