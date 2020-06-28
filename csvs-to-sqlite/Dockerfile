FROM python:3.8.3-slim-buster as build

RUN pip install csvs-to-sqlite==1.0.0

FROM python:3.8.3-slim-buster

# Copy python dependencies and spatialite libraries
COPY --from=build /usr/local/lib/ /usr/local/lib/
# Copy executables
COPY --from=build /usr/local/bin /usr/local/bin

ENV LD_LIBRARY_PATH=/usr/local/lib

WORKDIR /app

CMD ["csvs-to-sqlite"]
