require 'test_helper'
# class for testing teacher. 
class TeacherTeast < ActiveSupport::TestCase

def setup 
	@teacher = Teacher.new(name: "Mariana", last_name: "Valdivia", mother_name: "Carbonell", rfc: "VACM890113PA2", phone: "56349591", email: "marianavc@ciencias.unam.mx", address: "JUAREZ 3 INT 5 COL AXOTLA PUEBLO CP. 01030", birthday: "13/01/1989", user_name: "MarianaVC", password: "hp,swyjg")
end
# teacher should be valid.
test "teacher should be valid" do
	assert @teacher.valid? 
end
# teacher's name must be present.
test "name must be present" do
	@teacher.name = ""
	assert_not @teacher.valid?
end
# teacher's name should be no longer that 25 characters.
test "name should not too long" do
	@teacher.name = "a" * 26
	assert_not @teacher.valid?
end
# teacher's last name should be present.
test "last name should be present" do
	@teacher.last_name= ""
	assert_not @teacher.valid?
end
# teacher's last name should not be longer than 100 characters. 
test "last name should not be too long"do    
	@teacher.last_name="a"* 101
	assert_not @teacher.valid?
end
# teacher's phone must be present. 
test "phone must be present" do 
	@teacher.phone = ""
	assert_not @teacher.valid?
end
# teacher's email should be present
test "email shoud be present" do 
	@teacher.email = ""
	assert_not @teacher.valid?
end
# teacher's email should be unique
test "email should be unique" do 
    dup_teacher = @teacher.dup
    dup_teacher.email = @teacher.email.upcase
    @teacher.save
    assert_not dup_teacher.valid?
end
# email validation should accept valid addresses
test "email validation should accept valid addresses" do 
    valid_addresses = %w[user@eee.com user@example.com hola+hola@gmail.com]
    valid_addresses.each do |va|
        @teacher.email = va
        assert @teacher.valid?, '#{va.inspect} should be valid'
    end
end
# email validation shoudl reject invalid addresses
test "email validation should reject invalid addresses" do 
    invalid_addresses = %w[user@example user.org name@example. @hola]
    invalid_addresses.each do |ia|
        @teacher.email = ia
        assert_not @teacher.valid?, '#{ia.inspect} should be valid'
    end
end
# teacher's addres should be present
test "address should be present" do 
	@teacher.address = ""
	assert_not @teacher.valid?
end
# teacher's addres should not be longer than 150 characters.
test "address should not be longer than 150 characters" do 
	@teacher.address = "a" * 151
	assert_not @teacher.valid?
end
# teacher's addres should not be shorter than 20 characters.
test "address sh not be shorter than 20 characters" do 
	@teacher.address = "aaa"
	assert_not @teacher.valid?
end
# teacher's birthday should be present.
test "birthday should be present" do 
	@teacher.birthday = ""
	assert_not @teacher.valid?
end
# teacher's birthday should not be longer than 10 characters.
test "birthday should not be longer than 10 characters" do 
	@teacher.birthday = "a" * 11
	assert_not @teacher.valid?
end 
# teacher's birthday should not be shorter thant 10 characters.
test "birthday should not be shorter than 10 characters" do 
	@teacher.birthday = "aaaaa"
	assert_not @teacher.valid?
end 
# teacher's user name should be present.
test "user name should be present" do 
	@teacher.user_name = ""
	assert_not @teacher.valid?
end
# teacher's user name should not be longer than 10 characters.
test "user name should not be longer than 10 characters" do 
	@teacher.user_name = "a" * 11
	assert_not @teacher.valid?
end 
# teacher's user name should not be shorter than 5 characters.
test  "user name should not be shorter than 5 characters" do 
	@teacher.user_name = "aaaa"
	assert_not @teacher.valid?
end
# teacher's password should be present.
test "password must be present" do 
	@teacher.password = ""
	assert_not @teacher.valid?
end
# teacher's password should not be longer than 11 characters.
test  "password should not be longer than 11 characters" do 
	@teacher.password = "a" * 12
	assert_not @teacher.valid?
end
# teacher's password should not be shorter than 5 characters.
test  "password should not be shorter than 5 characters" do 
	@teacher.password = "aaaa"
	assert_not @teacher.valid?
end




    
end