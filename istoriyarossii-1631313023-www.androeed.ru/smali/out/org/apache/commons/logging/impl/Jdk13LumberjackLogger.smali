.class public Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;
.super Ljava/lang/Object;
.source "Jdk13LumberjackLogger.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# static fields
.field protected static final dummyLevel:Ljava/util/logging/Level;

.field private static final serialVersionUID:J = -0x780a4a7a5138f0dfL


# instance fields
.field private classAndMethodFound:Z

.field protected transient logger:Ljava/util/logging/Logger;

.field protected name:Ljava/lang/String;

.field private sourceClassName:Ljava/lang/String;

.field private sourceMethodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sput-object v0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->dummyLevel:Ljava/util/logging/Level;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->logger:Ljava/util/logging/Logger;

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->name:Ljava/lang/String;

    const-string v0, "unknown"

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceClassName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceMethodName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->classAndMethodFound:Z

    iput-object p1, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private getClassAndMethod()V
    .registers 6

    const/4 v0, 0x1

    :try_start_1
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "\n"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    :goto_2c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_40

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    :cond_40
    :goto_40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_53

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_40

    :cond_53
    const-string v2, "at "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceClassName:Ljava/lang/String;

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceMethodName:Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_79} :catch_79

    :catch_79
    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->classAndMethodFound:Z

    return-void
.end method

.method private log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-boolean p1, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->classAndMethodFound:Z

    if-nez p1, :cond_16

    invoke-direct {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getClassAndMethod()V

    :cond_16
    iget-object p1, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceClassName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceMethodName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    if-eqz p3, :cond_25

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    :cond_25
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    :cond_2c
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->logger:Ljava/util/logging/Logger;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->logger:Ljava/util/logging/Logger;

    :cond_c
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isFatalEnabled()Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
