.class final Lorg/apache/commons/lang3/text/StrMatcher$TrimMatcher;
.super Lorg/apache/commons/lang3/text/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrimMatcher"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .registers 5

    aget-char p1, p1, p2

    const/16 p2, 0x20

    if-gt p1, p2, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method
