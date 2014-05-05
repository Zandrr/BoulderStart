README

#BoulderStartups

**Team Members: Fletcher Richman & Alexander Campbell**

Description: *BoulderStartups is a site to bring together all the entrepreneurial resources at CU Boulder. For the CSCI 3308 class, we are building a tool that allows students that want to work at startups to send their resume and other information directly to a list of interested startups. Startups can also signup to recieve emails of all the candidates or view them on the site*

**NOTE** - We pivoted from our original proposal because we found from user feedback that this system would be more beneficial to both groups. 

**MVC Description:**

User Model

User Controller

Start Sign Up View (/startups2students)

Sign Up View - candidate or startup

User Index View - can be filtered 

Edit profile view - change password and delete account

Email view - email that is sent weekly to startups

We only need 1 model to achieve a coherent service: Users.  Users can either be candidates or startups.  If they are a *candidate* User they can only submit their resume.  Whereas a *company* User can view candidate users and will also recieve emails. Emails are sent using SendGrid. 
