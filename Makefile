
secrets:
	gpg2 -d secrets.gpg | tar xj

pack-secrets:
	tar cj secrets | gpg2 -u F6592404140488ABFCD084D191A2E4A5F44B310E -sc > secrets.gpg

clean:
	rm -rf secrets

.PHONY : pack-secrets clean
