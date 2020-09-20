```
version: "3"
services:
  forsaken-mail:
    image: hclasmn/forsaken-mail
    container_name: forsaken-mail
    ports:
      - "8084:3000"
      - "25:25"
    restart: always
```
