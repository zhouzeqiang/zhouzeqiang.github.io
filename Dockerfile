FROM ruby:latest

#定义时区参数
ENV TZ=Asia/Shanghai

#设置时区
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo '$TZ' > /etc/timezone

#设置编码
ENV LANG C.UTF-8

#更换ruby镜像
RUN gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/

#安装必要的组件
RUN gem install jekyll bundler

# 将当前文件下的文件复制到docker中
COPY . /blog/

# gem install加速
RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.com

#用来存放编译后的Jekyll网站码
#VOLUME /var/jekyll/www/html

#工作目录为blog
WORKDIR /blog

#进入docker文件下，执行bundler install
RUN bundler install

#容器启动后运行
#构建代码到指定文件夹
#CMD bundle exec jekyll build --destination=/var/jekyll/www/html

CMD bundle exec jekyll serve

