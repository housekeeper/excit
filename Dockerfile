FROM circleci/elixir:1.8.1-node-browsers

USER circleci

# iex history
ENV ERL_AFLAGS="-kernel shell_history enabled"

ENV APP_HOME=/home/circleci/repo \
    LD_LIBRARY_PATH=/usr/local/lib

# set home directory
RUN mkdir -p ${APP_HOME}
WORKDIR ${APP_HOME}
ADD --chown=circleci:circleci . ${APP_HOME}/

# install hex and rebar
RUN \
  mix local.hex --force \
  && mix local.rebar --force \
  && mix deps.get \
  && mix deps.compile \
  && mix compile