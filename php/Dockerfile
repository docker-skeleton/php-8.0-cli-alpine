FROM php:8.0.9-alpine
COPY --from=composer:2.1.5 /usr/bin/composer /usr/bin/composer

ARG UID

RUN apk update && \
    apk --no-cache add \
#    TODO add tmux, zsh ~
    openssh-client \
    libzip-dev \
    git \
    autoconf \
    g++ \
    make && \
    # remove tmp trash from image
    rm -rf /tmp/ && \
    adduser \
        --disabled-password \
        -u $UID \
        nonroot

USER nonroot