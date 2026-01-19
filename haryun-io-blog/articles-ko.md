---
layout: page
title: 아티클
permalink: /articles/
lang: ko
page_id: articles
---

<p class="page-description">기술, 블록체인, 소프트웨어 엔지니어링과 관련한 생각과 배움을 기록합니다.</p>

<hr />

{% for post in site.posts %}
  {% if post.tags contains 'Article' %}
  <article class="post">
    <header class="post-header">
      <time class="post-date" datetime="{{ post.date | date: "%Y-%m-%d" }}">{{post.date | date: "%Y년 %-m월 %-d일" }}</time>
      <h2 class="post-title"><a href="{{ site.baseurl }}{{ post.url }}" rel="bookmark">{{post.title}}</a></h2>
      <div class="post-meta">
        작성자 <span class="post-author">{{ site.data[site.active_lang].author.name | default: site.data.author.name }}</span>{% if post.tags.size > 0 %}<span
          class="post-tags"> 태그
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
      <p class="read-more"><a href="{{ site.baseurl }}{{ post.url }}" class="read-more-link">계속 읽기 &rarr;</a>
      </p>
      {% else %}
      {{ post.content }}
      {% endif %}
    </div><!-- .post-content -->
  </article><!-- .post -->
  {% endif %}
{% endfor %}

