---
layout: page
title: Other
titlebar: Other
subtitle: <span class="mega-octicon octicon-calendar"></span>&nbsp;&nbsp;专题系列： &nbsp;&nbsp; <a href ="/arch.html"><font color="#1A0DAB">架构</font></a>&nbsp;&nbsp; <a href ="/life.html"><font color="#EB9439">故事</font></a>&nbsp;&nbsp; <a href ="/docker.html"><font color="#1E90FF">Docker</font></a>
menu: other
css: ['blog-page.css']
permalink: /other
---

<div class="row">

    <div class="col-md-12">

        <ul id="posts-list">
            {% for post in site.posts %}
                {% if post.category=='other' or post.category=='other' or post.keywords contains 'other' %}
                <li class="posts-list-item">
                    <div class="posts-content">
                        <span class="posts-list-meta">{{ post.date | date: "%Y-%m-%d" }}</span>
                        <a class="posts-list-name bubble-float-left" href="{{ post.url }}">{{ post.title }}</a>
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