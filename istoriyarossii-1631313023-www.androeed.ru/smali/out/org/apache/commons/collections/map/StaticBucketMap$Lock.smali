.class final Lorg/apache/commons/collections/map/StaticBucketMap$Lock;
.super Ljava/lang/Object;
.source "StaticBucketMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Lock"
.end annotation


# instance fields
.field public size:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/map/StaticBucketMap$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;-><init>()V

    return-void
.end method
