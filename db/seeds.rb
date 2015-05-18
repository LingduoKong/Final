# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all

User.create  id: 1,
             username: 'yanzhewu',
             password: 'yanzhewu',
             image: 'http://tp3.sinaimg.cn/1442054902/50/40002770510/1'

User.create  id: 2,
             username: 'haozhou',
             password: 'haozhou',
             image: 'http://tp4.sinaimg.cn/1438513755/180/40008758792/1'
             
User.create  id: 3,
             username: 'lingduokong',
             password: 'lingduokong',
             image: 'http://tp2.sinaimg.cn/1666978981/50/5723425429/0'


Tweet.delete_all

Tweet.create  id: 1,
              content: 'Lous challenge anyone???????',
              date: 1425069955,
              user_id: "1"

Tweet.create  id: 2,
              content: 'An entire team of Apple developers was there 24/7 to help, so that was a wonderful resource to learn Swift and Objective C in a weekend.',
              date: 1425069957,
              user_id: "2"  


Tweet.create  id: 3,
              content: 'CSIL is once again selling discounted used computers and monitors for university students and staff! Models for sale are MacPro(2010), Shuttle, and 24" Apple LED Cinema Display. First come, first serve.',
              date: 1425069955,
              user_id: "3"  

Tweet.create  id: 4,
              content: 'Went to an alum potluck, being the only student showing up with four alums around, which is pretty cool and actually the best alum event so far!',
              date: 1425069955,
              user_id: "1"    

Tweet.create  id: 5,
              content: 'Wish I could graduate again ‪#‎BadgerMemory‬',
              date: 1425963490,
              user_id: "2"                           



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
