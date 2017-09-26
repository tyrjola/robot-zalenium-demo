FROM python:3.6

RUN groupadd -rf robot && useradd -g robot --create-home --shell /bin/bash robot

WORKDIR /home/robot/test

ADD test/robot ./robot
ADD test/requirements.txt .
ADD test/run_tests.sh .
ADD resources/scripts/wait-for-url.sh .

RUN pip install -r requirements.txt

RUN chown -R robot:robot /home/robot
RUN chmod -R go+w /home/robot/test

USER robot

ENTRYPOINT ./wait-for-url.sh ${SELENIUM_URL} ./run_tests.sh
