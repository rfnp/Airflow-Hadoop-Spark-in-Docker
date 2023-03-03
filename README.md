# Airflow-Hadoop-Spark-in-Docker
Run Airflow, Hadoop, and Spark in Docker

If you encounter problems regarding dags/ logs/ or plugins/ (refer to this https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html) when running Airflow containers, please change the permission of those directories to 775 or 777 (if using 775 still run into problem). In my case, I had to personally changed logs directory to permissions 777.

The .env is similar to the directory problem, my Airflow UID to be set to 0 (root), if you have no problem you may change it to be the same as the link above

To run this simply type:
> ./run_cluster.sh

Or if you want to manually run it 1 by 1:
> docker network create hadoop_network
> docker build -t hadoop-base:3.3.1 -f Dockerfile-hadoop .
> docker-compose -f docker-compose-hadoop.yml up -d
> cd airflow && ./run_airflow.sh && cd ..
> docker-compose -f docker-compose-airflow.yml up -d

To stop it just run:
> ./stop_cluster.sh
