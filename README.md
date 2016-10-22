# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
`2.3.1`

* System dependencies
Default rails deps rn

* Configuration

* Database creation
### Postgres
Make a user called `datingbackend` with password `datingpass` and `createdb`

```bash
$ sudo -u postgres psql -c "CREATE USER datingbackend;"
$ sudo -u postgres psql -c "ALTER USER datingbackend WITH PASSWORD 'datingpass';"
$ sudo -u postgres psql -c "ALTER USER datingbackend WITH createdb;"
```

### MongoDB
Edit `/etc/mongodb.conf`
add `noauth = true`

```bash
$ sudo systemctl restart mongodb

$ mongo

> use admin
switched to db admin
> db.createUser(
... {
... user: 'siteUserAdmin',
... pwd: '1234567890',
... roles: [{role: "userAdminAnyDatabase", db: "admin"}]
... }
... )
Successfully added user: {
	"user" : "siteUserAdmin",
	"roles" : [
		{
			"role" : "userAdminAnyDatabase",
			"db" : "admin"
		}
	]
}
> quit()
```

Edit `/etc/mongodb.conf`
change `noauth = true` to `auth = true`

When connecting to MongoDB, a username and password must be passed now.

```bash
$ sudo systemctl restart mongodb
$ mongo --host localhost --port 27017 --username siteUserAdmin --password --authenticationDatabase admin

> use dating_dev
switched to db dating_dev
> db.createUser(
... {
... user: 'dbadmin',
... pwd: 'snekysnek',
... roles: [{role: "dbOwner", db: "dating_dev"}]
... }
... )
Successfully added user: {
	"user" : "dbadmin",
	"roles" : [
		{
			"role" : "dbOwner",
			"db" : "dating_dev"
		}
	]
}
>quit()
```

* Database initialization
```bash
bundle exec rails db:migrate
bundle exec rake db:setup
```

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
