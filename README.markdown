== README

# H1 Title: BoulderStartups

**Team Members: Fletcher Richman & Alexander Campbell**

Description: *BoulderStartups is a site to bring together all the entrepreneurial resources at CU Boulder. For the CSCI 3308 class, we are building a job posting board that allows startups that are looking to hire to post jobs, and students to post their interest. Then students and startups can be matched.*

**MVC Description:**

User Model

Position Model

User Controller

Position Controller

Home View

Sign Up View

New Position Views

Position Index View

Show Position View

Edit Position View

Show User View

Edit User View

We will be using three main models to achieve a coherent board: Positions, Users, and Tags.  Users can either be students or companies.  If they are a *student* User they can only have on Position, with multiple tags.  Whereas a *company* User can have many Positions with many tags.  We will use the tags provided to more effectively match *student* Users with *company* Users.
