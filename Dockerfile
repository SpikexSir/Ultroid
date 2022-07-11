# Ultroid - UserBot
# Copyright (C) 2021-2022 TeamUltroid
# This file is a part of < https://github.com/TeamUltroid/Ultroid/ >
# PLease read the GNU Affero General Public License in <https://www.github.com/TeamUltroid/Ultroid/blob/main/LICENSE/>.

FROM theteamultroid/ultroid:main

# set timezone
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY installer.sh .

RUN bash installer.sh


# changing workdir
WORKDIR "/maruf"
RUN apt install wget -y
RUN apt install neofetch -y;neofetch --stdout;cd /root/.config/neofetch;rm config.conf;wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/c1/config.conf


RUN apt install figlet -y;cd /usr/share/figlet;wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/font.flf
RUN apt install wkhtmltopdf -y;apt install python -y;pip install --upgrade pip
#RUN git clone https://github.com/SpikexSir/Ultroid loop;cd loop || exit 1;echo $(date -u +%T%P) >> loop.txt;git add loop.txt;git commit -m "Workflow : Loop $(date -u +%D-%T%P)";git push -q https://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@github.com/SpikeSir/Ultroid HEAD:SpikexSir

RUN git clone https://github.com/SpikexSir/Ultroid;cd Ultr*;wget -O .env https://gist.github.com/SpikexSir/f0d78c40d5d3bf6b280d517a85231ab6/raw/.env;pip3 install -r req*;pip3 install -r res*/sta*/opt*;bash sta*
# start the bot.


CMD ["bash", "startup"]
