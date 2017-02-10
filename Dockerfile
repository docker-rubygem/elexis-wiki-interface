FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.5.3

RUN gem install elexis-wiki-interface --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["wiki_pull"]
CMD ["--help"]
