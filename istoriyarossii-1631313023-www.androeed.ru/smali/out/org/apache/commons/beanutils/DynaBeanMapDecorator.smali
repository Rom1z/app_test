.class public Lorg/apache/commons/beanutils/DynaBeanMapDecorator;
.super Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;
.source "DynaBeanMapDecorator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/beanutils/DynaBean;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;-><init>(Lorg/apache/commons/beanutils/DynaBean;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/DynaBean;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;-><init>(Lorg/apache/commons/beanutils/DynaBean;Z)V

    return-void
.end method


# virtual methods
.method protected convertKey(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method
