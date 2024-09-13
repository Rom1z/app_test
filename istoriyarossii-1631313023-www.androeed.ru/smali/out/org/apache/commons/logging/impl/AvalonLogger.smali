.class public Lorg/apache/commons/logging/impl/AvalonLogger;
.super Ljava/lang/Object;
.source "AvalonLogger.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;


# static fields
.field private static volatile defaultLogger:Lorg/apache/avalon/framework/logger/Logger;


# instance fields
.field private final transient logger:Lorg/apache/avalon/framework/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/commons/logging/impl/AvalonLogger;->defaultLogger:Lorg/apache/avalon/framework/logger/Logger;

    const-string v1, "default logger has to be specified if this constructor is used!"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/logging/impl/AvalonLogger;->defaultLogger:Lorg/apache/avalon/framework/logger/Logger;

    invoke-interface {v0, p1}, Lorg/apache/avalon/framework/logger/Logger;->getChildLogger(Ljava/lang/String;)Lorg/apache/avalon/framework/logger/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/logging/impl/AvalonLogger;->logger:Lorg/apache/avalon/framework/logger/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/avalon/framework/logger/Logger;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/logging/impl/AvalonLogger;->logger:Lorg/apache/avalon/framework/logger/Logger;

    return-void
.end method

.method public static setDefaultLogger(Lorg/apache/avalon/framework/logger/Logger;)V
    .registers 1

    sput-object p0, Lorg/apache/commons/logging/impl/AvalonLogger;->defaultLogger:Lorg/apache/avalon/framework/logger/Logger;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/avalon/framework/logger/Logger;->debug(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/apache/avalon/framework/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/avalon/framework/logger/Logger;->error(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/apache/avalon/framework/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isFatalErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/avalon/framework/logger/Logger;->fatalError(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isFatalErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/apache/avalon/framework/logger/Logger;->fatalError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    return-void
.end method

.method public getLogger()Lorg/apache/avalon/framework/logger/Logger;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/logging/impl/AvalonLogger;->logger:Lorg/apache/avalon/framework/logger/Logger;

    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/avalon/framework/logger/Logger;->info(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/apache/avalon/framework/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isFatalEnabled()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isFatalErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/avalon/framework/logger/Logger;->debug(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/apache/avalon/framework/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/avalon/framework/logger/Logger;->warn(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/avalon/framework/logger/Logger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AvalonLogger;->getLogger()Lorg/apache/avalon/framework/logger/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/apache/avalon/framework/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    return-void
.end method
