.class final Lorg/apache/commons/collections/functors/FunctorUtils$1;
.super Ljava/lang/Object;
.source "FunctorUtils.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2

    const-string v0, "org.apache.commons.collections.enableUnsafeSerialization"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
