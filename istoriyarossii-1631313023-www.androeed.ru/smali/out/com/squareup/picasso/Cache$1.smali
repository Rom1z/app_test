.class final Lcom/squareup/picasso/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lcom/squareup/picasso/Cache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    return-void
.end method

.method public clearKeyUri(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public maxSize()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public set(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3

    return-void
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
