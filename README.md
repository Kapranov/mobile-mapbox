REAST API application use Mapbox APIs.
-------------------------------------

To create a functional, allowing to build
a route between two points throught a third-party
service and send it to the mobile application.

1. Adding points (places)
  * Create simple web page that will be able
     to add / delete points (places).
  * Attributes places will be:
    * to name
    * latitude
    * longtude

2. Building route through a third-party service Mapbox.
  * Using these points (places) you need to build a path
    between them to do this, use Mapbox
    [Mapbox APIs](http://www.mapbox.com/developers/api).
    These you can create an account to get the APIs key.

3. API send to data to the mobile client.
  * Format JSON APIs comes from the mobile team.

```json

  {
    "route": {
      "id": "1",
      "places": [
        {
          "id": "1",
          "lat": "48.00",
          "lon": "37.00"
        },
        {
          "id": "2",
          "lat": "49.00",
          "lon": "38.00"
        }
      ],
      "coordinates": [
        {
          "lat": "48.00",
          "lon": "48.50"
        },
        {
          "lat": "49.00",
          "lon": "49.50"
        }
      ]
    }
  }

```

Launch the app
```bash
  ./server.sh
```

Create a new place
```bash
curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '{"data": {"type":"places", "attributes":{"name":"St Pancras Station, London", "lat":"51.5303972", "lon":"-0.1238579"}}}' http://212.26.132.49:2273/places
```

```bash
curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '{"data": {"type":"coordinates", "attributes":{"lat":"51.4778185", "lon":"-0.0012777"}}}' http://212.26.132.49:2273/coordinates
```

```bash
curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '{"data": {"type":"routes", "relationships":{"place":{"data":{"type":"places", "id":"1"}},"coordinate":{"data":{"type":"coordinates", "id":"1"}}}}}' http://212.26.132.49:2273/routes
```

You should get something like this back
```
HTTP/1.1 400 Bad Request 
Content-Type: text/html; charset=utf-8
Content-Length: 0
X-Request-Id: f360b6b9-a15f-4261-a7cd-d4c3452f2eaf
X-Runtime: 0.018925
Server: WEBrick/1.3.1 (Ruby/2.2.2/2015-04-13)
Date: Tue, 11 Aug 2015 15:14:32 GMT
Connection: Keep-Alive
```

##### 11 August 2015 Oleg G.kapranov
