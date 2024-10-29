FROM vllm/vllm-openai:v0.6.3.post1

WORKDIR /app

ENV PDM_CHECK_UPDATE=false
COPY pyproject.toml pdm.lock .python-version ./
COPY ./.model/phi-3.5 ./.model/phi-3.5
COPY ./src/ ./src/
COPY ./tests/ ./tests/
COPY ./scripts/docker/ ./scripts/docker/

RUN bash ./scripts/docker/setup.sh