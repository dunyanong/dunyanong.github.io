#!/usr/bin/env ruby
#
# Search-engine tweaks that Chirpy has no setting for.
#
# 1. Tag and category archive pages are thin lists of post links. Keep them out of the
#    sitemap and mark them `noindex, follow` (rendered by _includes/metadata-hook.html),
#    so search engines index the posts themselves.
# 2. `seo_title` front matter replaces the page's <title> (Chirpy's home layout always
#    uses the bare site title). The visible heading and og:title are unchanged.

require 'cgi'

Jekyll::Hooks.register :site, :pre_render do |site|
  next unless defined?(Jekyll::Archives::Archive)

  site.pages.each do |page|
    next unless page.is_a?(Jekyll::Archives::Archive)

    page.data['sitemap'] = false
    page.data['robots'] = 'noindex, follow'
  end
end

Jekyll::Hooks.register [:pages, :documents], :post_render do |doc|
  seo_title = doc.data['seo_title']
  next if seo_title.nil? || seo_title.to_s.strip.empty?
  next unless doc.output.is_a?(String)

  doc.output = doc.output.sub(%r{<title>.*?</title>}m) do
    "<title>#{CGI.escapeHTML(seo_title.to_s.strip)}</title>"
  end
end
