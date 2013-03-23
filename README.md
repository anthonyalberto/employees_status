## Small web app to view employees status

### Limits
I've decided to make a predefined list of possible statuses so people don't have to type their status. This way we don't end up with random facebook like statuses that don't add any value to our project.

### What's next
Add team support: we'd have to create a `Team` model. Every user would then belong to a team so we'd have to add a `team_id` field on the User table.
We'd then have to update the search bar to be able to filter by team name, and display the team name of each member on the user list.
We could also only display other users of the current user's team by adding a condition to the request that pulls the users from the db : `.where(team_id: current_user.team_id)`


