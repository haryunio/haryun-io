---
layout: page
title: Articles
permalink: /articles/
---

Here you'll find my thoughts on technology, blockchain, software engineering, and more.

<div class="posts-list">
{% for post in site.posts %}
  {% if post.tags contains 'Article' %}
  <article class="post-item">
    <h2 class="post-title"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
    <time class="post-date" datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time>
    {% if post.content contains '<!--more-->' %}
    <div class="post-excerpt">{{ post.content | split:'<!--more-->' | first | strip_html | truncatewords: 50 }}</div>
    <p><a href="{{ post.url | relative_url }}" class="read-more-link">Continue reading &rarr;</a></p>
    {% elsif post.excerpt %}
    <div class="post-excerpt">{{ post.excerpt }}</div>
    <p><a href="{{ post.url | relative_url }}" class="read-more-link">Continue reading &rarr;</a></p>
    {% endif %}
  </article>
  {% endif %}
{% endfor %}
</div>

