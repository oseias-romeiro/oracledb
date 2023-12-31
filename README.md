# Oracle Database
Oracle Database Docker image with Oracle Linux. The image includes Oracle Linux 7.9 and Oracle Database 19. You can find the source code for this image on GitHub at [oracledb.git](https://github.com/oseias-romeiro/oracledb.git).

## Usage

To use the Oracle Database image, follow these steps:

1. Push the Docker image to your local Docker registry:

   ```shell
   docker push oseias0romeiro/oracledb:1.0
   ```

2. Run a container based on the Oracle Database image:

   ```shell
   docker run -it --name oradb19 --privileged oseias0romeiro/oracledb:1.0
   ```

   This command will start the installation of the database using shell scripts available in the repository. You can customize your setup using these scripts.

## Post-Installation

If you want to access the database externally, you need to perform the following steps:

1. Create a `tnsnames` file to configure the database access.

2. Export the required ports when running the Docker container:

   ```shell
   docker run -it --name oradb19 --privileged -p <local-port>:1521 oseias0romeiro/oracledb:1.0
   ```

   Replace `<local-port>` with the desired port on your host machine.

## Build local image
You can customize scripts installation in shell scripts.

- Download [Oracle Database 19c](https://www.oracle.com/database/technologies/oracle19c-linux-downloads.html) and move it to this directory
- Build image and run container
```sh
docker build . -t oradb19
docker run -it --name oradb19 --privileged -p <local-port>:1521 oradb19
```

----
> ### That's it! Feel free to collaborate with the repository and make improvements.
