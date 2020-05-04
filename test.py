from diagrams import Cluster, Diagram
from diagrams.aws.compute import ECS
from diagrams.aws.database import ElastiCache, RDS, DDB
from diagrams.aws.network import ELB
from diagrams.aws.network import Route53

with Diagram("test", show=False, filename="/imgs/test"):
    dns = Route53("dns")
    lb = ELB("lb")

    with Cluster("ECS"):
        svc_group = [ECS("svc1"),
                     ECS("svc2"),
                     ECS("svc3")]

    with Cluster("DynamoDB"):
        db_master = DDB("tableName")

    dns >> lb >> svc_group
    svc_group >> db_master
