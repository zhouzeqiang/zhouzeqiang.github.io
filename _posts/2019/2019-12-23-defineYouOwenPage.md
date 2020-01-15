---
layout: post
title:  Jekyll如何自定义页面地址
#no-post-nav: true
category: other
tags: [other]
copyright: other
excerpt: Jekyll如何自定义页面地址
keywords: other,java
---

# 自定义页面的步骤：

## 1. 首先在pages文件夹下新建test.md,他的名字就是你url的地址。包含以下内容:

```html
    {% raw %}
    ---
    layout: page
    title: 这是一个测试页面
    titlebar: test
    subtitle: <span class="mega-octicon octicon-calendar"></span>&nbsp;&nbsp;专题系列： &nbsp;&nbsp; <a href ="/arch.html"><font color="#1A0DAB">架构</font></a>&nbsp;&nbsp; <a href ="/life.html"><font color="#EB9439">故事</font></a>&nbsp;&nbsp; <a href ="/docker.html"><font color="#1E90FF">Docker</font></a>
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
     {% endraw %}
```

## 2.然后在你的文章页面设置

```html
    ---
    layout: post
    title:  这个是我的测试页面
    no-post-nav: true #是否根据二级标题生成目录
    category: test #这里和我们新建页面名称一致
    tags: [test,java] #标签，可以多个
    copyright: test #这个随便填写
    excerpt: 测试页面 #摘要
    keywords: test,java #关键字根据你的需求来写
    lock: need #加锁，只给一部分看
    ---
```

## 3.在浏览器输入http://localhost:4000/test.html就可以看到相应的效果了

**<font color='red'>注意使用标签{ % raw % }{ % endraw % }阻止代码块解析。</font>**