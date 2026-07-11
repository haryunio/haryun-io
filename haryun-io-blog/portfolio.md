---
layout: page
title: Portfolio
permalink: /portfolio/
lang: en
page_id: portfolio
---

<p class="page-description">A showcase of my projects, experiments, and technical work.</p>

<hr />

{% for post in site.posts %}
  {% if post.tags contains 'Portfolio' %}
  <article class="post">
    <header class="post-header">
      <time class="post-date" datetime="{{ post.date | date: "%Y-%m-%d" }}">{{post.date | date: "%B %-d, %Y" }}</time>
      <h2 class="post-title"><a href="{{ site.baseurl }}{{ post.url }}" rel="bookmark">{{post.title}}</a></h2>
      <div class="post-meta">
        By <span class="post-author">{{ site.data[site.active_lang].author.name | default: site.data.author.name }}</span>{% if post.tags.size > 0 %}<span
          class="post-tags"> in
          {% for tag in post.tags %}<a href="{{ site.baseurl }}/tags/#{{ tag | cgi_escape }}" rel="tag">{{ tag }}</a>{% unless forloop.last %}, {% endunless %}{% endfor %}</span>{% endif %}
      </div><!-- .post-meta -->
      {% assign preview_image = post.featured_image_thumbnail | default: post.feature_image | default: post.featured_image %}
      {% if preview_image and preview_image != "" %}
      <figure class="post-thumbnail image-card width-wide">
        <a href="{{site.baseurl}}{{post.url}}"><img src="{{ preview_image | relative_url }}"
            alt="{{ post.title }}"></a>
      </figure><!-- .post-thumbnail -->
      {% endif %}
    </header><!-- .post-header -->
    <div class="post-content">
      {% if post.content contains '<!--more-->' %}
      {{ post.content | split:'<!--more-->' | first }}
      <p class="read-more"><a href="{{ site.baseurl }}{{ post.url }}" class="read-more-link">Continue reading &rarr;</a>
      </p>
      {% else %}
      {{ post.content }}
      {% endif %}
    </div><!-- .post-content -->
  </article><!-- .post -->
  {% endif %}
{% endfor %}

