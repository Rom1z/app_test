.class public Lorg/apache/commons/beanutils/ResultSetIterator;
.super Ljava/lang/Object;
.source "ResultSetIterator.java"

# interfaces
.implements Lorg/apache/commons/beanutils/DynaBean;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/beanutils/DynaBean;",
        "Ljava/util/Iterator<",
        "Lorg/apache/commons/beanutils/DynaBean;",
        ">;"
    }
.end annotation


# instance fields
.field protected current:Z

.field protected dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

.field protected eof:Z


# direct methods
.method constructor <init>(Lorg/apache/commons/beanutils/ResultSetDynaClass;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->current:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->eof:Z

    iput-object p1, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

    return-void
.end method


# virtual methods
.method protected advance()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->current:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->eof:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    iput-boolean v1, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->current:Z

    iput-boolean v2, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->eof:Z

    goto :goto_1f

    :cond_1b
    iput-boolean v2, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->current:Z

    iput-boolean v1, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->eof:Z

    :cond_1f
    :goto_1f
    return-void
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "FIXME - mapped properties not currently supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    if-eqz v0, :cond_2f

    :try_start_8
    iget-object v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->getObjectFromResultSet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): SQLException: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "FIXME - indexed properties not currently supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "FIXME - mapped properties not currently supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDynaClass()Lorg/apache/commons/beanutils/DynaClass;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

    return-object v0
.end method

.method public hasNext()Z
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/ResultSetIterator;->advance()V

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->eof:Z
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_5} :catch_8

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasNext():  SQLException:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/ResultSetIterator;->next()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/commons/beanutils/DynaBean;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/ResultSetIterator;->advance()V

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->eof:Z

    if-nez v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->current:Z

    return-object p0

    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "next():  SQLException:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "FIXME - mapped operations not currently supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "FIXME - indexed properties not currently supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    if-eqz v0, :cond_32

    :try_start_8
    iget-object v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateObject(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): SQLException: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "FIXME - mapped properties not currently supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
