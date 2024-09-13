.class public Lorg/apache/commons/text/similarity/SimilarityScoreFrom;
.super Ljava/lang/Object;
.source "SimilarityScoreFrom.java"


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
.field private final left:Ljava/lang/CharSequence;

.field private final similarityScore:Lorg/apache/commons/text/similarity/SimilarityScore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/text/similarity/SimilarityScore<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/text/similarity/SimilarityScore;Ljava/lang/CharSequence;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/similarity/SimilarityScore<",
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

    iput-object p1, p0, Lorg/apache/commons/text/similarity/SimilarityScoreFrom;->similarityScore:Lorg/apache/commons/text/similarity/SimilarityScore;

    iput-object p2, p0, Lorg/apache/commons/text/similarity/SimilarityScoreFrom;->left:Ljava/lang/CharSequence;

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

    iget-object v0, p0, Lorg/apache/commons/text/similarity/SimilarityScoreFrom;->similarityScore:Lorg/apache/commons/text/similarity/SimilarityScore;

    iget-object v1, p0, Lorg/apache/commons/text/similarity/SimilarityScoreFrom;->left:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/text/similarity/SimilarityScore;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLeft()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/text/similarity/SimilarityScoreFrom;->left:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSimilarityScore()Lorg/apache/commons/text/similarity/SimilarityScore;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/text/similarity/SimilarityScore<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/text/similarity/SimilarityScoreFrom;->similarityScore:Lorg/apache/commons/text/similarity/SimilarityScore;

    return-object v0
.end method
