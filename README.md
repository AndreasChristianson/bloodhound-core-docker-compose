# bloodhound-core-docker-compose

a docker compose for playing around with [bloodhound core](https://github.com/apache/bloodhound-core)

## try it out

1. `git clone git@github.com:AndreasChristianson/bloodhound-core-docker-compose.git`
1. `cd bloodhound-core-docker-compose`
1. `docker-compose up`

## room for improvement

- waiting for posrgres to come up uses [sleep](https://github.com/AndreasChristianson/bloodhound-core-docker-compose/blob/master/bloodhound/startup.sh#L5) atm. There doesn't seem to be a good way to [wait for dependancy health](https://github.com/docker/compose/issues/374#issuecomment-285156051) within docker-compose
- wsgi doesn't django_rest_framework styling
- bloodhound-core doesn't have much content
