.class final Lorg/apache/commons/beanutils/WrapDynaClass$1;
.super Lorg/apache/commons/beanutils/ContextClassLoaderLocal;
.source "WrapDynaClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/beanutils/WrapDynaClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/beanutils/ContextClassLoaderLocal<",
        "Ljava/util/Map<",
        "Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;",
        "Lorg/apache/commons/beanutils/WrapDynaClass;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/WrapDynaClass$1;->initialValue()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;",
            "Lorg/apache/commons/beanutils/WrapDynaClass;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    return-object v0
.end method
