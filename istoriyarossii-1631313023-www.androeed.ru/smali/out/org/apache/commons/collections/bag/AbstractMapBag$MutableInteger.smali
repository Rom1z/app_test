.class public Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
.super Ljava/lang/Object;
.source "AbstractMapBag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bag/AbstractMapBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MutableInteger"
.end annotation


# instance fields
.field protected value:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    iget p1, p1, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    if-ne p1, v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    return v0
.end method
