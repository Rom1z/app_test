.class final Lorg/apache/commons/text/StrMatcher$CharMatcher;
.super Lorg/apache/commons/text/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharMatcher"
.end annotation


# instance fields
.field private final ch:C


# direct methods
.method constructor <init>(C)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/text/StrMatcher;-><init>()V

    iput-char p1, p0, Lorg/apache/commons/text/StrMatcher$CharMatcher;->ch:C

    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .registers 5

    iget-char p3, p0, Lorg/apache/commons/text/StrMatcher$CharMatcher;->ch:C

    aget-char p1, p1, p2

    if-ne p3, p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method
