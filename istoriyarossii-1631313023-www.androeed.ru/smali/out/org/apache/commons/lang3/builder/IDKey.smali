.class final Lorg/apache/commons/lang3/builder/IDKey;
.super Ljava/lang/Object;
.source "IDKey.java"


# instance fields
.field private final id:I

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/builder/IDKey;->id:I

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/IDKey;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lorg/apache/commons/lang3/builder/IDKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lorg/apache/commons/lang3/builder/IDKey;

    iget v0, p0, Lorg/apache/commons/lang3/builder/IDKey;->id:I

    iget v2, p1, Lorg/apache/commons/lang3/builder/IDKey;->id:I

    if-eq v0, v2, :cond_f

    return v1

    :cond_f
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/IDKey;->value:Ljava/lang/Object;

    iget-object p1, p1, Lorg/apache/commons/lang3/builder/IDKey;->value:Ljava/lang/Object;

    if-ne v0, p1, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/lang3/builder/IDKey;->id:I

    return v0
.end method
