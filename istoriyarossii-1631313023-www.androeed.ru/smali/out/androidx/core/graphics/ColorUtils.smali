.class public final Landroidx/core/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field

.field private static final XYZ_EPSILON:D = 0.008856

.field private static final XYZ_KAPPA:D = 903.3

.field private static final XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor([F)I
    .registers 7

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v2, p0, v2

    const/4 v3, 0x2

    aget p0, p0, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, p0, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v5, v4

    mul-float v4, v4, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v4

    sub-float/2addr p0, v2

    const/high16 v2, 0x42700000    # 60.0f

    div-float v2, v1, v2

    rem-float/2addr v2, v3

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v5, v2

    mul-float v5, v5, v4

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x3c

    const/high16 v2, 0x437f0000    # 255.0f

    packed-switch v1, :pswitch_data_c8

    const/4 p0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_b4

    :pswitch_37
    add-float/2addr v4, p0

    mul-float v4, v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float v3, p0, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v5, p0

    mul-float v5, v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_b4

    :pswitch_4c
    add-float/2addr v5, p0

    mul-float v5, v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float v3, p0, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v4, p0

    mul-float v4, v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_b4

    :pswitch_61
    mul-float v1, p0, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v5, p0

    mul-float v5, v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v4, p0

    mul-float v4, v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_b4

    :pswitch_76
    mul-float v1, p0, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v4, p0

    mul-float v4, v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v5, p0

    mul-float v5, v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_b4

    :pswitch_8b
    add-float/2addr v5, p0

    mul-float v5, v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v4, p0

    mul-float v4, v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float p0, p0, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_b4

    :pswitch_a0
    add-float/2addr v4, p0

    mul-float v4, v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v5, p0

    mul-float v5, v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float p0, p0, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_b4
    const/16 v2, 0xff

    invoke-static {v1, v0, v2}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v1

    invoke-static {v3, v0, v2}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v3

    invoke-static {p0, v0, v2}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result p0

    invoke-static {v1, v3, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0

    nop

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_8b
        :pswitch_76
        :pswitch_61
        :pswitch_4c
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method public static LABToColor(DDD)I
    .registers 14

    invoke-static {}, Landroidx/core/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v7

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Landroidx/core/graphics/ColorUtils;->LABToXYZ(DDD[D)V

    const/4 p0, 0x0

    aget-wide v0, v7, p0

    const/4 p0, 0x1

    aget-wide v2, v7, p0

    const/4 p0, 0x2

    aget-wide v4, v7, p0

    invoke-static/range {v0 .. v5}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result p0

    return p0
.end method

.method public static LABToXYZ(DDD[D)V
    .registers 26

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double v2, p0, v0

    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    div-double/2addr v2, v4

    const-wide v6, 0x407f400000000000L    # 500.0

    div-double v6, p2, v6

    add-double/2addr v6, v2

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    div-double v8, p4, v8

    sub-double v8, v2, v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    const-wide v16, 0x408c3a6666666666L    # 903.3

    cmpl-double v18, v12, v14

    if-lez v18, :cond_2a

    goto :goto_2f

    :cond_2a
    mul-double v6, v6, v4

    sub-double/2addr v6, v0

    div-double v12, v6, v16

    :goto_2f
    const-wide v6, 0x401fff9da4c11507L    # 7.9996247999999985

    cmpl-double v18, p0, v6

    if-lez v18, :cond_3d

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto :goto_3f

    :cond_3d
    div-double v2, p0, v16

    :goto_3f
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    cmpl-double v10, v6, v14

    if-lez v10, :cond_48

    goto :goto_4d

    :cond_48
    mul-double v8, v8, v4

    sub-double/2addr v8, v0

    div-double v6, v8, v16

    :goto_4d
    const/4 v0, 0x0

    const-wide v4, 0x4057c3020c49ba5eL    # 95.047

    mul-double v12, v12, v4

    aput-wide v12, p6, v0

    const/4 v0, 0x1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    aput-wide v2, p6, v0

    const/4 v0, 0x2

    const-wide v1, 0x405b3883126e978dL    # 108.883

    mul-double v6, v6, v1

    aput-wide v6, p6, v0

    return-void
.end method

.method public static RGBToHSL(III[F)V
    .registers 11

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    int-to-float p1, p1

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v2, v0, v1

    add-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_29

    const/4 p1, 0x0

    const/4 v2, 0x0

    goto :goto_4b

    :cond_29
    cmpl-float v1, v0, p0

    if-nez v1, :cond_33

    sub-float/2addr p1, p2

    div-float/2addr p1, v2

    const/high16 p0, 0x40c00000    # 6.0f

    rem-float/2addr p1, p0

    goto :goto_41

    :cond_33
    cmpl-float v0, v0, p1

    if-nez v0, :cond_3c

    sub-float/2addr p2, p0

    div-float/2addr p2, v2

    add-float p1, p2, v4

    goto :goto_41

    :cond_3c
    sub-float/2addr p0, p1

    div-float/2addr p0, v2

    const/high16 p1, 0x40800000    # 4.0f

    add-float/2addr p1, p0

    :goto_41
    mul-float v4, v4, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float p0, v5, p0

    div-float/2addr v2, p0

    :goto_4b
    const/high16 p0, 0x42700000    # 60.0f

    mul-float p1, p1, p0

    const/high16 p0, 0x43b40000    # 360.0f

    rem-float/2addr p1, p0

    cmpg-float p2, p1, v6

    if-gez p2, :cond_57

    add-float/2addr p1, p0

    :cond_57
    const/4 p2, 0x0

    invoke-static {p1, v6, p0}, Landroidx/core/graphics/ColorUtils;->constrain(FFF)F

    move-result p0

    aput p0, p3, p2

    const/4 p0, 0x1

    invoke-static {v2, v6, v5}, Landroidx/core/graphics/ColorUtils;->constrain(FFF)F

    move-result p1

    aput p1, p3, p0

    const/4 p0, 0x2

    invoke-static {v3, v6, v5}, Landroidx/core/graphics/ColorUtils;->constrain(FFF)F

    move-result p1

    aput p1, p3, p0

    return-void
.end method

.method public static RGBToLAB(III[D)V
    .registers 11

    invoke-static {p0, p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->RGBToXYZ(III[D)V

    const/4 p0, 0x0

    aget-wide v0, p3, p0

    const/4 p0, 0x1

    aget-wide v2, p3, p0

    const/4 p0, 0x2

    aget-wide v4, p3, p0

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroidx/core/graphics/ColorUtils;->XYZToLAB(DDD[D)V

    return-void
.end method

.method public static RGBToXYZ(III[D)V
    .registers 20

    move-object/from16 v0, p3

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_ba

    move/from16 v1, p0

    int-to-double v1, v1

    const-wide v3, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v3

    const-wide v5, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v7, 0x4003333333333333L    # 2.4

    const-wide v9, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v11, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v13, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v15, v1, v13

    if-gez v15, :cond_2e

    div-double/2addr v1, v5

    goto :goto_34

    :cond_2e
    add-double/2addr v1, v11

    div-double/2addr v1, v9

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    :goto_34
    move/from16 v15, p1

    int-to-double v7, v15

    div-double/2addr v7, v3

    cmpg-double v15, v7, v13

    if-gez v15, :cond_3e

    div-double/2addr v7, v5

    goto :goto_49

    :cond_3e
    add-double/2addr v7, v11

    div-double/2addr v7, v9

    const-wide v9, 0x4003333333333333L    # 2.4

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    :goto_49
    move/from16 v15, p2

    int-to-double v9, v15

    div-double/2addr v9, v3

    cmpg-double v3, v9, v13

    if-gez v3, :cond_53

    div-double/2addr v9, v5

    goto :goto_63

    :cond_53
    add-double/2addr v9, v11

    const-wide v3, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v9, v3

    const-wide v3, 0x4003333333333333L    # 2.4

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    :goto_63
    const/4 v3, 0x0

    const-wide v4, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double v4, v4, v1

    const-wide v11, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double v11, v11, v7

    add-double/2addr v4, v11

    const-wide v11, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double v11, v11, v9

    add-double/2addr v4, v11

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v11

    aput-wide v4, v0, v3

    const/4 v3, 0x1

    const-wide v4, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double v4, v4, v1

    const-wide v13, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v13, v13, v7

    add-double/2addr v4, v13

    const-wide v13, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double v13, v13, v9

    add-double/2addr v4, v13

    mul-double v4, v4, v11

    aput-wide v4, v0, v3

    const/4 v3, 0x2

    const-wide v4, 0x3f93c36113404ea5L    # 0.0193

    mul-double v1, v1, v4

    const-wide v4, 0x3fbe83e425aee632L    # 0.1192

    mul-double v7, v7, v4

    add-double/2addr v1, v7

    const-wide v4, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double v9, v9, v4

    add-double/2addr v1, v9

    mul-double v1, v1, v11

    aput-wide v1, v0, v3

    return-void

    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outXyz must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static XYZToColor(DDD)I
    .registers 23

    const-wide v0, 0x4009ecbfb15b573fL    # 3.2406

    mul-double v0, v0, p0

    const-wide v2, -0x400767a0f9096bbaL    # -1.5372

    mul-double v2, v2, p2

    add-double/2addr v0, v2

    const-wide v2, -0x402016f0068db8bbL    # -0.4986

    mul-double v2, v2, p4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    const-wide v4, -0x4010fec56d5cfaadL    # -0.9689

    mul-double v4, v4, p0

    const-wide v6, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double v6, v6, p2

    add-double/2addr v4, v6

    const-wide v6, 0x3fa53f7ced916873L    # 0.0415

    mul-double v6, v6, p4

    add-double/2addr v4, v6

    div-double/2addr v4, v2

    const-wide v6, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double v6, v6, p0

    const-wide v8, -0x4035e353f7ced917L    # -0.204

    mul-double v8, v8, p2

    add-double/2addr v6, v8

    const-wide v8, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    div-double/2addr v6, v2

    const-wide v2, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v8, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const-wide v10, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v12, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v14, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v16, v0, v14

    if-lez v16, :cond_6f

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v0, v0, v10

    sub-double/2addr v0, v2

    goto :goto_71

    :cond_6f
    mul-double v0, v0, v12

    :goto_71
    cmpl-double v16, v4, v14

    if-lez v16, :cond_7d

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v4, v4, v10

    sub-double/2addr v4, v2

    goto :goto_7f

    :cond_7d
    mul-double v4, v4, v12

    :goto_7f
    cmpl-double v16, v6, v14

    if-lez v16, :cond_8b

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v6, v6, v10

    sub-double/2addr v6, v2

    goto :goto_8d

    :cond_8b
    mul-double v6, v6, v12

    :goto_8d
    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v0, 0x0

    const/16 v8, 0xff

    invoke-static {v1, v0, v8}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v1

    mul-double v4, v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    invoke-static {v5, v0, v8}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v4

    mul-double v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v3, v0, v8}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    move-result v0

    invoke-static {v1, v4, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static XYZToLAB(DDD[D)V
    .registers 14

    array-length v0, p6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_43

    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p2, v0

    invoke-static {p2, p3}, Landroidx/core/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p2

    const-wide v0, 0x405b3883126e978dL    # 108.883

    div-double/2addr p4, v0

    invoke-static {p4, p5}, Landroidx/core/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x405d000000000000L    # 116.0

    mul-double v3, v3, p2

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    sub-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    aput-wide v1, p6, v0

    const/4 v0, 0x1

    const-wide v1, 0x407f400000000000L    # 500.0

    sub-double/2addr p0, p2

    mul-double p0, p0, v1

    aput-wide p0, p6, v0

    const/4 p0, 0x2

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    sub-double/2addr p2, p4

    mul-double p2, p2, v0

    aput-wide p2, p6, p0

    return-void

    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "outLab must have a length of 3."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blendARGB(IIF)I
    .registers 8

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static blendHSL([F[FF[F)V
    .registers 8

    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    invoke-static {v2, v3, p2}, Landroidx/core/graphics/ColorUtils;->circularInterpolate(FFF)F

    move-result v2

    aput v2, p3, v1

    const/4 v1, 0x1

    aget v2, p0, v1

    mul-float v2, v2, v0

    aget v3, p1, v1

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x2

    aget p0, p0, v1

    mul-float p0, p0, v0

    aget p1, p1, v1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    aput p0, p3, v1

    return-void

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "result must have a length of 3."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blendLAB([D[DD[D)V
    .registers 12

    array-length v0, p4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    const/4 v2, 0x0

    aget-wide v3, p0, v2

    mul-double v3, v3, v0

    aget-wide v5, p1, v2

    mul-double v5, v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p4, v2

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    mul-double v3, v3, v0

    aget-wide v5, p1, v2

    mul-double v5, v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p4, v2

    const/4 v2, 0x2

    aget-wide v3, p0, v2

    mul-double v3, v3, v0

    aget-wide p0, p1, v2

    mul-double p0, p0, p2

    add-double/2addr v3, p0

    aput-wide v3, p4, v2

    return-void

    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "outResult must have a length of 3."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static calculateContrast(II)D
    .registers 6

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2b

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_12

    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    :cond_12
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    invoke-static {p1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide p0

    add-double/2addr p0, v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    div-double/2addr v2, p0

    return-wide v2

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "background can not be translucent: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static calculateLuminance(I)D
    .registers 6

    invoke-static {}, Landroidx/core/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->colorToXYZ(I[D)V

    const/4 p0, 0x1

    aget-wide v1, v0, p0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public static calculateMinimumAlpha(IIF)I
    .registers 11

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_39

    invoke-static {p0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    float-to-double v4, p2

    cmpg-double p2, v2, v4

    if-gez p2, :cond_17

    const/4 p0, -0x1

    return p0

    :cond_17
    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_19
    const/16 v2, 0xa

    if-gt p2, v2, :cond_38

    sub-int v2, v1, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_38

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    invoke-static {p0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-static {v3, p1}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v6

    cmpg-double v3, v6, v4

    if-gez v3, :cond_34

    move v0, v2

    goto :goto_35

    :cond_34
    move v1, v2

    :goto_35
    add-int/lit8 p2, p2, 0x1

    goto :goto_19

    :cond_38
    return v1

    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "background can not be translucent: #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static circularInterpolate(FFF)F
    .registers 6

    sub-float v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_15

    cmpl-float v0, p1, p0

    if-lez v0, :cond_14

    add-float/2addr p0, v1

    goto :goto_15

    :cond_14
    add-float/2addr p1, v1

    :cond_15
    :goto_15
    sub-float/2addr p1, p0

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    rem-float/2addr p0, v1

    return p0
.end method

.method public static colorToHSL(I[F)V
    .registers 4

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Landroidx/core/graphics/ColorUtils;->RGBToHSL(III[F)V

    return-void
.end method

.method public static colorToLAB(I[D)V
    .registers 4

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Landroidx/core/graphics/ColorUtils;->RGBToLAB(III[D)V

    return-void
.end method

.method public static colorToXYZ(I[D)V
    .registers 4

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Landroidx/core/graphics/ColorUtils;->RGBToXYZ(III[D)V

    return-void
.end method

.method private static compositeAlpha(II)I
    .registers 2

    rsub-int p1, p1, 0xff

    rsub-int p0, p0, 0xff

    mul-int p1, p1, p0

    div-int/lit16 p1, p1, 0xff

    rsub-int p0, p1, 0xff

    return p0
.end method

.method public static compositeColors(II)I
    .registers 8

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v3, v1, v4, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v4, v1, v5, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0, v1, p1, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result p0

    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static compositeColors(Landroid/graphics/Color;Landroid/graphics/Color;)Landroid/graphics/Color;
    .registers 9

    invoke-virtual {p0}, Landroid/graphics/Color;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Color;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p1}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_25

    :cond_1d
    invoke-virtual {p1}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object p0

    :goto_25
    invoke-virtual {p0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Color;->alpha()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Color;->alpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p0

    mul-float v2, v2, v3

    invoke-virtual {p1}, Landroid/graphics/Color;->getComponentCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-float v4, p0, v2

    aput v4, v1, v3

    aget v4, v1, v3

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_51

    aget v4, v1, v3

    div-float/2addr p0, v4

    aget v4, v1, v3

    div-float/2addr v2, v4

    :cond_51
    const/4 v4, 0x0

    :goto_52
    if-ge v4, v3, :cond_62

    aget v5, v0, v4

    mul-float v5, v5, p0

    aget v6, v1, v4

    mul-float v6, v6, v2

    add-float/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_62
    invoke-virtual {p1}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/graphics/Color;->valueOf([FLandroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object p0

    return-object p0

    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Color models must match ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Color;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " vs. "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Color;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static compositeComponent(IIIII)I
    .registers 5

    if-nez p4, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    mul-int/lit16 p0, p0, 0xff

    mul-int p0, p0, p1

    mul-int p2, p2, p3

    rsub-int p1, p1, 0xff

    mul-int p2, p2, p1

    add-int/2addr p0, p2

    mul-int/lit16 p4, p4, 0xff

    div-int/2addr p0, p4

    return p0
.end method

.method private static constrain(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move p0, p1

    goto :goto_b

    :cond_6
    cmpl-float p1, p0, p2

    if-lez p1, :cond_b

    move p0, p2

    :cond_b
    :goto_b
    return p0
.end method

.method private static constrain(III)I
    .registers 3

    if-ge p0, p1, :cond_4

    move p0, p1

    goto :goto_7

    :cond_4
    if-le p0, p2, :cond_7

    move p0, p2

    :cond_7
    :goto_7
    return p0
.end method

.method public static distanceEuclidean([D[D)D
    .registers 11

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/4 v2, 0x1

    aget-wide v5, p0, v2

    aget-wide v7, p1, v2

    sub-double/2addr v5, v7

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v0, v5

    const/4 v2, 0x2

    aget-wide v5, p0, v2

    aget-wide p0, p1, v2

    sub-double/2addr v5, p0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static getTempDouble3Array()[D
    .registers 2

    sget-object v0, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    if-nez v1, :cond_10

    const/4 v1, 0x3

    new-array v1, v1, [D

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_10
    return-object v1
.end method

.method private static pivotXyzComponent(D)D
    .registers 5

    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v2, p0, v0

    if-lez v2, :cond_13

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_20

    :cond_13
    const-wide v0, 0x408c3a6666666666L    # 903.3

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    div-double/2addr p0, v0

    :goto_20
    return-wide p0
.end method

.method public static setAlphaComponent(II)I
    .registers 3

    if-ltz p1, :cond_e

    const/16 v0, 0xff

    if-gt p1, v0, :cond_e

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
