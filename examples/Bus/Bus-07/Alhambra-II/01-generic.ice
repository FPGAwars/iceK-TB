{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "3d382f9c-6806-4f75-91bb-2b5e40ec4351",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[6:0]",
            "pins": [
              {
                "index": "6",
                "name": "LED6",
                "value": "38"
              },
              {
                "index": "5",
                "name": "LED5",
                "value": "39"
              },
              {
                "index": "4",
                "name": "LED4",
                "value": "41"
              },
              {
                "index": "3",
                "name": "LED3",
                "value": "42"
              },
              {
                "index": "2",
                "name": "LED2",
                "value": "43"
              },
              {
                "index": "1",
                "name": "LED1",
                "value": "44"
              },
              {
                "index": "0",
                "name": "LED0",
                "value": "45"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 832,
            "y": 40
          }
        },
        {
          "id": "00455c5d-62f0-4ef0-8fdc-9d26105b2a61",
          "type": "basic.constant",
          "data": {
            "name": "7-Bits value",
            "value": "'h7F",
            "local": false
          },
          "position": {
            "x": 568,
            "y": 40
          }
        },
        {
          "id": "b4517b7b-4304-495d-b23e-be5a5b7cdd88",
          "type": "basic.info",
          "data": {
            "info": "## Changing the state of 7 LEDs\n\nOutput the value given by the parameter. This value  \nwill turn on or off the LEDs",
            "readonly": true
          },
          "position": {
            "x": 488,
            "y": -96
          },
          "size": {
            "width": 424,
            "height": 88
          }
        },
        {
          "id": "30256626-99c7-4d57-ad6e-863ca3537a00",
          "type": "basic.info",
          "data": {
            "info": "Values for testing:  \n0-127",
            "readonly": true
          },
          "position": {
            "x": 680,
            "y": 8
          },
          "size": {
            "width": 184,
            "height": 56
          }
        },
        {
          "id": "70f0ac44-59b9-4d71-b534-75a8d8c54e22",
          "type": "2504373f931918e3bf9164756e98b19f168e1fdf",
          "position": {
            "x": 568,
            "y": 136
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "00455c5d-62f0-4ef0-8fdc-9d26105b2a61",
            "port": "constant-out"
          },
          "target": {
            "block": "70f0ac44-59b9-4d71-b534-75a8d8c54e22",
            "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
          }
        },
        {
          "source": {
            "block": "70f0ac44-59b9-4d71-b534-75a8d8c54e22",
            "port": "e107a09c-332c-4e64-b4a9-93dc1f7737a9"
          },
          "target": {
            "block": "3d382f9c-6806-4f75-91bb-2b5e40ec4351",
            "port": "in"
          },
          "size": 7
        }
      ]
    }
  },
  "dependencies": {
    "2504373f931918e3bf9164756e98b19f168e1fdf": {
      "package": {
        "name": "7-bits-gen-constant",
        "version": "0.0.2",
        "description": "Generic: 7-bits generic constant (0-127)",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22145.608%22%20height=%22247.927%22%20viewBox=%220%200%20136.50729%20232.43134%22%3E%3Cg%20style=%22line-height:0%25;-inkscape-font-specification:'Ubuntu%20Mono'%22%3E%3Cpath%20d=%22M56.012%20146.905q9.055%206.708%2020.459%2017.105%2011.404%2010.062%2022.472%2021.8%2011.403%2011.74%2021.465%2024.15%2010.062%2012.074%2016.1%2022.471h-32.87q-6.372-10.397-15.763-21.13-9.392-11.068-20.124-21.13-10.398-10.062-21.13-18.447-10.398-8.385-18.783-14.087v74.794H0V4.695L27.838%200v141.874q18.447-16.1%2036.894-31.863%2018.447-16.1%2033.205-33.205h32.533q-14.422%2017.106-34.881%2035.217-20.124%2018.112-39.577%2034.882z%22%20style=%22line-height:1.25%22%20font-size=%22335.399%22%20font-weight=%22400%22%20font-family=%22Ubuntu%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e107a09c-332c-4e64-b4a9-93dc1f7737a9",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[6:0]",
                "size": 7
              },
              "position": {
                "x": 952,
                "y": 248
              }
            },
            {
              "id": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 728,
                "y": 128
              }
            },
            {
              "id": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
              "type": "basic.code",
              "data": {
                "code": "assign k = VALUE;",
                "params": [
                  {
                    "name": "VALUE"
                  }
                ],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "k",
                      "range": "[6:0]",
                      "size": 7
                    }
                  ]
                }
              },
              "position": {
                "x": 672,
                "y": 248
              },
              "size": {
                "width": 208,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
                "port": "constant-out"
              },
              "target": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "VALUE"
              }
            },
            {
              "source": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "k"
              },
              "target": {
                "block": "e107a09c-332c-4e64-b4a9-93dc1f7737a9",
                "port": "in"
              },
              "size": 7
            }
          ]
        }
      }
    }
  }
}