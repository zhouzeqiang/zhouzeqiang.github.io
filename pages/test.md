---
layout: page
title: 这是一个测试页面
titlebar: test
subtitle: <span class="mega-octicon octicon-calendar"></span>&nbsp;&nbsp;专题系列： &nbsp;&nbsp; <a href ="http://www.ityouknow.com/arch.html"><font color="#1A0DAB">架构</font></a>&nbsp;&nbsp; <a href ="http://www.ityouknow.com/life.html"><font color="#EB9439">故事</font></a>&nbsp;&nbsp; <a href ="http://www.ityouknow.com/docker.html"><font color="#1E90FF">Docker</font></a>
menu: test
css: ['blog-page.css']
permalink: /test
---

<div class="row">

    <div class="col-md-12">

        <ul id="posts-list">
            {% for post in site.posts %}
                {% if post.category=='test' or post.category=='test' or post.keywords contains 'test' %}
                <li class="posts-list-item">
                    <div class="posts-content">
                        <span class="posts-list-meta">{{ post.date | date: "%Y-%m-%d" }}</span>
                        <a class="posts-list-name bubble-float-left" href="{{ site.url }}{{ post.url }}">{{ post.title }}</a>
                        <span class='circle'></span>
                    </div>
                </li>
                {% endif %}
            {% endfor %}
        </ul> 

        <!-- Pagination -->
        {% include pagination.html %}

        <!-- Comments -->
       <div class="comment">
         {% include comments.html %}
       </div>
    </div>

</div>
<script>
    $(document).ready(function(){

        // Enable bootstrap tooltip
        $("body").tooltip({ selector: '[data-toggle=tooltip]' });

    });
</script>