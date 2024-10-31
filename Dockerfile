# Step 1: Use the official Rasa image from Docker Hub
FROM rasa/rasa:latest-full

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy all Rasa project files into the Docker container
COPY . /app

# Step 4: (Optional) Train the model during the build
# Uncomment the next line if you want the bot to train each time it builds
# RUN rasa train

# Step 5: Expose the default Rasa port (5005)
EXPOSE 5005

# Step 6: Start the Rasa server with API enabled and allow CORS for frontend integration
CMD ["rasa", "run", "--enable-api", "--cors", "*"]
