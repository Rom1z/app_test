.class public Lorg/apache/commons/text/similarity/LongestCommonSubsequenceDistance;
.super Ljava/lang/Object;
.source "LongestCommonSubsequenceDistance.java"

# interfaces
.implements Lorg/apache/commons/text/similarity/EditDistance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/similarity/EditDistance<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final longestCommonSubsequence:Lorg/apache/commons/text/similarity/LongestCommonSubsequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;

    invoke-direct {v0}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/text/similarity/LongestCommonSubsequenceDistance;->longestCommonSubsequence:Lorg/apache/commons/text/similarity/LongestCommonSubsequence;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .registers 5

    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/text/similarity/LongestCommonSubsequenceDistance;->longestCommonSubsequence:Lorg/apache/commons/text/similarity/LongestCommonSubsequence;

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Inputs must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/LongestCommonSubsequenceDistance;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
