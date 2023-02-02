https://www.youtube.com/watch?v=AaA-6wU251A&list=PLFhJomvoCKC_mXNBDnpO46Hea_PkCiVWS&index=2

1.34 deploy RethinkDB on Docker 'docker run -d -P --name rethink1'

3:05 'docker container start rethink1' to run rethink1

(but I think it's better to type docker run -d -p 8080:8080 --name rethink2 rethinkdb then 'docker container start rethink2')

5:39 'flutter create --template=package chat' then 'cd chat && code.' to open in VSC
(Android Studio REFUSES to open this, so it's best to inspect this for differences with Flutter's default starting project)

Just make a default flutter project instead

7:15 integrate with rethinkdb
-- add 'rethinkdb_dart:' in pubspec.yaml

7:46 create src/models, src/services inside lib
--then models/user.dart
create User class inside user.dart
(Android Studio complains, so let's use my preferred constructor instead)
(fromJson factory function also doesn't work, so I make my own)