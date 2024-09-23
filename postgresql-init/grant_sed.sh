#!/bin/bash

sed -i 's/#track_counts = .*/track_counts = on/g; s/.*track_io_timing = .*/track_io_timing = on/g; s/#track_activities = .*/track_activities = on/g' /var/lib/pgsql/data/userdata/postgresql.conf;
pg_ctl reload -D /var/lib/pgsql/data/userdata/;
