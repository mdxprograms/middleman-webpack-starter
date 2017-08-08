activate :external_pipeline,
         name: :webpack,
         command: build? ? 'npm run build' : 'npm run start',
         source: '.tmp/dist',
         latency: 1

configure :development do
  activate :livereload
end

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascript'
set :images_dir, 'images'

configure :build do
  activate :asset_hash, ignore: [/\.jpg\Z/, /\.png\Z/]
end
