
#
# Switched from Alpine as per the Pandas-related advice 
# at https://stackoverflow.com/a/60118019/196073
#
FROM python:3

#
# Clone the latest Twint version and build it.
# This is recommended as per their current README.
#
WORKDIR /twint
RUN git clone --depth=1 https://github.com/twintproject/twint.git . && \
	pip3 install . -r requirements.txt

#
# Install SQLAlchemy for running any Python scripts within the container
#
RUN pip install sqlalchemy

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]


