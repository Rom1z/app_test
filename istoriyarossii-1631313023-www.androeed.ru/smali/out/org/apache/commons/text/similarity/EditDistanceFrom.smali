.class public Lorg/apache/commons/text/similarity/EditDistanceFrom;
.super Ljava/lang/Object;
.source "EditDistanceFrom.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final editDistance:Lorg/apache/commons/text/similarity/EditDistance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/text/similarity/EditDistance<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final left:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lorg/apache/commons/text/similarity/EditDistance;Ljava/lang/CharSequence;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/similarity/EditDistance<",
            "TR;>;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "The edit distance may not be null."

    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/text/similarity/EditDistanceFrom;->editDistance:Lorg/apache/commons/text/similarity/EditDistance;

    iput-object p2, p0, Lorg/apache/commons/text/similarity/EditDistanceFrom;->left:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TR;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/text/similarity/EditDistanceFrom;->editDistance:Lorg/apache/commons/text/similarity/EditDistance;

    iget-object v1, p0, Lorg/apache/commons/text/similarity/EditDistanceFrom;->left:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/text/similarity/EditDistance;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEditDistance()Lorg/apache/commons/text/similarity/EditDistance;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/text/similarity/EditDistance<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/text/similarity/EditDistanceFrom;->editDistance:Lorg/apache/commons/text/similarity/EditDistance;

    return-object v0
.end method

.method public getLeft()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/text/similarity/EditDistanceFrom;->left:Ljava/lang/CharSequence;

    return-object v0
.end method
