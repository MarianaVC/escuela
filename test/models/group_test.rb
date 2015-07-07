require 'test_helper'
#Class for testing group. 
class GroupTest< ActiveSupport::TestCase
    
    def setup 
    @teacher = Teacher.create(name: "Mariana", last_name: "Valdivia", mother_name: "Carbonell", rfc: "VACM890113PA2", phone: "56613491", email: "marianavc@ciencias.unam.mx", address:"Juarez # 3 interior 5 col Axotla Pueblo c.p 01030", birthday: "01-13-2015", user_name: "MarianaVC", password: "hp,swyjg")    
    @group = @teacher.groups.build(name:"COCA01", time_class: "01:30", level: "BASICO", state: "Active" )
    end
    #group should be valid.
    test "group should be valid" do
        assert @group.valid?
    end
    # teacher id should be present
    
    test "teacher_id should be present" do
        @group.teacher_id = nil
        assert_not @group.valid?
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
    
    # group state should be present.
    test "state should be present" do
        @group.state = ""
        assert_not @group.valid?
    end
end    