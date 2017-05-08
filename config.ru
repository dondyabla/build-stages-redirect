require 'rack-host-redirect'

INNER_APP = Proc.new { [200, {}, ['OK']] }

run Rack::HostRedirect.new(INNER_APP, {
  'build-stages-beta-staging.travis-ci.com' => 'staging.travis-ci.com',
  'build-stages-beta.travis-ci.com' => 'travis-ci.com',
  'build-stages-beta-staging.travis-ci.org' => 'staging.travis-ci.org',
  'build-stages-beta.travis-ci.org' => 'travis-ci.org'
})
