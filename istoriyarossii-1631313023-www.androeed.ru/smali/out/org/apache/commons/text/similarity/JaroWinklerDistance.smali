.class public Lorg/apache/commons/text/similarity/JaroWinklerDistance;
.super Ljava/lang/Object;
.source "JaroWinklerDistance.java"

# interfaces
.implements Lorg/apache/commons/text/similarity/SimilarityScore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/similarity/SimilarityScore<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I
    .registers 17

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_e

    move-object v0, p0

    move-object/from16 v1, p1

    goto :goto_11

    :cond_e
    move-object v1, p0

    move-object/from16 v0, p1

    :goto_11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    const/4 v5, 0x0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    new-array v6, v6, [I

    const/4 v7, -0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    new-array v8, v8, [Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_30
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v9, v11, :cond_64

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    sub-int v12, v9, v2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int v13, v9, v2

    add-int/2addr v13, v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    :goto_4b
    if-ge v12, v13, :cond_61

    aget-boolean v14, v8, v12

    if-nez v14, :cond_5e

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ne v11, v14, :cond_5e

    aput v12, v6, v9

    aput-boolean v4, v8, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_61

    :cond_5e
    add-int/lit8 v12, v12, 0x1

    goto :goto_4b

    :cond_61
    :goto_61
    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    :cond_64
    new-array v2, v10, [C

    new-array v9, v10, [C

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_6a
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-ge v11, v13, :cond_7f

    aget v13, v6, v11

    if-eq v13, v7, :cond_7c

    invoke-interface {v1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    aput-char v13, v2, v12

    add-int/lit8 v12, v12, 0x1

    :cond_7c
    add-int/lit8 v11, v11, 0x1

    goto :goto_6a

    :cond_7f
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_81
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v6, v11, :cond_96

    aget-boolean v11, v8, v6

    if-eqz v11, :cond_93

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    aput-char v11, v9, v7

    add-int/lit8 v7, v7, 0x1

    :cond_93
    add-int/lit8 v6, v6, 0x1

    goto :goto_81

    :cond_96
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_98
    if-ge v6, v10, :cond_a5

    aget-char v8, v2, v6

    aget-char v11, v9, v6

    if-eq v8, v11, :cond_a2

    add-int/lit8 v7, v7, 0x1

    :cond_a2
    add-int/lit8 v6, v6, 0x1

    goto :goto_98

    :cond_a5
    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_a7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v2, v8, :cond_bf

    move-object v8, p0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move-object/from16 v11, p1

    invoke-interface {v11, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v9, v12, :cond_bf

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    :cond_bf
    const/4 v1, 0x4

    new-array v1, v1, [I

    aput v10, v1, v5

    div-int/2addr v7, v3

    aput v7, v1, v4

    aput v6, v1, v3

    const/4 v2, 0x3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    aput v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;
    .registers 10

    if-eqz p1, :cond_5b

    if-eqz p2, :cond_5b

    invoke-static {p1, p2}, Lorg/apache/commons/text/similarity/JaroWinklerDistance;->matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_17

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    int-to-double v3, p1

    div-double v3, v1, v3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    int-to-double p1, p1

    div-double p1, v1, p1

    add-double/2addr v3, p1

    const/4 p1, 0x1

    aget p1, v0, p1

    int-to-double p1, p1

    sub-double p1, v1, p1

    div-double/2addr p1, v1

    add-double/2addr v3, p1

    const-wide/high16 p1, 0x4008000000000000L    # 3.0

    div-double/2addr v3, p1

    const-wide p1, 0x3fe6666666666666L    # 0.7

    cmpg-double v1, v3, p1

    if-gez v1, :cond_3b

    goto :goto_56

    :cond_3b
    const-wide p1, 0x3fb999999999999aL    # 0.1

    const/4 v1, 0x3

    aget v1, v0, v1

    int-to-double v1, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v1, v5, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-double v0, v0

    mul-double p1, p1, v0

    sub-double/2addr v5, v3

    mul-double p1, p1, v5

    add-double/2addr v3, p1

    :goto_56
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Strings must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/JaroWinklerDistance;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
