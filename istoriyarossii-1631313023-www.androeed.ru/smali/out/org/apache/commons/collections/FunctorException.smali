.class public Lorg/apache/commons/collections/FunctorException;
.super Ljava/lang/RuntimeException;
.source "FunctorException.java"


# static fields
.field private static final JDK_SUPPORTS_NESTED:Z

.field static synthetic class$java$lang$Throwable:Ljava/lang/Class;


# instance fields
.field private final rootCause:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lorg/apache/commons/collections/FunctorException;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v1, :cond_d

    const-string v1, "java.lang.Throwable"

    invoke-static {v1}, Lorg/apache/commons/collections/FunctorException;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/collections/FunctorException;->class$java$lang$Throwable:Ljava/lang/Class;

    :cond_d
    const-string v2, "getCause"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_14} :catch_15

    const/4 v0, 0x1

    :catch_15
    sput-boolean v0, Lorg/apache/commons/collections/FunctorException;->JDK_SUPPORTS_NESTED:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace()V
    .registers 2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FunctorException;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 4

    monitor-enter p1

    :try_start_1
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FunctorException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    monitor-exit p1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3

    monitor-enter p1

    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    if-eqz v0, :cond_16

    sget-boolean v0, Lorg/apache/commons/collections/FunctorException;->JDK_SUPPORTS_NESTED:Z

    if-nez v0, :cond_16

    const-string v0, "Caused by: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/collections/FunctorException;->rootCause:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_16
    monitor-exit p1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method
