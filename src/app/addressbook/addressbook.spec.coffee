###
Tests sit right alongside the file they are testing, which is more intuitive
and portable than separating `src` and `test` directories. Additionally, the
build process will exclude all `.spec.js` files from the build
automatically.
###

describe "addressbook section", ->
  beforeEach module("ngAddressbook.addressbook")
  it "should have a dummy test", inject(->
    expect(true).toBeTruthy()
    return
  )
  return
