# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create({
    id:11,
    email:'user@email.com',
    encrypted_password:'',
    sign_in_count:0, 
    created_at:'2007-10-10 10:00.00', 
    updated_at:'2009-10-10
    10:00.00', 
    password:'password'
})