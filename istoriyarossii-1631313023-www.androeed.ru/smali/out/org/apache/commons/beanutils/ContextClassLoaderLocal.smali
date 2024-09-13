.class public Lorg/apache/commons/beanutils/ContextClassLoaderLocal;
.super Ljava/lang/Object;
.source "ContextClassLoaderLocal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private globalValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private globalValueInitialized:Z

.field private final valueByClassLoader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->valueByClassLoader:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->globalValueInitialized:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->valueByClassLoader:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_3c

    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->valueByClassLoader:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_29

    iget-object v2, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->valueByClassLoader:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->initialValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->valueByClassLoader:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_29} :catch_2b
    .catchall {:try_start_6 .. :try_end_29} :catchall_3c

    :cond_29
    monitor-exit p0

    return-object v1

    :catch_2b
    :cond_2b
    :try_start_2b
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->globalValueInitialized:Z

    if-nez v0, :cond_38

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->initialValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->globalValue:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->globalValueInitialized:Z

    :cond_38
    iget-object v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->globalValue:Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_3c

    monitor-exit p0

    return-object v0

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected initialValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized set(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->valueByClassLoader:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->valueByClassLoader:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_15} :catch_17
    .catchall {:try_start_6 .. :try_end_15} :catchall_1e

    monitor-exit p0

    return-void

    :catch_17
    :cond_17
    :try_start_17
    iput-object p1, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->globalValue:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->globalValueInitialized:Z
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unset()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->unset(Ljava/lang/ClassLoader;)V
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_c} :catch_10
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    goto :goto_10

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_10
    :goto_10
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized unset(Ljava/lang/ClassLoader;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->valueByClassLoader:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
