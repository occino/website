#####################################################################
#                            Build Stage                            #
#####################################################################
FROM hugomods/hugo:dart-sass-go-git as builder

# Base URL
ARG HUGO_BASEURL=
ENV HUGO_BASEURL=${HUGO_BASEURL}

# Build site
COPY . /src
WORKDIR /src

RUN mkdir -p /src/themes/hugo-theme-nightfall
RUN git clone https://github.com/lordmathis/hugo-theme-nightfall.git /src/themes/hugo-theme-nightfall

# Replace below build command at will.
RUN hugo --minify
# Set the fallback 404 page if defaultContentLanguageInSubdir is enabled,
# please replace the `en` with your default language code.
# RUN cp ./public/en/404.html ./public/404.html

#####################################################################
#                            Final Stage                            #
#####################################################################
FROM hugomods/hugo:nginx
# Copy the generated files to keep the image as small as possible.
COPY --from=builder /src/public /site
