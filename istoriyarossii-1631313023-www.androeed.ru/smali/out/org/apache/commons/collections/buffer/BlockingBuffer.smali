.class public Lorg/apache/commons/collections/buffer/BlockingBuffer;
.super Lorg/apache/commons/collections/buffer/SynchronizedBuffer;
.source "BlockingBuffer.java"


# static fields
.field private static final serialVersionUID:J = 0x17dc48879ba6a1bdL


# instance fields
.field private final timeout:J


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/Buffer;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;-><init>(Lorg/apache/commons/collections/Buffer;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->timeout:J

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections/Buffer;J)V
    .registers 6

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;-><init>(Lorg/apache/commons/collections/Buffer;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gez p1, :cond_a

    move-wide p2, v0

    :cond_a
    iput-wide p2, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->timeout:J

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/Buffer;)Lorg/apache/commons/collections/Buffer;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/buffer/BlockingBuffer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/buffer/BlockingBuffer;-><init>(Lorg/apache/commons/collections/Buffer;)V

    return-object v0
.end method

.method public static decorate(Lorg/apache/commons/collections/Buffer;J)Lorg/apache/commons/collections/Buffer;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/buffer/BlockingBuffer;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/buffer/BlockingBuffer;-><init>(Lorg/apache/commons/collections/Buffer;J)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return p1

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return p1

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_3
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_52

    if-eqz v1, :cond_48

    :try_start_b
    iget-wide v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->timeout:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_19

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_3

    :cond_19
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->get(J)Ljava/lang/Object;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_1d} :catch_1f
    .catchall {:try_start_b .. :try_end_1d} :catchall_52

    :try_start_1d
    monitor-exit v0

    return-object v1

    :catch_1f
    move-exception v1

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v2}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v1, Lorg/apache/commons/collections/BufferUnderflowException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Caused by InterruptedException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/Buffer;->get()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_1d .. :try_end_54} :catchall_52

    throw v1
.end method

.method public get(J)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :goto_c
    sub-long p1, v1, p1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_4f

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_69

    if-eqz v3, :cond_4f

    :try_start_1c
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v3, p1, p2}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_25} :catch_26
    .catchall {:try_start_1c .. :try_end_25} :catchall_69

    goto :goto_c

    :catch_26
    move-exception p1

    :try_start_27
    new-instance p2, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {p2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, p2}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance p1, Lorg/apache/commons/collections/BufferUnderflowException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Caused by InterruptedException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    iget-object p1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_61

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/collections/Buffer;->get()Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_61
    new-instance p1, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string p2, "Timeout expired"

    invoke-direct {p1, p2}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_69
    move-exception p1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_27 .. :try_end_6b} :catchall_69

    throw p1
.end method

.method public remove()Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_3
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_52

    if-eqz v1, :cond_48

    :try_start_b
    iget-wide v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->timeout:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_19

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_3

    :cond_19
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->remove(J)Ljava/lang/Object;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_1d} :catch_1f
    .catchall {:try_start_b .. :try_end_1d} :catchall_52

    :try_start_1d
    monitor-exit v0

    return-object v1

    :catch_1f
    move-exception v1

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v2}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v1, Lorg/apache/commons/collections/BufferUnderflowException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Caused by InterruptedException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/Buffer;->remove()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_1d .. :try_end_54} :catchall_52

    throw v1
.end method

.method public remove(J)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :goto_c
    sub-long p1, v1, p1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_4f

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_69

    if-eqz v3, :cond_4f

    :try_start_1c
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v3, p1, p2}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_25} :catch_26
    .catchall {:try_start_1c .. :try_end_25} :catchall_69

    goto :goto_c

    :catch_26
    move-exception p1

    :try_start_27
    new-instance p2, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {p2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, p2}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance p1, Lorg/apache/commons/collections/BufferUnderflowException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Caused by InterruptedException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    iget-object p1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_61

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/collections/Buffer;->remove()Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_61
    new-instance p1, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string p2, "Timeout expired"

    invoke-direct {p1, p2}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_69
    move-exception p1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_27 .. :try_end_6b} :catchall_69

    throw p1
.end method
