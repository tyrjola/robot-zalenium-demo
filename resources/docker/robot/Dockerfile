FROM python:3.6

RUN groupadd -rf robot && useradd -g robot --create-home --shell /bin/bash robot

WORKDIR /home/robot/test

ADD test/robot ./robot
ADD test/variables.py .
ADD test/requirements.txt .
ADD test/run_tests.sh .
ADD resources/scripts/wait-for-selenium.sh .

RUN pip install -r requirements.txt

RUN chown -R robot:robot /home/robot

USER robot

ENTRYPOINT ./wait-for-selenium.sh ${SELENIUM_URL} ./run_tests.sh
