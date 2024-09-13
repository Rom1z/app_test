.class final enum Lorg/apache/commons/text/CharacterPredicates$2;
.super Lorg/apache/commons/text/CharacterPredicates;
.source "CharacterPredicates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/CharacterPredicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/text/CharacterPredicates;-><init>(Ljava/lang/String;ILorg/apache/commons/text/CharacterPredicates$1;)V

    return-void
.end method


# virtual methods
.method public test(I)Z
    .registers 2

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result p1

    return p1
.end method
