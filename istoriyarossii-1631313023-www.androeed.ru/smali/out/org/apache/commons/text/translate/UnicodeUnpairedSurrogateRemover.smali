.class public Lorg/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;
.super Lorg/apache/commons/text/translate/CodePointTranslator;
.source "UnicodeUnpairedSurrogateRemover.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/text/translate/CodePointTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(ILjava/io/Writer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const p2, 0xd800

    if-lt p1, p2, :cond_c

    const p2, 0xdfff

    if-gt p1, p2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method
