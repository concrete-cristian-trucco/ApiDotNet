FROM microsoft/dotnet:latest
RUN mkdir -p /usr/src/

COPY pocbbm /usr/src/pocbbm

WORKDIR /usr/src/pocbbm/source/Poc/Poc.IB.Api/
RUN chmod 777 /usr/src/pocbbm/source/Poc/Poc.IB.Api/

RUN dotnet restore
RUN dotnet build

#Persisntencia de dados
VOLUME dados:/usr/src/pocbbm/source/Poc/Poc.IB.Api/

# Expor as portas da APi Ted
EXPOSE 52828
EXPOSE 52827
#EXPOSE 54665
#EXPOSE 54664

CMD [ "dotnet", "run"]
