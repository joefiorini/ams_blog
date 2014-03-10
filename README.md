# ActiveModelSerializers/Jbuilder Performance Test

I noticed that AMS is significantly slower at rendering side-loaded data than Jbuilder. This is a purposefully super-simple app to show isolate the issue I was running into.

## To run the tests

1. Clone repo
2. bundle install
3. rake db:setup
4. rake db:test:prepare
5. `./test-ams`, `./test-ams-0.8`, `./test-jbuilder`

To analyze further check out the ams, ams-0.8 & jbuilder branches.
