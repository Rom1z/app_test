.class public Lorg/apache/commons/lang3/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FFFF:[Z

.field private static final FFFT:[Z

.field private static final FFTF:[Z

.field private static final FFTT:[Z

.field private static final FTFF:[Z

.field private static final FTFT:[Z

.field private static final FTTF:[Z

.field private static final FTTT:[Z

.field private static final TFFF:[Z

.field private static final TFFT:[Z

.field private static final TFTF:[Z

.field private static final TFTT:[Z

.field private static final TTFF:[Z

.field private static final TTFT:[Z

.field private static final TTTF:[Z

.field private static final TTTT:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v1, v0, [Z

    fill-array-data v1, :array_72

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->TTTT:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_78

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->FTTT:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_7e

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->TFTT:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_84

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->FFTT:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_8a

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->TTFT:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_90

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->FTFT:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_96

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->TFFT:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_9c

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->FFFT:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_a2

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->TTTF:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_a8

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->FTTF:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_ae

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->TFTF:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_b4

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->FFTF:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_ba

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->TTFF:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_c0

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->FTFF:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_c6

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->TFFF:[Z

    new-array v0, v0, [Z

    fill-array-data v0, :array_cc

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FFFF:[Z

    return-void

    :array_72
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_78
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_7e
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_84
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_8a
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_90
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_96
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_9c
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_a2
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_a8
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_ae
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_b4
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_ba
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_c0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_c6
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_cc
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binaryBeMsb0ToHexDigit([Z)C
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryBeMsb0ToHexDigit([ZI)C

    move-result p0

    return p0
.end method

.method public static binaryBeMsb0ToHexDigit([ZI)C
    .registers 6

    array-length v0, p0

    if-eqz v0, :cond_84

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    add-int/2addr v0, v1

    const/4 p1, 0x4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array p1, p1, [Z

    sub-int/2addr v0, v2

    rsub-int/lit8 v3, v2, 0x4

    invoke-static {p0, v0, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x0

    aget-boolean p0, p1, p0

    const/4 v0, 0x2

    const/4 v2, 0x3

    if-eqz p0, :cond_50

    aget-boolean p0, p1, v1

    if-eqz p0, :cond_38

    aget-boolean p0, p1, v0

    if-eqz p0, :cond_2e

    aget-boolean p0, p1, v2

    if-eqz p0, :cond_2b

    const/16 p0, 0x66

    goto :goto_2d

    :cond_2b
    const/16 p0, 0x65

    :goto_2d
    return p0

    :cond_2e
    aget-boolean p0, p1, v2

    if-eqz p0, :cond_35

    const/16 p0, 0x64

    goto :goto_37

    :cond_35
    const/16 p0, 0x63

    :goto_37
    return p0

    :cond_38
    aget-boolean p0, p1, v0

    if-eqz p0, :cond_46

    aget-boolean p0, p1, v2

    if-eqz p0, :cond_43

    const/16 p0, 0x62

    goto :goto_45

    :cond_43
    const/16 p0, 0x61

    :goto_45
    return p0

    :cond_46
    aget-boolean p0, p1, v2

    if-eqz p0, :cond_4d

    const/16 p0, 0x39

    goto :goto_4f

    :cond_4d
    const/16 p0, 0x38

    :goto_4f
    return p0

    :cond_50
    aget-boolean p0, p1, v1

    if-eqz p0, :cond_6c

    aget-boolean p0, p1, v0

    if-eqz p0, :cond_62

    aget-boolean p0, p1, v2

    if-eqz p0, :cond_5f

    const/16 p0, 0x37

    goto :goto_61

    :cond_5f
    const/16 p0, 0x36

    :goto_61
    return p0

    :cond_62
    aget-boolean p0, p1, v2

    if-eqz p0, :cond_69

    const/16 p0, 0x35

    goto :goto_6b

    :cond_69
    const/16 p0, 0x34

    :goto_6b
    return p0

    :cond_6c
    aget-boolean p0, p1, v0

    if-eqz p0, :cond_7a

    aget-boolean p0, p1, v2

    if-eqz p0, :cond_77

    const/16 p0, 0x33

    goto :goto_79

    :cond_77
    const/16 p0, 0x32

    :goto_79
    return p0

    :cond_7a
    aget-boolean p0, p1, v2

    if-eqz p0, :cond_81

    const/16 p0, 0x31

    goto :goto_83

    :cond_81
    const/16 p0, 0x30

    :goto_83
    return p0

    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot convert an empty array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static binaryToByte([ZIBII)B
    .registers 9

    array-length v0, p0

    if-nez v0, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p4, :cond_8

    :cond_7
    return p2

    :cond_8
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p3

    const/16 v1, 0x8

    if-ge v0, v1, :cond_24

    const/4 v0, 0x0

    :goto_10
    if-ge v0, p4, :cond_23

    add-int v1, v0, p3

    add-int v2, v0, p1

    aget-boolean v2, p0, v2

    shl-int/2addr v2, v1

    const/4 v3, 0x1

    shl-int v1, v3, v1

    not-int v1, v1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    int-to-byte p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_23
    return p2

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+dstPos is greater or equal to than 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static binaryToHexDigit([Z)C
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryToHexDigit([ZI)C

    move-result p0

    return p0
.end method

.method public static binaryToHexDigit([ZI)C
    .registers 4

    array-length v0, p0

    if-eqz v0, :cond_92

    array-length v0, p0

    add-int/lit8 v1, p1, 0x3

    if-le v0, v1, :cond_4f

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_4f

    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_32

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_32

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_28

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_28

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_25

    const/16 p0, 0x66

    goto :goto_27

    :cond_25
    const/16 p0, 0x65

    :goto_27
    return p0

    :cond_28
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_2f

    const/16 p0, 0x64

    goto :goto_31

    :cond_2f
    const/16 p0, 0x63

    :goto_31
    return p0

    :cond_32
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_45

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_45

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_42

    const/16 p0, 0x62

    goto :goto_44

    :cond_42
    const/16 p0, 0x61

    :goto_44
    return p0

    :cond_45
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_4c

    const/16 p0, 0x39

    goto :goto_4e

    :cond_4c
    const/16 p0, 0x38

    :goto_4e
    return p0

    :cond_4f
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_75

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_75

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_6b

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_6b

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_68

    const/16 p0, 0x37

    goto :goto_6a

    :cond_68
    const/16 p0, 0x36

    :goto_6a
    return p0

    :cond_6b
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_72

    const/16 p0, 0x35

    goto :goto_74

    :cond_72
    const/16 p0, 0x34

    :goto_74
    return p0

    :cond_75
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_88

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_88

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_85

    const/16 p0, 0x33

    goto :goto_87

    :cond_85
    const/16 p0, 0x32

    :goto_87
    return p0

    :cond_88
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_8f

    const/16 p0, 0x31

    goto :goto_91

    :cond_8f
    const/16 p0, 0x30

    :goto_91
    return p0

    :cond_92
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot convert an empty array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static binaryToHexDigitMsb0_4bits([Z)C
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryToHexDigitMsb0_4bits([ZI)C

    move-result p0

    return p0
.end method

.method public static binaryToHexDigitMsb0_4bits([ZI)C
    .registers 5

    array-length v0, p0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_a4

    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_84

    add-int/lit8 v0, p1, 0x3

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_4a

    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_30

    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_26

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_23

    const/16 p0, 0x66

    goto :goto_25

    :cond_23
    const/16 p0, 0x37

    :goto_25
    return p0

    :cond_26
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_2d

    const/16 p0, 0x62

    goto :goto_2f

    :cond_2d
    const/16 p0, 0x33

    :goto_2f
    return p0

    :cond_30
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_40

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_3d

    const/16 p0, 0x64

    goto :goto_3f

    :cond_3d
    const/16 p0, 0x35

    :goto_3f
    return p0

    :cond_40
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_47

    const/16 p0, 0x39

    goto :goto_49

    :cond_47
    const/16 p0, 0x31

    :goto_49
    return p0

    :cond_4a
    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_6a

    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_60

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_5d

    const/16 p0, 0x65

    goto :goto_5f

    :cond_5d
    const/16 p0, 0x36

    :goto_5f
    return p0

    :cond_60
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_67

    const/16 p0, 0x61

    goto :goto_69

    :cond_67
    const/16 p0, 0x32

    :goto_69
    return p0

    :cond_6a
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_7a

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_77

    const/16 p0, 0x63

    goto :goto_79

    :cond_77
    const/16 p0, 0x34

    :goto_79
    return p0

    :cond_7a
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_81

    const/16 p0, 0x38

    goto :goto_83

    :cond_81
    const/16 p0, 0x30

    :goto_83
    return p0

    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length-srcPos<4: src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", srcPos="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "src.length>8: src.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static binaryToInt([ZIIII)I
    .registers 9

    array-length v0, p0

    if-nez v0, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p4, :cond_8

    :cond_7
    return p2

    :cond_8
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_23

    const/4 v0, 0x0

    :goto_10
    if-ge v0, p4, :cond_22

    add-int v1, v0, p3

    add-int v2, v0, p1

    aget-boolean v2, p0, v2

    shl-int/2addr v2, v1

    const/4 v3, 0x1

    shl-int v1, v3, v1

    not-int v1, v1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_22
    return p2

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+dstPos is greater or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static binaryToLong([ZIJII)J
    .registers 13

    array-length v0, p0

    if-nez v0, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p5, :cond_8

    :cond_7
    return-wide p2

    :cond_8
    add-int/lit8 v0, p5, -0x1

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2a

    const/4 v0, 0x0

    :goto_10
    if-ge v0, p5, :cond_29

    add-int v1, v0, p4

    add-int v2, v0, p1

    aget-boolean v2, p0, v2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_1e

    move-wide v5, v3

    goto :goto_20

    :cond_1e
    const-wide/16 v5, 0x0

    :goto_20
    shl-long/2addr v5, v1

    shl-long v1, v3, v1

    not-long v1, v1

    and-long/2addr p2, v1

    or-long/2addr p2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_29
    return-wide p2

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+dstPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static binaryToShort([ZISII)S
    .registers 9

    array-length v0, p0

    if-nez v0, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p4, :cond_8

    :cond_7
    return p2

    :cond_8
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_24

    const/4 v0, 0x0

    :goto_10
    if-ge v0, p4, :cond_23

    add-int v1, v0, p3

    add-int v2, v0, p1

    aget-boolean v2, p0, v2

    shl-int/2addr v2, v1

    const/4 v3, 0x1

    shl-int v1, v3, v1

    not-int v1, v1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    int-to-short p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_23
    return p2

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+dstPos is greater or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteArrayToInt([BIIII)I
    .registers 9

    array-length v0, p0

    if-nez v0, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p4, :cond_8

    :cond_7
    return p2

    :cond_8
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_28

    const/4 v0, 0x0

    :goto_12
    if-ge v0, p4, :cond_27

    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p3

    add-int v2, v0, p1

    aget-byte v2, p0, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    not-int v1, v1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_27
    return p2

    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+dstPos is greater or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteArrayToLong([BIJII)J
    .registers 12

    array-length v0, p0

    if-nez v0, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p5, :cond_8

    :cond_7
    return-wide p2

    :cond_8
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_28

    const/4 v0, 0x0

    :goto_12
    if-ge v0, p5, :cond_27

    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p4

    add-int v2, v0, p1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    shl-long/2addr v2, v1

    shl-long/2addr v4, v1

    not-long v4, v4

    and-long/2addr p2, v4

    or-long/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_27
    return-wide p2

    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+dstPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteArrayToShort([BISII)S
    .registers 9

    array-length v0, p0

    if-nez v0, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p4, :cond_8

    :cond_7
    return p2

    :cond_8
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_29

    const/4 v0, 0x0

    :goto_12
    if-ge v0, p4, :cond_28

    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p3

    add-int v2, v0, p1

    aget-byte v2, p0, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    not-int v1, v1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    int-to-short p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_28
    return p2

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+dstPos is greater or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteArrayToUuid([BI)Ljava/util/UUID;
    .registers 11

    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_23

    new-instance v0, Ljava/util/UUID;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang3/Conversion;->byteArrayToLong([BIJII)J

    move-result-wide v1

    add-int/lit8 v4, p1, 0x8

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/lang3/Conversion;->byteArrayToLong([BIJII)J

    move-result-wide p0

    invoke-direct {v0, v1, v2, p0, p1}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need at least 16 bytes for UUID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteToBinary(BI[ZII)[Z
    .registers 10

    if-nez p4, :cond_3

    return-object p2

    :cond_3
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_20

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p4, :cond_1f

    add-int v2, v1, p1

    add-int v3, p3, v1

    shr-int v2, p0, v2

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    :goto_1a
    aput-boolean v4, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1f
    return-object p2

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+srcPos is greater or equal to than 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteToHex(BILjava/lang/String;II)Ljava/lang/String;
    .registers 9

    if-nez p4, :cond_3

    return-object p2

    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    :goto_16
    if-ge v1, p4, :cond_37

    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p1

    shr-int v2, p0, v2

    and-int/lit8 v2, v2, 0xf

    add-int v3, p3, v1

    if-ne v3, p2, :cond_2d

    add-int/lit8 p2, p2, 0x1

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_2d
    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+srcPos is greater or equal to than 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hexDigitMsb0ToBinary(C)[Z
    .registers 4

    packed-switch p0, :pswitch_data_b6

    packed-switch p0, :pswitch_data_ce

    packed-switch p0, :pswitch_data_de

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' as a hexadecimal digit"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TTTT:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_2e
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TTTF:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_37
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TTFT:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_40
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TTFF:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_49
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TFTT:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_52
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TFTF:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_5b
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TFFT:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_64
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TFFF:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_6d
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FTTT:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_76
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FTTF:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_7f
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FTFT:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_88
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FTFF:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_91
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FFTT:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_9a
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FFTF:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_a3
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FFFT:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_ac
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FFFF:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    nop

    :pswitch_data_b6
    .packed-switch 0x30
        :pswitch_ac
        :pswitch_a3
        :pswitch_9a
        :pswitch_91
        :pswitch_88
        :pswitch_7f
        :pswitch_76
        :pswitch_6d
        :pswitch_64
        :pswitch_5b
    .end packed-switch

    :pswitch_data_ce
    .packed-switch 0x41
        :pswitch_52
        :pswitch_49
        :pswitch_40
        :pswitch_37
        :pswitch_2e
        :pswitch_25
    .end packed-switch

    :pswitch_data_de
    .packed-switch 0x61
        :pswitch_52
        :pswitch_49
        :pswitch_40
        :pswitch_37
        :pswitch_2e
        :pswitch_25
    .end packed-switch
.end method

.method public static hexDigitMsb0ToInt(C)I
    .registers 4

    packed-switch p0, :pswitch_data_4e

    packed-switch p0, :pswitch_data_66

    packed-switch p0, :pswitch_data_76

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' as a hexadecimal digit"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    const/16 p0, 0xf

    return p0

    :pswitch_28
    const/4 p0, 0x7

    return p0

    :pswitch_2a
    const/16 p0, 0xb

    return p0

    :pswitch_2d
    const/4 p0, 0x3

    return p0

    :pswitch_2f
    const/16 p0, 0xd

    return p0

    :pswitch_32
    const/4 p0, 0x5

    return p0

    :pswitch_34
    const/16 p0, 0x9

    return p0

    :pswitch_37
    const/4 p0, 0x1

    return p0

    :pswitch_39
    const/16 p0, 0xe

    return p0

    :pswitch_3c
    const/4 p0, 0x6

    return p0

    :pswitch_3e
    const/16 p0, 0xa

    return p0

    :pswitch_41
    const/4 p0, 0x2

    return p0

    :pswitch_43
    const/16 p0, 0xc

    return p0

    :pswitch_46
    const/4 p0, 0x4

    return p0

    :pswitch_48
    const/16 p0, 0x8

    return p0

    :pswitch_4b
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_4e
    .packed-switch 0x30
        :pswitch_4b
        :pswitch_48
        :pswitch_46
        :pswitch_43
        :pswitch_41
        :pswitch_3e
        :pswitch_3c
        :pswitch_39
        :pswitch_37
        :pswitch_34
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x41
        :pswitch_32
        :pswitch_2f
        :pswitch_2d
        :pswitch_2a
        :pswitch_28
        :pswitch_25
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x61
        :pswitch_32
        :pswitch_2f
        :pswitch_2d
        :pswitch_2a
        :pswitch_28
        :pswitch_25
    .end packed-switch
.end method

.method public static hexDigitToBinary(C)[Z
    .registers 4

    packed-switch p0, :pswitch_data_b6

    packed-switch p0, :pswitch_data_ce

    packed-switch p0, :pswitch_data_de

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' as a hexadecimal digit"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TTTT:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_2e
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FTTT:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_37
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TFTT:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_40
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FFTT:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_49
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TTFT:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_52
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FTFT:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_5b
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TFFT:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_64
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FFFT:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_6d
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TTTF:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_76
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FTTF:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_7f
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TFTF:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_88
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FFTF:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_91
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TTFF:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_9a
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FTFF:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_a3
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TFFF:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_ac
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FFFF:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    nop

    :pswitch_data_b6
    .packed-switch 0x30
        :pswitch_ac
        :pswitch_a3
        :pswitch_9a
        :pswitch_91
        :pswitch_88
        :pswitch_7f
        :pswitch_76
        :pswitch_6d
        :pswitch_64
        :pswitch_5b
    .end packed-switch

    :pswitch_data_ce
    .packed-switch 0x41
        :pswitch_52
        :pswitch_49
        :pswitch_40
        :pswitch_37
        :pswitch_2e
        :pswitch_25
    .end packed-switch

    :pswitch_data_de
    .packed-switch 0x61
        :pswitch_52
        :pswitch_49
        :pswitch_40
        :pswitch_37
        :pswitch_2e
        :pswitch_25
    .end packed-switch
.end method

.method public static hexDigitToInt(C)I
    .registers 4

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-ltz v0, :cond_9

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' as a hexadecimal digit"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexToByte(Ljava/lang/String;IBII)B
    .registers 9

    if-nez p4, :cond_3

    return p2

    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p3

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2a

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p4, :cond_29

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v2

    const/16 v3, 0xf

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    not-int v1, v1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    int-to-byte p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_29
    return p2

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+dstPos is greater or equal to than 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hexToInt(Ljava/lang/String;IIII)I
    .registers 9

    if-nez p4, :cond_3

    return p2

    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_29

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p4, :cond_28

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v2

    const/16 v3, 0xf

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    not-int v1, v1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_28
    return p2

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+dstPos is greater or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hexToLong(Ljava/lang/String;IJII)J
    .registers 12

    if-nez p5, :cond_3

    return-wide p2

    :cond_3
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_29

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p5, :cond_28

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p4

    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xf

    and-long/2addr v2, v4

    shl-long/2addr v2, v1

    shl-long/2addr v4, v1

    not-long v4, v4

    and-long/2addr p2, v4

    or-long/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_28
    return-wide p2

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+dstPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hexToShort(Ljava/lang/String;ISII)S
    .registers 9

    if-nez p4, :cond_3

    return p2

    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2a

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p4, :cond_29

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v2

    const/16 v3, 0xf

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    not-int v1, v1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    int-to-short p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_29
    return p2

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+dstPos is greater or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intArrayToLong([IIJII)J
    .registers 12

    array-length v0, p0

    if-nez v0, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p5, :cond_8

    :cond_7
    return-wide p2

    :cond_8
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2b

    const/4 v0, 0x0

    :goto_12
    if-ge v0, p5, :cond_2a

    mul-int/lit8 v1, v0, 0x20

    add-int/2addr v1, p4

    add-int v2, v0, p1

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    shl-long/2addr v2, v1

    shl-long/2addr v4, v1

    not-long v4, v4

    and-long/2addr p2, v4

    or-long/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2a
    return-wide p2

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nInts-1)*32+dstPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intToBinary(II[ZII)[Z
    .registers 10

    if-nez p4, :cond_3

    return-object p2

    :cond_3
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_20

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p4, :cond_1f

    add-int v2, v1, p1

    add-int v3, p3, v1

    shr-int v2, p0, v2

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    :goto_1a
    aput-boolean v4, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1f
    return-object p2

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+srcPos is greater or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intToByteArray(II[BII)[B
    .registers 8

    if-nez p4, :cond_3

    return-object p2

    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1f

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p4, :cond_1e

    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p1

    add-int v2, p3, v0

    shr-int v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1e
    return-object p2

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+srcPos is greater or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intToHex(IILjava/lang/String;II)Ljava/lang/String;
    .registers 9

    if-nez p4, :cond_3

    return-object p2

    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    :goto_16
    if-ge v1, p4, :cond_37

    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p1

    shr-int v2, p0, v2

    and-int/lit8 v2, v2, 0xf

    add-int v3, p3, v1

    if-ne v3, p2, :cond_2d

    add-int/lit8 p2, p2, 0x1

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_2d
    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+srcPos is greater or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intToHexDigit(I)C
    .registers 4

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    if-eqz v0, :cond_9

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nibble value not between 0 and 15: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intToHexDigitMsb0(I)C
    .registers 4

    packed-switch p0, :pswitch_data_4a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nibble value not between 0 and 15: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1a
    const/16 p0, 0x66

    return p0

    :pswitch_1d
    const/16 p0, 0x37

    return p0

    :pswitch_20
    const/16 p0, 0x62

    return p0

    :pswitch_23
    const/16 p0, 0x33

    return p0

    :pswitch_26
    const/16 p0, 0x64

    return p0

    :pswitch_29
    const/16 p0, 0x35

    return p0

    :pswitch_2c
    const/16 p0, 0x39

    return p0

    :pswitch_2f
    const/16 p0, 0x31

    return p0

    :pswitch_32
    const/16 p0, 0x65

    return p0

    :pswitch_35
    const/16 p0, 0x36

    return p0

    :pswitch_38
    const/16 p0, 0x61

    return p0

    :pswitch_3b
    const/16 p0, 0x32

    return p0

    :pswitch_3e
    const/16 p0, 0x63

    return p0

    :pswitch_41
    const/16 p0, 0x34

    return p0

    :pswitch_44
    const/16 p0, 0x38

    return p0

    :pswitch_47
    const/16 p0, 0x30

    return p0

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method public static intToShortArray(II[SII)[S
    .registers 9

    if-nez p4, :cond_3

    return-object p2

    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_21

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p4, :cond_20

    mul-int/lit8 v1, v0, 0x10

    add-int/2addr v1, p1

    add-int v2, p3, v0

    const v3, 0xffff

    shr-int v1, p0, v1

    and-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_20
    return-object p2

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nShorts-1)*16+srcPos is greater or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longToBinary(JI[ZII)[Z
    .registers 14

    if-nez p5, :cond_3

    return-object p3

    :cond_3
    add-int/lit8 v0, p5, -0x1

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_26

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p5, :cond_25

    add-int v2, v1, p2

    add-int v3, p4, v1

    const-wide/16 v4, 0x1

    shr-long v6, p0, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    aput-boolean v2, p3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_25
    return-object p3

    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+srcPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longToByteArray(JI[BII)[B
    .registers 13

    if-nez p5, :cond_3

    return-object p3

    :cond_3
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_21

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p5, :cond_20

    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p2

    add-int v2, p4, v0

    const-wide/16 v3, 0xff

    shr-long v5, p0, v1

    and-long/2addr v3, v5

    long-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_20
    return-object p3

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+srcPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longToHex(JILjava/lang/String;II)Ljava/lang/String;
    .registers 13

    if-nez p5, :cond_3

    return-object p3

    :cond_3
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    const/4 v1, 0x0

    :goto_16
    if-ge v1, p5, :cond_3a

    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p2

    const-wide/16 v3, 0xf

    shr-long v5, p0, v2

    and-long v2, v5, v3

    long-to-int v3, v2

    add-int v2, p4, v1

    if-ne v2, p3, :cond_30

    add-int/lit8 p3, p3, 0x1

    invoke-static {v3}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_30
    invoke-static {v3}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+srcPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longToIntArray(JI[III)[I
    .registers 13

    if-nez p5, :cond_3

    return-object p3

    :cond_3
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_20

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p5, :cond_1f

    mul-int/lit8 v1, v0, 0x20

    add-int/2addr v1, p2

    add-int v2, p4, v0

    const-wide/16 v3, -0x1

    shr-long v5, p0, v1

    and-long/2addr v3, v5

    long-to-int v1, v3

    aput v1, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1f
    return-object p3

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nInts-1)*32+srcPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longToShortArray(JI[SII)[S
    .registers 13

    if-nez p5, :cond_3

    return-object p3

    :cond_3
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_22

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p5, :cond_21

    mul-int/lit8 v1, v0, 0x10

    add-int/2addr v1, p2

    add-int v2, p4, v0

    const-wide/32 v3, 0xffff

    shr-long v5, p0, v1

    and-long/2addr v3, v5

    long-to-int v1, v3

    int-to-short v1, v1

    aput-short v1, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_21
    return-object p3

    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nShorts-1)*16+srcPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shortArrayToInt([SIIII)I
    .registers 9

    array-length v0, p0

    if-nez v0, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p4, :cond_8

    :cond_7
    return p2

    :cond_8
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_29

    const/4 v0, 0x0

    :goto_12
    if-ge v0, p4, :cond_28

    mul-int/lit8 v1, v0, 0x10

    add-int/2addr v1, p3

    add-int v2, v0, p1

    aget-short v2, p0, v2

    const v3, 0xffff

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    not-int v1, v1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_28
    return p2

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nShorts-1)*16+dstPos is greater or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shortArrayToLong([SIJII)J
    .registers 12

    array-length v0, p0

    if-nez v0, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p5, :cond_8

    :cond_7
    return-wide p2

    :cond_8
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_29

    const/4 v0, 0x0

    :goto_12
    if-ge v0, p5, :cond_28

    mul-int/lit8 v1, v0, 0x10

    add-int/2addr v1, p4

    add-int v2, v0, p1

    aget-short v2, p0, v2

    int-to-long v2, v2

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    shl-long/2addr v2, v1

    shl-long/2addr v4, v1

    not-long v4, v4

    and-long/2addr p2, v4

    or-long/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_28
    return-wide p2

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nShorts-1)*16+dstPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shortToBinary(SI[ZII)[Z
    .registers 10

    if-nez p4, :cond_3

    return-object p2

    :cond_3
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_20

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p4, :cond_1f

    add-int v2, v1, p1

    add-int v3, p3, v1

    shr-int v2, p0, v2

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    :goto_1a
    aput-boolean v4, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1f
    return-object p2

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+srcPos is greater or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shortToByteArray(SI[BII)[B
    .registers 8

    if-nez p4, :cond_3

    return-object p2

    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1f

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p4, :cond_1e

    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p1

    add-int v2, p3, v0

    shr-int v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1e
    return-object p2

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+srcPos is greater or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shortToHex(SILjava/lang/String;II)Ljava/lang/String;
    .registers 9

    if-nez p4, :cond_3

    return-object p2

    :cond_3
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    :goto_16
    if-ge v1, p4, :cond_37

    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p1

    shr-int v2, p0, v2

    and-int/lit8 v2, v2, 0xf

    add-int v3, p3, v1

    if-ne v3, p2, :cond_2d

    add-int/lit8 p2, p2, 0x1

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_2d
    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+srcPos is greater or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static uuidToByteArray(Ljava/util/UUID;[BII)[B
    .registers 11

    if-nez p3, :cond_3

    return-object p1

    :cond_3
    const/16 v0, 0x10

    if-gt p3, v0, :cond_29

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    const/4 v2, 0x0

    const/16 v6, 0x8

    if-le p3, v6, :cond_13

    const/16 v5, 0x8

    goto :goto_14

    :cond_13
    move v5, p3

    :goto_14
    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->longToByteArray(JI[BII)[B

    if-lt p3, v6, :cond_28

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    const/4 v2, 0x0

    add-int/lit8 v4, p2, 0x8

    add-int/lit8 v5, p3, -0x8

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->longToByteArray(JI[BII)[B

    :cond_28
    return-object p1

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBytes is greater than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
