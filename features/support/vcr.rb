require 'vcr'

VCR.configure do |c|
  c.hook_into :webmock
  c.cassette_library_dir = 'features/cassettes'
end

VCR.cucumber_tags do |t|
  t.tag '@bucket-does-not-exist'
  t.tag '@bucket-exists'
end