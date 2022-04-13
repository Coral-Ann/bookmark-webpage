## User Story 

```
As a user
So that I am able to visit different websites
I want to see a list of bookmarks

As a user
So that I am able to save new website links
I want to be able to add bookmarks

As a user
So that I am able to remove redundant websites
I want to be able to remove bookmarks

As a user
So that a link remains up to date
I want to be able to update current bookmarks

As a user
So that I can make notes regarding a website
I want to be able to comment on current bookmarks

As a user
So that I can organise my list of websites into categories
I want to add tags to my current bookmarks

As a user
So that I can view specific bookmark categories
I want to filter current bookmarks by their tags

As a developer
So that users cannot access other user's bookmarks
I want to restrict users to manage their own bookmarks only
```

## Domain Model

[click here](https://excalidraw.com/#json=-TV9lO1UOlT2AKSrsiS1j,i_WiZKJIJeezEZMtTgTcwA) to view domain model 

## To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

## Viewing bookmarks

To view bookmarks, navigate to `localhost:2929/bookmarks`.