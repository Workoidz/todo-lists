# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
TodoItem.destroy_all

User.create!(
		[
			{username: 'Fiorina', password_digest: 'abc123'},
			{username: 'Trump', password_digest: 'abc123'},
			{username: 'Carson', password_digest: 'abc123'},
			{username: 'Clinton', password_digest: 'abce123'}
		]

	)

Profile.create!(
		[
			{gender: 'female', birth_year: 1954, first_name: 'Carly', last_name: 'Fiorina', user_id: User.find_by(username: 'Fiorina').id},
			{gender: 'male', birth_year: 1946, first_name: 'Donald', last_name: 'Trump', user_id: User.find_by(username: 'Trump').id},
			{gender: 'male', birth_year: 1951, first_name: 'Ben', last_name: 'Carson', user_id: User.find_by(username: 'Carson').id},
			{gender: 'female', birth_year: 1947, first_name: 'Hillary', last_name: 'Clinton', user_id: User.find_by(username: 'Clinton').id}
		]

	)

TodoList.create!(
		[
			{list_name: 'Month Plan', list_due_date: Date.today + 1.year, user_id: User.find_by(username: 'Fiorina').id},
			{list_name: 'Last Sunday', list_due_date: Date.today + 1.year, user_id: User.find_by(username: 'Trump').id},
			{list_name: 'ToDo Day', list_due_date: Date.today + 1.year, user_id: User.find_by(username: 'Carson').id},
			{list_name: 'Last Monday', list_due_date: Date.today + 1.year, user_id: User.find_by(username: 'Clinton').id}
			
		]

	)


	4.times do |k|
		5.times do |i|

			TodoItem.create!(
					{due_date: Date.today + 1.year, title: "List item #{i}", description: "this is #{i} discription", completed: false, todo_list_id: TodoList.first.id+k}
				)

		end
	end







