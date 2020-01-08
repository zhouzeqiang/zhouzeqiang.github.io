FROM ruby:latest

#更换ruby镜像
RUN gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/

#安装必要的组件
RUN gem install jekyll bundler

# 将当前文件下的文件复制到docker中
COPY . /blog/
RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.com

#进入docker文件下，执行bundler install
RUN cd /blog \
         && bundler install

#用来存放编译后的Jekyll网站码
VOLUME /var/jekyll/www/html

#工作目录为blog
WORKDIR /blog

#运行jekyll
#CMD bundle exec jekyll serve --host 0.0.0.0

#构建代码到指定文件夹
CMD bundle exec jekyll bulid --destination=/var/jekyll/www/html
