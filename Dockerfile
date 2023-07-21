# Empezar con una imagen base de Ruby
FROM ruby:3.2.1

# Instalar dependencias
RUN apt-get update -qq && apt-get install -y postgresql-client

# Establecer el directorio de trabajo en /myapp
WORKDIR /myapp

# Copiar el Gemfile y el Gemfile.lock
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

# Instalar las gemas
RUN bundle install

# Copiar el resto del código de la aplicación
COPY . /myapp

# Exponer el puerto en el que se ejecutará la aplicación
EXPOSE 3000
