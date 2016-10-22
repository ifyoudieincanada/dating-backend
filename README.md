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
Make a user called `datingbackend` with password `datingpass` and `createdb`

```bash
sudo -u postgres psql -c "CREATE USER datingbackend;"
sudo -u postgres psql -c "ALTER USER datingbackend WITH PASSWORD 'datingpass';"
sudo -u postgres psql -c "ALTER USER datingbackend WITH createdb;"
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
