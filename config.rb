# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end

activate :deploy do |deploy|
  deploy.deploy_method = :git
end

activate :relative_assets
set :relative_links, true

activate :syntax
set :markdown_engine, :redcarpet
set :markdown, no_intra_emphasis: true, tables: true, autolink: true, fenced_code_blocks: true, disable_indented_code_blocks: true, smartypants: true, strikethrough: true, space_after_headers: true, superscript: true, highlight: true, quote: true, footnotes: true, with_toc_data: true
set :haml, { ugly: true }
