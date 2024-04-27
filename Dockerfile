FROM python:3.9
RUN git clone https://github.com/myshell-ai/MeloTTS.git
WORKDIR /MeloTTS
RUN pip install -e .
RUN python -m unidic download
WORKDIR /
COPY . .
RUN pip install -r requirements.txt
ENV DEFAULT_SPEED=1
ENV DEFAULT_LANGUAGE=EN
ENV DEFAULT_SPEAKER_ID=EN-US
# EXPOSE 8080
CMD ["python", "app.py"]
