.class public Lorg/apache/commons/text/similarity/LongestCommonSubsequence;
.super Ljava/lang/Object;
.source "LongestCommonSubsequence.java"

# interfaces
.implements Lorg/apache/commons/text/similarity/SimilarityScore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/similarity/SimilarityScore<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .registers 3

    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->logestCommonSubsequence(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Inputs must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public logestCommonSubsequence(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11

    if-eqz p1, :cond_68

    if-eqz p2, :cond_68

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->longestCommonSubstringLengthArray(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[[I

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    aget-object v4, v1, v4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    aget v4, v4, v5

    :goto_31
    add-int/lit8 v4, v4, -0x1

    :goto_33
    if-ltz v4, :cond_5f

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_4b

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_31

    :cond_4b
    add-int/lit8 v5, v2, 0x1

    aget-object v5, v1, v5

    aget v5, v5, v3

    aget-object v6, v1, v2

    add-int/lit8 v7, v3, 0x1

    aget v6, v6, v7

    if-ge v5, v6, :cond_5c

    add-int/lit8 v2, v2, -0x1

    goto :goto_33

    :cond_5c
    add-int/lit8 v3, v3, -0x1

    goto :goto_33

    :cond_5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Inputs must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public longestCommonSubstringLengthArray(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[[I
    .registers 12

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v1

    const/4 v2, 0x0

    aput v0, v3, v2

    const-class v0, I

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v3, 0x0

    :goto_1c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_67

    const/4 v4, 0x0

    :goto_23
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_64

    if-nez v3, :cond_2f

    aget-object v5, v0, v3

    aput v2, v5, v4

    :cond_2f
    if-nez v4, :cond_35

    aget-object v5, v0, v3

    aput v2, v5, v4

    :cond_35
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_4d

    add-int/lit8 v5, v3, 0x1

    aget-object v5, v0, v5

    add-int/lit8 v6, v4, 0x1

    aget-object v7, v0, v3

    aget v7, v7, v4

    add-int/2addr v7, v1

    aput v7, v5, v6

    goto :goto_61

    :cond_4d
    add-int/lit8 v5, v3, 0x1

    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x1

    aget-object v5, v0, v5

    aget v5, v5, v4

    aget-object v8, v0, v3

    aget v8, v8, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v6, v7

    :goto_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_67
    return-object v0
.end method
