.class public Lorg/apache/commons/collections/buffer/BoundedBuffer;
.super Lorg/apache/commons/collections/buffer/SynchronizedBuffer;
.source "BoundedBuffer.java"

# interfaces
.implements Lorg/apache/commons/collections/BoundedCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/buffer/BoundedBuffer$NotifyingIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x155281979ef9c4f8L


# instance fields
.field private final maximumSize:I

.field private final timeout:J


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/Buffer;IJ)V
    .registers 5

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;-><init>(Lorg/apache/commons/collections/Buffer;)V

    const/4 p1, 0x1

    if-lt p2, p1, :cond_b

    iput p2, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maximumSize:I

    iput-wide p3, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->timeout:J

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/buffer/BoundedBuffer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/buffer/BoundedBuffer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static decorate(Lorg/apache/commons/collections/Buffer;I)Lorg/apache/commons/collections/buffer/BoundedBuffer;
    .registers 5

    new-instance v0, Lorg/apache/commons/collections/buffer/BoundedBuffer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/apache/commons/collections/buffer/BoundedBuffer;-><init>(Lorg/apache/commons/collections/Buffer;IJ)V

    return-object v0
.end method

.method public static decorate(Lorg/apache/commons/collections/Buffer;IJ)Lorg/apache/commons/collections/buffer/BoundedBuffer;
    .registers 5

    new-instance v0, Lorg/apache/commons/collections/buffer/BoundedBuffer;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/collections/buffer/BoundedBuffer;-><init>(Lorg/apache/commons/collections/Buffer;IJ)V

    return-object v0
.end method

.method private timeoutWait(I)V
    .registers 10

    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maximumSize:I

    const-string v1, "Buffer size cannot exceed "

    if-gt p1, v0, :cond_9a

    iget-wide v2, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->timeout:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_33

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/Buffer;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget p1, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maximumSize:I

    if-gt v0, p1, :cond_1c

    return-void

    :cond_1c
    new-instance p1, Lorg/apache/commons/collections/BufferOverflowException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maximumSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/collections/BufferOverflowException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->timeout:J

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_3e
    sub-long v2, v0, v2

    cmp-long v6, v2, v4

    if-lez v6, :cond_84

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/collections/Buffer;->size()I

    move-result v6

    add-int/2addr v6, p1

    iget v7, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maximumSize:I

    if-le v6, v7, :cond_84

    :try_start_51
    iget-object v6, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v6, v2, v3}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_5a} :catch_5b

    goto :goto_3e

    :catch_5b
    move-exception p1

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v0}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance p1, Lorg/apache/commons/collections/BufferUnderflowException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Caused by InterruptedException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_84
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/Buffer;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget p1, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maximumSize:I

    if-gt v0, p1, :cond_92

    return-void

    :cond_92
    new-instance p1, Lorg/apache/commons/collections/BufferOverflowException;

    const-string v0, "Timeout expired"

    invoke-direct {p1, v0}, Lorg/apache/commons/collections/BufferOverflowException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9a
    new-instance p1, Lorg/apache/commons/collections/BufferOverflowException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maximumSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/collections/BufferOverflowException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->timeoutWait(I)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Buffer;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->timeoutWait(I)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Buffer;->addAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public isFull()Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maxSize()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/buffer/BoundedBuffer$NotifyingIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/buffer/BoundedBuffer$NotifyingIterator;-><init>(Lorg/apache/commons/collections/buffer/BoundedBuffer;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public maxSize()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maximumSize:I

    return v0
.end method

.method public remove()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/Buffer;->remove()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
