FROM pandoc/latex:latest

RUN tlmgr list
RUN tlmgr update --self && \
    tlmgr install \
    wrapfig \
    enumitem \
    titlesec \
    ragged2e \
    tcolorbox

    RUN apk add --update font-carlito \
        && rm -rf /var/cache/apk/*
