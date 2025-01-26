# Dockerfile
FROM ruby:3.0

# Set the working directory
WORKDIR /app

# Copy the Gemfile and install dependencies
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy the application code
COPY . .

# Expose the port the app runs on
EXPOSE 4567

# Command to run the application
CMD ["ruby", "app.rb", "-o", "0.0.0.0"]
