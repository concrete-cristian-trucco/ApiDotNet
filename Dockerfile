FROM microsoft/dotnet:latest

# Create directory for the app source code
RUN mkdir -p /usr/src/

COPY pocbbm /usr/src/pocbbm
# Copy the source and restore dependencies
#COPY . /usr/src/books
WORKDIR /usr/src/pocbbm/source/Poc/Poc.IB.Api/
RUN dotnet restore 
# Expose the port and start the app
EXPOSE 80
EXPOSE 52827
EXPOSE 52828
CMD [ "dotnet", "run"]
