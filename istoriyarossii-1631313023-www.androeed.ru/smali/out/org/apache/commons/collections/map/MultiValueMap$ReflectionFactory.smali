.class Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;
.super Ljava/lang/Object;
.source "MultiValueMap.java"

# interfaces
.implements Lorg/apache/commons/collections/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/MultiValueMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectionFactory"
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot instantiate class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;->clazz:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
