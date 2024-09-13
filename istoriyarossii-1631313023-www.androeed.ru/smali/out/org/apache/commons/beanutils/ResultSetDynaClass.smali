.class public Lorg/apache/commons/beanutils/ResultSetDynaClass;
.super Lorg/apache/commons/beanutils/JDBCDynaClass;
.source "ResultSetDynaClass.java"

# interfaces
.implements Lorg/apache/commons/beanutils/DynaClass;


# instance fields
.field protected resultSet:Ljava/sql/ResultSet;


# direct methods
.method public constructor <init>(Ljava/sql/ResultSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/ResultSetDynaClass;-><init>(Ljava/sql/ResultSet;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/sql/ResultSet;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/ResultSetDynaClass;-><init>(Ljava/sql/ResultSet;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/sql/ResultSet;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/beanutils/JDBCDynaClass;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/ResultSetDynaClass;->resultSet:Ljava/sql/ResultSet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/beanutils/ResultSetDynaClass;->resultSet:Ljava/sql/ResultSet;

    iput-boolean p2, p0, Lorg/apache/commons/beanutils/ResultSetDynaClass;->lowerCase:Z

    invoke-virtual {p0, p3}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->setUseColumnLabel(Z)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->introspect(Ljava/sql/ResultSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/beanutils/JDBCDynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;
    .registers 2

    invoke-super {p0, p1}, Lorg/apache/commons/beanutils/JDBCDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/beanutils/JDBCDynaClass;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectFromResultSet(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->getObject(Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getResultSet()Ljava/sql/ResultSet;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/ResultSetDynaClass;->resultSet:Ljava/sql/ResultSet;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/beanutils/DynaBean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/beanutils/ResultSetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/beanutils/ResultSetIterator;-><init>(Lorg/apache/commons/beanutils/ResultSetDynaClass;)V

    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception v0

    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load column class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic newInstance()Lorg/apache/commons/beanutils/DynaBean;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/commons/beanutils/JDBCDynaClass;->newInstance()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUseColumnLabel(Z)V
    .registers 2

    invoke-super {p0, p1}, Lorg/apache/commons/beanutils/JDBCDynaClass;->setUseColumnLabel(Z)V

    return-void
.end method
