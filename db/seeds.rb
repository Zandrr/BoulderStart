# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


class_list =  [

["Introduction to Entrepreneurship", "ESBM 3100", "Introduces non-business students to the multiple facets of entrepreneurship and the entrepreneurial process. Entrepreneurship is a process of fundamental transformation: from innovative idea to enterprise and from enterprise to valuethus, entrepreneurship is more than a business practice. Innovation is central to this process and students will be challenged to develop creative solutions to a problem or need. Restricted to non-Business majors with 60-180 units completed. Prerequisites: Restricted to non-Business majors with 60-180 units completed.", "Business"],
["Principles of Business for Entrepreneurs", "ESBM 3200", "Provides non-business students with a basic understanding of the business principles required to start and grow an entrepreneurial venture. It is intended for individuals who have not taken a marketing, accounting or finance course. This course will focus on two aspects of business that are critical to the success of any new venture: marketing and financial management. Restricted to non-Business majors with 60-180 units completed. Prerequisites: Restricted to non-Business majors with 60-180 units completed.", "Business"],
["Writing a Venture Plan", "ESBM 4100", "Requires non-business students to engage in a rigorous, thoughtful and challenging process essential to planning a new venture. Using their own concept, students will develop a strategy to start and grow a venture. Communicating the plan is an essential element of this course and students will learn when and how to write a plan and make effective presentations. Restricted to non-Business majors with 60-180 units completed. Prerequisites: Restricted to non-Business majors with 60-180 units completed.", "Business"],
["Introduction to Entrepreneurship for Engineers", "ESBM 3100-3", "Introduces non-business students to the multiple facets of entrepreneurship and the entrepreneurial process. Entrepreneurship is a process of fundamental transformation: from innovative idea to enterprise and from enterprise to valuethus, entrepreneurship is more than a business practice. Innovation is central to this process and students will be challenged to develop creative solutions to a problem or need. Restricted to non-Business majors with 60-180 units completed. Prerequisites: Restricted to non-Business majors with 60-180 units completed.", "Business"],
["The Entrepreneurial Artist", "MUSC 4988/5988", "Learn the core principles of entrepreneurship, such as idea formation, venture models, opportunity assessment, market analysis, and strategies for launching a venture, and apply them to their own entrepreneurial ideas. Lectures, projects, entrepreneur interviews, and case studies will culminate in a feasibility study for an original entrepreneurial concept. Recommended prereq., MUSC 4918. Same as MUSC 5988.", "Music"],
["Building Your Music Career", "MUSC 2918/5918", "Students acquire the practical skills they need to build their career as professional musicians, as well as explore the many options for putting their music education to work in the marketplace. Students will also explore the state of live music-making today and explore ways to maintain relevance for themselves and their art in an ever-changing world. Formerly MUSC 4918. Restricted to College of Music majors only. Prerequisites: Restricted to College of Music undergraduate students only.", "Music"],
["Startup Essentials for Software Entrepreneurship", "CSCI 4830/7000", "Students learn about agile methodologies in software development in regard to entrepreneurship", "Engineering"],




]


class_list.each do |name, code, description, discipline |
  Course.create( name: name, code: code, description: description, discipline: discipline )
end