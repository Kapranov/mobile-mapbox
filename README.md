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
curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d
```


##### 11 August 2015 Oleg G.kapranov
