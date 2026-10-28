FROM golang:1.22-alpine

WORKDIR /app

# Copie des fichiers du projet
COPY go.mod main.go index.tmpl.html ./

# Compilation de l'application
RUN go build -o quelpoke .

# Variables d'environnement par défaut
ENV ADDR=0.0.0.0 \
    PORT=8080 \
    VERSION=dev

EXPOSE 8080

CMD ["./quelpoke"]