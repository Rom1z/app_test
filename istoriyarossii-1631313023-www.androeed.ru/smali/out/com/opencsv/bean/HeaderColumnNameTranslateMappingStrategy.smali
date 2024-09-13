.class public Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;
.super Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;
.source "HeaderColumnNameTranslateMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/HeaderColumnNameMappingStrategy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final columnMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getColumnMapping()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

    return-object v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->header:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_16

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

    iget-object v1, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->header:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return-object p1
.end method

.method public setColumnMapping(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_2d
    return-void
.end method
