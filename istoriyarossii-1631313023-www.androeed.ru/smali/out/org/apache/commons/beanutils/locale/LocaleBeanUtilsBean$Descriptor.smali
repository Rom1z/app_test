.class public Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;
.super Ljava/lang/Object;
.source "LocaleBeanUtilsBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
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

.field final synthetic this$0:Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;


# direct methods
.method public constructor <init>(Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;->this$0:Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;->index:I

    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;->setPropName(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;->setIndex(I)V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;->index:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPropName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;->propName:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;->target:Ljava/lang/Object;

    return-object v0
.end method

.method public setIndex(I)V
    .registers 2

    iput p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;->index:I

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;->key:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;->name:Ljava/lang/String;

    return-void
.end method

.method public setPropName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;->propName:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;->target:Ljava/lang/Object;

    return-void
.end method
