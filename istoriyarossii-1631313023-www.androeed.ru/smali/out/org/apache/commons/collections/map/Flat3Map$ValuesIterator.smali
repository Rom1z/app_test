.class Lorg/apache/commons/collections/map/Flat3Map$ValuesIterator;
.super Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;
.source "Flat3Map.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValuesIterator"
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/Flat3Map;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;-><init>(Lorg/apache/commons/collections/map/Flat3Map;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->next()Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$ValuesIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
