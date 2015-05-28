# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  window.swaggerUi = new SwaggerUi(
    url: "/v1/swagger_doc"
    dom_id: "swagger-ui-container"
    supportedSubmitMethods: [
      "get"
      "post"
      "put"
      "delete"
    ]
    onComplete: (swaggerApi, swaggerUi) ->
      log "Loaded SwaggerUI"
      if typeof initOAuth is "function"
        initOAuth
          clientId: "your-client-id"
          realm: "your-realms"
          appName: "your-app-name"

      $("pre code").each (i, e) ->
        hljs.highlightBlock e
        return

      return

    onFailure: (data) ->
      log "Unable to Load SwaggerUI"
      return

    docExpansion: "none"
    sorter: "alpha"
  )
  $("#input_apiKey").change ->
    key = $("#input_apiKey")[0].value
    log "key: " + key
    if key and key.trim() isnt ""
      log "added key " + key
      window.authorizations.add "key", new ApiKeyAuthorization("api_key", key, "query")
    return
  window.swaggerUi.load()
  return
