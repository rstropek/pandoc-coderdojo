FROM pandoc/latex:latest

RUN tlmgr list
RUN tlmgr update --self && \
    tlmgr install \
    wrapfig \
    enumitem \
    titlesec \
    ragged2e \
    tcolorbox \
    fontawesome5 \
    changepage

    RUN apk add --update font-carlito exiftool \
        && rm -rf /var/cache/apk/*
