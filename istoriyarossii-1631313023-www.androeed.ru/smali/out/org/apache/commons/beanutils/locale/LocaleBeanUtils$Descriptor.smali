.class public Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;
.super Ljava/lang/Object;
.source "LocaleBeanUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/beanutils/locale/LocaleBeanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Descriptor"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private index:I

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private propName:Ljava/lang/String;

.field private target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->index:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->setPropName(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->setIndex(I)V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->index:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPropName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->propName:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->target:Ljava/lang/Object;

    return-object v0
.end method

.method public setIndex(I)V
    .registers 2

    iput p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->index:I

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->key:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->name:Ljava/lang/String;

    return-void
.end method

.method public setPropName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->propName:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtils$Descriptor;->target:Ljava/lang/Object;

    return-void
.end method
