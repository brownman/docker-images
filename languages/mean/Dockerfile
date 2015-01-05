FROM dockerfile/nodejs

MAINTAINER Matthias Luebken, matthias@catalyst-zero.com

WORKDIR /home/mean

# Install Mean.JS Prerequisites
RUN npm install -g grunt-cli bower mean-cli
RUN bash -c 'echo -e "myApp\n" | mean init'
RUN bash -c 'cd myApp;sudo npm install -g; npm link; mean status;'

# Install Mean.JS packages
#ADD package.json /home/mean/package.json
#RUN npm install

# Manually trigger bower. Why doesnt this work via npm install?
#ADD .bowerrc /home/mean/.bowerrc
#ADD bower.json /home/mean/bower.json
#RUN bower install --config.interactive=false --allow-root

# Make everything available for start
#ADD . /home/mean

# currently only works for development
ENV NODE_ENV development

# Port 3000 for server
# Port 35729 for livereload
EXPOSE 3000 35729
CMD ["grunt"]
