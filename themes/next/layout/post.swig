{% extends '_layout.swig' %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %}{{ page.title }} | {{ title }}{% endblock %}

{% block page_class %}page-post-detail{% endblock %}

{% block content %}

  <div id="posts" class="posts-expand">
    {{ partial('_macro/post.swig', {post: page}) }}
  </div>

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(true) }}
{% endblock %}

{% block script_extra %}
  {% include '_scripts/pages/post-details.swig' %}
{% endblock %}

<div class="post-spread">
  {% if theme.jiathis %}
    {% include '_partials/share/jiathis.swig' %}
  {% elseif theme.baidushare %}
    {% include '_partials/share/baidushare.swig' %}
  {% elseif theme.add_this_id %}
    {% include '_partials/share/add-this.swig' %}
  {% elseif theme.duoshuo_shortname and theme.duoshuo_share %}
    {% include '_partials/share/duoshuo_share.swig' %}
    {% elseif theme.sharesdk %}
    {% include '_partials/share/sharesdk.swig' %}
  {% endif %}
</div>

