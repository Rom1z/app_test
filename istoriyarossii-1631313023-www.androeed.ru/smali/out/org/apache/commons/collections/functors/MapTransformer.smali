.class public final Lorg/apache/commons/collections/functors/MapTransformer;
.super Ljava/lang/Object;
.source "MapTransformer.java"

# interfaces
.implements Lorg/apache/commons/collections/Transformer;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xbf7d4c78427030bL


# instance fields
.field private final iMap:Ljava/util/Map;


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/functors/MapTransformer;->iMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;
    .registers 2

    if-nez p0, :cond_5

    sget-object p0, Lorg/apache/commons/collections/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object p0

    :cond_5
    new-instance v0, Lorg/apache/commons/collections/functors/MapTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/MapTransformer;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/functors/MapTransformer;->iMap:Ljava/util/Map;

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/functors/MapTransformer;->iMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
