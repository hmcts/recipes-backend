 # renovate: datasource=github-releases depName=microsoft/ApplicationInsights-Java
ARG APP_INSIGHTS_AGENT_VERSION=3.6.2
ARG PLATFORM=""
FROM hmctspublic.azurecr.io/base/java${PLATFORM}:21-distroless

COPY build/libs/recipes-backend.jar /opt/app/
COPY lib/applicationinsights.json /opt/app/

CMD ["recipes-backend.jar"]