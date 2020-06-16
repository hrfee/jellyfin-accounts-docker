FROM python:3.8.2-buster

RUN pip3.8 install jellyfin-accounts

RUN sed -i 's#id="pwrJfPath" placeholder="Folder"#id="pwrJfPath" value="/jf" disabled#g' /usr/local/lib/python3.8/site-packages/jellyfin_accounts/data/templates/setup.html

CMD [ "python3.8", "/usr/local/bin/jf-accounts", "-d", "/data" ]
