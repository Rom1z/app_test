.class public Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;
.super Ljava/lang/Object;
.source "LevenshteinDetailedDistance.java"

# interfaces
.implements Lorg/apache/commons/text/similarity/EditDistance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/similarity/EditDistance<",
        "Lorg/apache/commons/text/similarity/LevenshteinResults;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;


# instance fields
.field private final threshold:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;

    invoke-direct {v0}, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;-><init>()V

    sput-object v0, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->DEFAULT_INSTANCE:Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;-><init>(Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Threshold must not be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_14
    iput-object p1, p0, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->threshold:Ljava/lang/Integer;

    return-void
.end method

.method private static findDetailedResults(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[[IZ)Lorg/apache/commons/text/similarity/LevenshteinResults;
    .registers 19

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_c
    :goto_c
    if-ltz v0, :cond_8c

    if-ltz v1, :cond_8c

    const/4 v6, -0x1

    if-nez v1, :cond_15

    const/4 v7, -0x1

    goto :goto_1b

    :cond_15
    aget-object v7, p2, v0

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    :goto_1b
    if-nez v0, :cond_1f

    const/4 v8, -0x1

    goto :goto_25

    :cond_1f
    add-int/lit8 v8, v0, -0x1

    aget-object v8, p2, v8

    aget v8, v8, v1

    :goto_25
    if-lez v0, :cond_32

    if-lez v1, :cond_32

    add-int/lit8 v9, v0, -0x1

    aget-object v9, p2, v9

    add-int/lit8 v10, v1, -0x1

    aget v9, v9, v10

    goto :goto_33

    :cond_32
    const/4 v9, -0x1

    :goto_33
    if-ne v7, v6, :cond_3a

    if-ne v8, v6, :cond_3a

    if-ne v9, v6, :cond_3a

    goto :goto_8c

    :cond_3a
    aget-object v10, p2, v0

    aget v10, v10, v1

    if-lez v1, :cond_58

    if-lez v0, :cond_58

    add-int/lit8 v11, v1, -0x1

    move-object v12, p0

    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    add-int/lit8 v13, v0, -0x1

    move-object/from16 v14, p1

    invoke-interface {v14, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v11, v13, :cond_5b

    :goto_53
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_58
    move-object v12, p0

    move-object/from16 v14, p1

    :cond_5b
    add-int/lit8 v11, v10, -0x1

    const/4 v13, 0x1

    if-ne v11, v7, :cond_64

    if-gt v10, v9, :cond_64

    if-le v10, v8, :cond_68

    :cond_64
    if-ne v9, v6, :cond_74

    if-ne v8, v6, :cond_74

    :cond_68
    add-int/lit8 v1, v1, -0x1

    if-eqz p3, :cond_70

    :cond_6c
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    goto :goto_85

    :cond_70
    :goto_70
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x1

    goto :goto_84

    :cond_74
    if-ne v11, v8, :cond_7a

    if-gt v10, v9, :cond_7a

    if-le v10, v7, :cond_7e

    :cond_7a
    if-ne v9, v6, :cond_83

    if-ne v7, v6, :cond_83

    :cond_7e
    add-int/lit8 v0, v0, -0x1

    if-eqz p3, :cond_6c

    goto :goto_70

    :cond_83
    const/4 v6, 0x0

    :goto_84
    const/4 v13, 0x0

    :goto_85
    if-nez v13, :cond_c

    if-nez v6, :cond_c

    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    :cond_8c
    :goto_8c
    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    add-int v1, v4, v3

    add-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static getDefaultInstance()Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;
    .registers 1

    sget-object v0, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->DEFAULT_INSTANCE:Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;

    return-object v0
.end method

.method private static limitedCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lorg/apache/commons/text/similarity/LevenshteinResults;
    .registers 20

    move/from16 v0, p2

    if-eqz p0, :cond_16c

    if-eqz p1, :cond_16c

    if-ltz v0, :cond_164

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v1, :cond_42

    if-gt v2, v0, :cond_2c

    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_41

    :cond_2c
    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :goto_41
    return-object v0

    :cond_42
    if-nez v2, :cond_72

    if-gt v1, v0, :cond_5c

    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_71

    :cond_5c
    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :goto_71
    return-object v0

    :cond_72
    const/4 v5, 0x1

    if-le v1, v2, :cond_81

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v7, v1

    move v6, v2

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    goto :goto_88

    :cond_81
    move v6, v1

    move v7, v2

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :goto_88
    add-int/lit8 v9, v6, 0x1

    new-array v10, v9, [I

    new-array v11, v9, [I

    add-int/lit8 v12, v7, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [I

    aput v9, v13, v5

    aput v12, v13, v4

    const-class v12, I

    invoke-static {v12, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[I

    const/4 v13, 0x0

    :goto_a0
    if-gt v13, v6, :cond_a9

    aget-object v14, v12, v4

    aput v13, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_a0

    :cond_a9
    const/4 v13, 0x0

    :goto_aa
    if-gt v13, v7, :cond_b3

    aget-object v14, v12, v13

    aput v13, v14, v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_aa

    :cond_b3
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/2addr v13, v5

    const/4 v14, 0x0

    :goto_b9
    if-ge v14, v13, :cond_c0

    aput v14, v10, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_b9

    :cond_c0
    const v14, 0x7fffffff

    invoke-static {v10, v13, v9, v14}, Ljava/util/Arrays;->fill([IIII)V

    invoke-static {v11, v14}, Ljava/util/Arrays;->fill([II)V

    const/4 v9, 0x1

    :goto_ca
    if-gt v9, v7, :cond_143

    add-int/lit8 v13, v9, -0x1

    invoke-interface {v2, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    aput v9, v11, v4

    sub-int v15, v9, v0

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    sub-int v5, v14, v0

    if-le v9, v5, :cond_e0

    move v5, v6

    goto :goto_e6

    :cond_e0
    add-int v5, v9, v0

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_e6
    if-le v15, v5, :cond_fe

    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0

    :cond_fe
    const/4 v4, 0x1

    if-le v15, v4, :cond_105

    add-int/lit8 v4, v15, -0x1

    aput v14, v11, v4

    :cond_105
    :goto_105
    if-gt v15, v5, :cond_134

    add-int/lit8 v4, v15, -0x1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ne v14, v13, :cond_115

    aget v4, v10, v4

    aput v4, v11, v15

    const/4 v4, 0x1

    goto :goto_127

    :cond_115
    aget v14, v11, v4

    aget v3, v10, v15

    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v4, v10, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aput v3, v11, v15

    :goto_127
    aget-object v3, v12, v9

    aget v14, v11, v15

    aput v14, v3, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v3, -0x1

    const v14, 0x7fffffff

    goto :goto_105

    :cond_134
    const/4 v4, 0x1

    add-int/lit8 v9, v9, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v14, 0x7fffffff

    move-object/from16 v16, v11

    move-object v11, v10

    move-object/from16 v10, v16

    goto :goto_ca

    :cond_143
    aget v3, v10, v6

    if-gt v3, v0, :cond_14c

    invoke-static {v1, v2, v12, v8}, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->findDetailedResults(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[[IZ)Lorg/apache/commons/text/similarity/LevenshteinResults;

    move-result-object v0

    return-object v0

    :cond_14c
    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0

    :cond_164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threshold must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static unlimitedCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/apache/commons/text/similarity/LevenshteinResults;
    .registers 20

    if-eqz p0, :cond_cb

    if-eqz p1, :cond_cb

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_25

    new-instance v0, Lorg/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v3, v1, v4, v2}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0

    :cond_25
    if-nez v1, :cond_3d

    new-instance v1, Lorg/apache/commons/text/similarity/LevenshteinResults;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v4, v0, v2}, Lorg/apache/commons/text/similarity/LevenshteinResults;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v1

    :cond_3d
    const/4 v3, 0x1

    if-le v0, v1, :cond_4c

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v5, v0

    move v4, v1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    goto :goto_53

    :cond_4c
    move v4, v0

    move v5, v1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_53
    add-int/lit8 v7, v4, 0x1

    new-array v8, v7, [I

    new-array v9, v7, [I

    add-int/lit8 v10, v5, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [I

    aput v7, v11, v3

    aput v10, v11, v2

    const-class v7, I

    invoke-static {v7, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    const/4 v10, 0x0

    :goto_6b
    if-gt v10, v4, :cond_74

    aget-object v11, v7, v2

    aput v10, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6b

    :cond_74
    const/4 v10, 0x0

    :goto_75
    if-gt v10, v5, :cond_7e

    aget-object v11, v7, v10

    aput v10, v11, v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_75

    :cond_7e
    const/4 v10, 0x0

    :goto_7f
    if-gt v10, v4, :cond_86

    aput v10, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7f

    :cond_86
    const/4 v10, 0x1

    :goto_87
    move-object/from16 v17, v9

    move-object v9, v8

    move-object/from16 v8, v17

    if-gt v10, v5, :cond_c6

    add-int/lit8 v11, v10, -0x1

    invoke-interface {v1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    aput v10, v8, v2

    const/4 v12, 0x1

    :goto_97
    if-gt v12, v4, :cond_c2

    add-int/lit8 v13, v12, -0x1

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ne v14, v11, :cond_a3

    const/4 v14, 0x0

    goto :goto_a4

    :cond_a3
    const/4 v14, 0x1

    :goto_a4
    aget v15, v8, v13

    add-int/2addr v15, v3

    aget v16, v9, v12

    add-int/lit8 v2, v16, 0x1

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v13, v9, v13

    add-int/2addr v13, v14

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v8, v12

    aget-object v2, v7, v10

    aget v13, v8, v12

    aput v13, v2, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    goto :goto_97

    :cond_c2
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto :goto_87

    :cond_c6
    invoke-static {v0, v1, v7, v6}, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->findDetailedResults(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[[IZ)Lorg/apache/commons/text/similarity/LevenshteinResults;

    move-result-object v0

    return-object v0

    :cond_cb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/apache/commons/text/similarity/LevenshteinResults;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/apache/commons/text/similarity/LevenshteinResults;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->threshold:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->limitedCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lorg/apache/commons/text/similarity/LevenshteinResults;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-static {p1, p2}, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->unlimitedCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/apache/commons/text/similarity/LevenshteinResults;

    move-result-object p1

    return-object p1
.end method

.method public getThreshold()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/text/similarity/LevenshteinDetailedDistance;->threshold:Ljava/lang/Integer;

    return-object v0
.end method
