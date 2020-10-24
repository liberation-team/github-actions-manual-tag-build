FROM golang:1.14 AS build
WORKDIR /src
COPY . .
RUN ./build.sh

FROM scratch AS bin
COPY --from=build /src/main /
CMD [ "/main" ]