.class public Lorg/apache/commons/beanutils/DynaBeanPropertyMapDecorator;
.super Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;
.source "DynaBeanPropertyMapDecorator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator<",
        "Ljava/lang/String;",
        ">;"
    }
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
.method protected bridge synthetic convertKey(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/DynaBeanPropertyMapDecorator;->convertKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected convertKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method
