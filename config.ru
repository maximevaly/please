use Rack::Static,
  :urls => ["/images", "/scripts", "/styles", "/fonts"],
  :root => "dist"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'dist, max-age=86400'
    },
    File.open('dist/index.html', File::RDONLY)
  ]
}

