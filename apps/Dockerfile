FROM debian:jessie
RUN set -x; \
 	apt-get update \
        && apt-get install -y --no-install-recommends \
            curl \           
            build-essential \
	    python-gevent \
	    python-pip \
            npm \
            python-support \
            python-renderpm \
	    python-dev \    	       	    
	    libffi-dev \
	    libssl-dev \	   	
        && apt-get update \
	&& pip install --upgrade pip 

COPY appy.py /code
WORKDIR /code
RUN pip install -r requirements.txt
CMD ["python", "-m","flask","run","--host=0.0.0.0"]

