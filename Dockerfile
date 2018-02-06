FROM ruby:2.3

MAINTAINER Felipe Rodrigues <felipe_rodriguesx@hotmail.com>

ENV app_path /opt/ambiente_de_automacao/
WORKDIR ${app_path}

COPY Gemfile* ${app_path}

RUN set -x \
&& apt-get update \
&& apt-get install -y wget libfontconfig1 \
&& rm -rf /var/lib/apt/lists/* \
&& wget -O /tmp/phantomjs-2.1.1-linux-x86_64.tar.bz2 https://github.com/Medium/phantomjs/releases/download/v2.1.1/phantomjs-2.1.1-linux-x86_64.tar.bz2 \
&& apt-get remove -y wget \
&& md5sum /tmp/phantomjs-2.1.1-linux-x86_64.tar.bz2 \
| grep -q "1c947d57fce2f21ce0b43fe2ed7cd361" \
&& tar -xjf /tmp/phantomjs-2.1.1-linux-x86_64.tar.bz2 -C /tmp \
&& rm -rf /tmp/phantomjs-2.1.1-linux-x86_64.tar.bz2 \
&& mv /tmp/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs \
&& rm -rf /tmp/phantomjs-2.1.1-linux-x86_64 \
&& gem install bundler \
&& bundle install


COPY . ${app_path}

ENTRYPOINT ["bundle", "exec", "cucumber"]
