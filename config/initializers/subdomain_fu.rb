SubdomainFu.configure do |config|
  config.tld_size = 1
  config.tld_sizes = {:development => 0,
    :test => 0,
    :production => 2}
end
