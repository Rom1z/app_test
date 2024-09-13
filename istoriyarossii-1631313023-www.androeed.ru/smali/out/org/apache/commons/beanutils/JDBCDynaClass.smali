.class abstract Lorg/apache/commons/beanutils/JDBCDynaClass;
.super Ljava/lang/Object;
.source "JDBCDynaClass.java"

# interfaces
.implements Lorg/apache/commons/beanutils/DynaClass;
.implements Ljava/io/Serializable;


# instance fields
.field private columnNameXref:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected lowerCase:Z

.field protected properties:[Lorg/apache/commons/beanutils/DynaProperty;

.field protected propertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/beanutils/DynaProperty;",
            ">;"
        }
    .end annotation
.end field

.field private useColumnLabel:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->lowerCase:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->propertiesMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected createDynaProperty(Ljava/sql/ResultSetMetaData;I)Lorg/apache/commons/beanutils/DynaProperty;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->useColumnLabel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    :goto_b
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1b

    :cond_17
    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    iget-boolean v2, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->lowerCase:Z

    if-eqz v2, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    :cond_24
    move-object v2, v0

    :goto_25
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    iget-object v3, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->columnNameXref:Ljava/util/Map;

    if-nez v3, :cond_36

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->columnNameXref:Ljava/util/Map;

    :cond_36
    iget-object v3, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->columnNameXref:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    :try_start_3b
    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_6e

    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getColumnClassName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_60

    :pswitch_47
    new-instance p1, Lorg/apache/commons/beanutils/DynaProperty;

    const-class p2, Ljava/sql/Timestamp;

    invoke-direct {p1, v2, p2}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p1

    :pswitch_4f
    new-instance p1, Lorg/apache/commons/beanutils/DynaProperty;

    const-class p2, Ljava/sql/Time;

    invoke-direct {p1, v2, p2}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p1

    :pswitch_57
    new-instance p1, Lorg/apache/commons/beanutils/DynaProperty;

    const-class p2, Ljava/sql/Date;

    invoke-direct {p1, v2, p2}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_5e
    .catch Ljava/sql/SQLException; {:try_start_3b .. :try_end_5e} :catch_5f

    return-object p1

    :catch_5f
    nop

    :goto_60
    const-class p1, Ljava/lang/Object;

    if-eqz v1, :cond_68

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/JDBCDynaClass;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    :cond_68
    new-instance p2, Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {p2, v2, p1}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p2

    :pswitch_data_6e
    .packed-switch 0x5b
        :pswitch_57
        :pswitch_4f
        :pswitch_47
    .end packed-switch
.end method

.method protected getColumnName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->columnNameXref:Ljava/util/Map;

    if-eqz v0, :cond_12

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->columnNameXref:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_12
    return-object p1
.end method

.method public getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    return-object v0
.end method

.method public getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;
    .registers 3

    if-eqz p1, :cond_b

    iget-object v0, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->propertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/beanutils/DynaProperty;

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No property name specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getObject(Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/JDBCDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/JDBCDynaClass;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Date;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getDate(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object p1

    return-object p1

    :cond_1b
    const-class v1, Ljava/sql/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1

    :cond_28
    const-class v1, Ljava/sql/Time;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getTime(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object p1

    return-object p1

    :cond_35
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected introspect(Ljava/sql/ResultSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    const/4 v2, 0x1

    :goto_e
    if-gt v2, v1, :cond_1c

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/beanutils/JDBCDynaClass;->createDynaProperty(Ljava/sql/ResultSetMetaData;I)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/apache/commons/beanutils/DynaProperty;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/beanutils/DynaProperty;

    iput-object p1, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v0, :cond_3c

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->propertiesMap:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_3c
    return-void
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
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_12
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
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

.method public newInstance()Lorg/apache/commons/beanutils/DynaBean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "newInstance() not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUseColumnLabel(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->useColumnLabel:Z

    return-void
.end method
