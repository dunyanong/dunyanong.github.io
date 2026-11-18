#!/usr/bin/env ruby
#
# Generate redirect pages for the URLs listed in _data/redirects.yml

module Jekyll
  class RedirectGenerator < Generator
    safe true

    def generate(site)
      (site.data['redirects'] || []).each do |r|
        page = PageWithoutAFile.new(site, site.source, r['from'], 'index.html')
        target = "#{site.config['url']}#{site.config['baseurl']}#{r['to']}"
        page.data['layout'] = nil
        page.data['sitemap'] = false
        page.content = <<~HTML
          <!doctype html>
          <html lang="en">
            <head>
              <meta charset="utf-8">
              <title>Redirecting…</title>
              <link rel="canonical" href="#{target}">
              <meta http-equiv="refresh" content="0; url=#{target}">
              <meta name="robots" content="noindex">
            </head>
            <body>
              <p>This page has moved to <a href="#{target}">#{target}</a>.</p>
            </body>
          </html>
        HTML
        site.pages << page
      end
    end
  end
end
