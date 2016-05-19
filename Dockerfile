FROM thubo/texlive:latest

RUN tlmgr update --self && tlmgr update --all

RUN groupadd -g 1000 latex && useradd -u 1000 -g latex latex
RUN apt-get install -y python-pygments
USER latex
ADD latexmkrc /home/latex/.latexmkrc

WORKDIR /data
ENTRYPOINT ["latexmk"]
CMD ["-help"]
