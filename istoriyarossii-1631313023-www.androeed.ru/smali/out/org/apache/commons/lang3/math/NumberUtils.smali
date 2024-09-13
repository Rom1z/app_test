.class public Lorg/apache/commons/lang3/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(BB)I
    .registers 2

    sub-int/2addr p0, p1

    return p0
.end method

.method public static compare(II)I
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-ge p0, p1, :cond_8

    const/4 p0, -0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static compare(JJ)I
    .registers 5

    cmp-long v0, p0, p2

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    if-gez v0, :cond_a

    const/4 p0, -0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x1

    :goto_b
    return p0
.end method

.method public static compare(SS)I
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-ge p0, p1, :cond_8

    const/4 p0, -0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid number."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "A blank string is not a valid number"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/16 v0, 0xa

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    const-string v1, "0x"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    const/16 v4, 0x10

    if-nez v1, :cond_45

    const-string v1, "0X"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_45

    :cond_26
    const-string v1, "#"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_31

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_31
    const-string v1, "0"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v4, v2, 0x1

    if-le v1, v4, :cond_49

    const/16 v0, 0x8

    move v2, v4

    goto :goto_49

    :cond_45
    :goto_45
    add-int/lit8 v2, v2, 0x2

    :goto_47
    const/16 v0, 0x10

    :cond_49
    :goto_49
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v3, :cond_58

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    :cond_58
    return-object v1
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23a

    const/4 v1, 0x6

    const-string v2, "0x"

    const-string v3, "0X"

    const-string v4, "-0x"

    const-string v5, "-0X"

    const-string v6, "#"

    const-string v7, "-#"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v1, :cond_30

    aget-object v5, v2, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    goto :goto_31

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_30
    const/4 v1, 0x0

    :goto_31
    if-lez v1, :cond_6f

    move v0, v1

    :goto_34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_47

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x30

    if-ne v3, v2, :cond_47

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v0, 0x10

    if-gt v1, v0, :cond_6a

    const/16 v2, 0x37

    if-ne v1, v0, :cond_57

    if-le v3, v2, :cond_57

    goto :goto_6a

    :cond_57
    const/16 v0, 0x8

    if-gt v1, v0, :cond_65

    if-ne v1, v0, :cond_60

    if-le v3, v2, :cond_60

    goto :goto_65

    :cond_60
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_65
    :goto_65
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_6a
    :goto_6a
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_6f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x65

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/16 v7, 0x45

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    const-string v7, " is not a valid number."

    const/4 v8, -0x1

    if-le v5, v8, :cond_c3

    if-le v6, v8, :cond_b8

    if-lt v6, v5, :cond_a3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v6, v9, :cond_a3

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_be

    :cond_a3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b8
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :goto_be
    invoke-static {p0, v5}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_ea

    :cond_c3
    if-le v6, v8, :cond_e5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v6, v5, :cond_d0

    invoke-static {p0, v6}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_e9

    :cond_d0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e5
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_e9
    move-object v9, v0

    :goto_ea
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    if-nez v10, :cond_1b8

    if-eq v1, v4, :cond_1b8

    if-le v6, v8, :cond_108

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v6, v4, :cond_108

    add-int/2addr v6, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11f

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11f

    const/4 v5, 0x1

    goto :goto_120

    :cond_11f
    const/4 v5, 0x0

    :goto_120
    const/16 v6, 0x44

    if-eq v1, v6, :cond_188

    const/16 v6, 0x46

    if-eq v1, v6, :cond_173

    const/16 v6, 0x4c

    if-eq v1, v6, :cond_138

    const/16 v6, 0x64

    if-eq v1, v6, :cond_188

    const/16 v6, 0x66

    if-eq v1, v6, :cond_173

    const/16 v5, 0x6c

    if-ne v1, v5, :cond_1a3

    :cond_138
    if-nez v9, :cond_15e

    if-nez v0, :cond_15e

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_14e

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_154

    :cond_14e
    invoke-static {v4}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15e

    :cond_154
    :try_start_154
    invoke-static {v4}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0
    :try_end_158
    .catch Ljava/lang/NumberFormatException; {:try_start_154 .. :try_end_158} :catch_159

    return-object p0

    :catch_159
    invoke-static {v4}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_15e
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_173
    :try_start_173
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_188

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1
    :try_end_181
    .catch Ljava/lang/NumberFormatException; {:try_start_173 .. :try_end_181} :catch_188

    cmpl-float v1, v1, v11

    if-nez v1, :cond_187

    if-eqz v5, :cond_188

    :cond_187
    return-object v0

    :catch_188
    :cond_188
    :try_start_188
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_19e

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v1
    :try_end_196
    .catch Ljava/lang/NumberFormatException; {:try_start_188 .. :try_end_196} :catch_19e

    float-to-double v1, v1

    cmpl-double v3, v1, v12

    if-nez v3, :cond_19d

    if-eqz v5, :cond_19e

    :cond_19d
    return-object v0

    :catch_19e
    :cond_19e
    :try_start_19e
    invoke-static {v4}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0
    :try_end_1a2
    .catch Ljava/lang/NumberFormatException; {:try_start_19e .. :try_end_1a2} :catch_1a3

    return-object p0

    :catch_1a3
    :cond_1a3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b8
    if-le v6, v8, :cond_1ca

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v6, v1, :cond_1ca

    add-int/2addr v6, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1ca
    if-nez v9, :cond_1dd

    if-nez v0, :cond_1dd

    :try_start_1ce
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1d2
    .catch Ljava/lang/NumberFormatException; {:try_start_1ce .. :try_end_1d2} :catch_1d3

    return-object p0

    :catch_1d3
    :try_start_1d3
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0
    :try_end_1d7
    .catch Ljava/lang/NumberFormatException; {:try_start_1d3 .. :try_end_1d7} :catch_1d8

    return-object p0

    :catch_1d8
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1dd
    invoke-static {v5}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ea

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    const/4 v3, 0x1

    :cond_1ea
    :try_start_1ea
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_211

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v11

    if-nez v2, :cond_202

    if-eqz v3, :cond_211

    :cond_202
    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_211

    return-object v0

    :cond_211
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_235

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v0, v4, v12

    if-nez v0, :cond_221

    if-eqz v3, :cond_235

    :cond_221
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0
    :try_end_231
    .catch Ljava/lang/NumberFormatException; {:try_start_1ea .. :try_end_231} :catch_235

    if-nez p0, :cond_234

    return-object v1

    :cond_234
    return-object v0

    :catch_235
    :cond_235
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_23a
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "A blank string is not a valid number"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getMantissa(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMantissa(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_11

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    if-eqz v1, :cond_19

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_19
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1d
    return-object p0
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_9
    const/4 v2, 0x0

    if-ltz v1, :cond_18

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_15

    return v2

    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public static isCreatable(Ljava/lang/String;)Z
    .registers 18

    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v2, v0

    aget-char v3, v0, v1

    const/16 v4, 0x2d

    const/16 v5, 0x2b

    const/4 v6, 0x1

    if-eq v3, v4, :cond_1d

    aget-char v3, v0, v1

    if-ne v3, v5, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v3, 0x1

    :goto_1e
    if-ne v3, v6, :cond_26

    aget-char v7, v0, v1

    if-ne v7, v5, :cond_26

    const/4 v7, 0x1

    goto :goto_27

    :cond_26
    const/4 v7, 0x0

    :goto_27
    add-int/lit8 v8, v3, 0x1

    const/16 v9, 0x46

    const/16 v10, 0x66

    const/16 v11, 0x39

    const/16 v12, 0x30

    if-le v2, v8, :cond_89

    aget-char v13, v0, v3

    if-ne v13, v12, :cond_89

    aget-char v13, v0, v8

    const/16 v14, 0x78

    if-eq v13, v14, :cond_5f

    aget-char v13, v0, v8

    const/16 v14, 0x58

    if-ne v13, v14, :cond_44

    goto :goto_5f

    :cond_44
    aget-char v13, v0, v8

    invoke-static {v13}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    if-eqz v13, :cond_89

    :goto_4c
    array-length v2, v0

    if-ge v8, v2, :cond_5e

    aget-char v2, v0, v8

    if-lt v2, v12, :cond_5d

    aget-char v2, v0, v8

    const/16 v3, 0x37

    if-le v2, v3, :cond_5a

    goto :goto_5d

    :cond_5a
    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    :cond_5d
    :goto_5d
    return v1

    :cond_5e
    return v6

    :cond_5f
    :goto_5f
    add-int/lit8 v3, v3, 0x2

    if-ne v3, v2, :cond_64

    return v1

    :cond_64
    :goto_64
    array-length v2, v0

    if-ge v3, v2, :cond_88

    aget-char v2, v0, v3

    if-lt v2, v12, :cond_6f

    aget-char v2, v0, v3

    if-le v2, v11, :cond_84

    :cond_6f
    aget-char v2, v0, v3

    const/16 v4, 0x61

    if-lt v2, v4, :cond_79

    aget-char v2, v0, v3

    if-le v2, v10, :cond_84

    :cond_79
    aget-char v2, v0, v3

    const/16 v4, 0x41

    if-lt v2, v4, :cond_87

    aget-char v2, v0, v3

    if-le v2, v9, :cond_84

    goto :goto_87

    :cond_84
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    :cond_87
    :goto_87
    return v1

    :cond_88
    return v6

    :cond_89
    add-int/lit8 v2, v2, -0x1

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_8f
    const/16 v4, 0x45

    const/16 v5, 0x65

    const/16 v9, 0x2e

    if-lt v3, v2, :cond_103

    add-int/lit8 v10, v2, 0x1

    if-ge v3, v10, :cond_a3

    if-eqz v8, :cond_a3

    if-nez v13, :cond_a3

    const/16 v10, 0x66

    goto/16 :goto_103

    :cond_a3
    array-length v2, v0

    if-ge v3, v2, :cond_fd

    aget-char v2, v0, v3

    if-lt v2, v12, :cond_b8

    aget-char v2, v0, v3

    if-gt v2, v11, :cond_b8

    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_JAVA_1_6:Z

    if-eqz v0, :cond_b7

    if-eqz v7, :cond_b7

    if-nez v15, :cond_b7

    return v1

    :cond_b7
    return v6

    :cond_b8
    aget-char v2, v0, v3

    if-eq v2, v5, :cond_fc

    aget-char v2, v0, v3

    if-ne v2, v4, :cond_c1

    goto :goto_fc

    :cond_c1
    aget-char v2, v0, v3

    if-ne v2, v9, :cond_cc

    if-nez v15, :cond_cb

    if-eqz v14, :cond_ca

    goto :goto_cb

    :cond_ca
    return v13

    :cond_cb
    :goto_cb
    return v1

    :cond_cc
    if-nez v8, :cond_e7

    aget-char v2, v0, v3

    const/16 v4, 0x64

    if-eq v2, v4, :cond_e6

    aget-char v2, v0, v3

    const/16 v4, 0x44

    if-eq v2, v4, :cond_e6

    aget-char v2, v0, v3

    const/16 v10, 0x66

    if-eq v2, v10, :cond_e6

    aget-char v2, v0, v3

    const/16 v4, 0x46

    if-ne v2, v4, :cond_e7

    :cond_e6
    return v13

    :cond_e7
    aget-char v2, v0, v3

    const/16 v4, 0x6c

    if-eq v2, v4, :cond_f5

    aget-char v0, v0, v3

    const/16 v2, 0x4c

    if-ne v0, v2, :cond_f4

    goto :goto_f5

    :cond_f4
    return v1

    :cond_f5
    :goto_f5
    if-eqz v13, :cond_fc

    if-nez v14, :cond_fc

    if-nez v15, :cond_fc

    const/4 v1, 0x1

    :cond_fc
    :goto_fc
    return v1

    :cond_fd
    if-nez v8, :cond_102

    if-eqz v13, :cond_102

    const/4 v1, 0x1

    :cond_102
    return v1

    :cond_103
    :goto_103
    const/16 v16, 0x46

    aget-char v6, v0, v3

    if-lt v6, v12, :cond_114

    aget-char v6, v0, v3

    if-gt v6, v11, :cond_114

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    const/4 v8, 0x0

    const/4 v13, 0x1

    goto :goto_14f

    :cond_114
    aget-char v6, v0, v3

    if-ne v6, v9, :cond_124

    if-nez v15, :cond_123

    if-eqz v14, :cond_11d

    goto :goto_123

    :cond_11d
    const/16 v5, 0x2b

    const/16 v6, 0x2d

    const/4 v15, 0x1

    goto :goto_14f

    :cond_123
    :goto_123
    return v1

    :cond_124
    aget-char v6, v0, v3

    if-eq v6, v5, :cond_143

    aget-char v5, v0, v3

    if-ne v5, v4, :cond_12d

    goto :goto_143

    :cond_12d
    aget-char v4, v0, v3

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_13b

    aget-char v4, v0, v3

    const/16 v6, 0x2d

    if-ne v4, v6, :cond_13a

    goto :goto_13d

    :cond_13a
    return v1

    :cond_13b
    const/16 v6, 0x2d

    :goto_13d
    if-nez v8, :cond_140

    return v1

    :cond_140
    const/4 v8, 0x0

    const/4 v13, 0x0

    goto :goto_14f

    :cond_143
    :goto_143
    const/16 v5, 0x2b

    const/16 v6, 0x2d

    if-eqz v14, :cond_14a

    return v1

    :cond_14a
    if-nez v13, :cond_14d

    return v1

    :cond_14d
    const/4 v8, 0x1

    const/4 v14, 0x1

    :goto_14f
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x1

    const/16 v9, 0x46

    goto/16 :goto_8f
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->isCreatable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isParsable(Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_17

    return v1

    :cond_17
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_2b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_26

    return v1

    :cond_26
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_2b
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static max(BBB)B
    .registers 3

    if-le p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-le p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs max([B)B
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, 0x1

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_13

    aget-byte v2, p0, v1

    if-le v2, v0, :cond_10

    aget-byte v0, p0, v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return v0
.end method

.method public static max(DDD)D
    .registers 6

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs max([D)D
    .registers 7

    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_20

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_15

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_15
    aget-wide v3, p0, v2

    cmpl-double v5, v3, v0

    if-lez v5, :cond_1d

    aget-wide v0, p0, v2

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_20
    return-wide v0
.end method

.method public static max(FFF)F
    .registers 3

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static varargs max([F)F
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_15

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :cond_15
    aget v2, p0, v1

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1d

    aget v0, p0, v1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    return v0
.end method

.method public static max(III)I
    .registers 3

    if-le p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-le p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs max([I)I
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_13

    aget v2, p0, v1

    if-le v2, v0, :cond_10

    aget v0, p0, v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return v0
.end method

.method public static max(JJJ)J
    .registers 7

    cmp-long v0, p2, p0

    if-lez v0, :cond_5

    move-wide p0, p2

    :cond_5
    cmp-long p2, p4, p0

    if-lez p2, :cond_a

    goto :goto_b

    :cond_a
    move-wide p4, p0

    :goto_b
    return-wide p4
.end method

.method public static varargs max([J)J
    .registers 7

    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_15

    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-lez v5, :cond_12

    aget-wide v0, p0, v2

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    return-wide v0
.end method

.method public static max(SSS)S
    .registers 3

    if-le p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-le p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs max([S)S
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-short v0, p0, v0

    const/4 v1, 0x1

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_13

    aget-short v2, p0, v1

    if-le v2, v0, :cond_10

    aget-short v0, p0, v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return v0
.end method

.method public static min(BBB)B
    .registers 3

    if-ge p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-ge p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs min([B)B
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, 0x1

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_13

    aget-byte v2, p0, v1

    if-ge v2, v0, :cond_10

    aget-byte v0, p0, v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return v0
.end method

.method public static min(DDD)D
    .registers 6

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs min([D)D
    .registers 7

    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_20

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_15

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_15
    aget-wide v3, p0, v2

    cmpg-double v5, v3, v0

    if-gez v5, :cond_1d

    aget-wide v0, p0, v2

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_20
    return-wide v0
.end method

.method public static min(FFF)F
    .registers 3

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static varargs min([F)F
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_15

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :cond_15
    aget v2, p0, v1

    cmpg-float v2, v2, v0

    if-gez v2, :cond_1d

    aget v0, p0, v1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    return v0
.end method

.method public static min(III)I
    .registers 3

    if-ge p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-ge p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs min([I)I
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_13

    aget v2, p0, v1

    if-ge v2, v0, :cond_10

    aget v0, p0, v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return v0
.end method

.method public static min(JJJ)J
    .registers 7

    cmp-long v0, p2, p0

    if-gez v0, :cond_5

    move-wide p0, p2

    :cond_5
    cmp-long p2, p4, p0

    if-gez p2, :cond_a

    goto :goto_b

    :cond_a
    move-wide p4, p0

    :goto_b
    return-wide p4
.end method

.method public static varargs min([J)J
    .registers 7

    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_15

    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-gez v5, :cond_12

    aget-wide v0, p0, v2

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    return-wide v0
.end method

.method public static min(SSS)S
    .registers 3

    if-ge p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-ge p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs min([S)S
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-short v0, p0, v0

    const/4 v1, 0x1

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_13

    aget-short v2, p0, v1

    if-ge v2, v0, :cond_10

    aget-short v0, p0, v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return v0
.end method

.method public static toByte(Ljava/lang/String;)B
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result p0

    return p0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .registers 2

    if-nez p0, :cond_3

    return p1

    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method public static toDouble(Ljava/lang/String;)D
    .registers 3

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .registers 3

    if-nez p0, :cond_3

    return-wide p1

    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide p0

    :catch_8
    return-wide p1
.end method

.method public static toFloat(Ljava/lang/String;)F
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .registers 2

    if-nez p0, :cond_3

    return p1

    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method public static toInt(Ljava/lang/String;)I
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .registers 2

    if-nez p0, :cond_3

    return p1

    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method public static toLong(Ljava/lang/String;)J
    .registers 3

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .registers 3

    if-nez p0, :cond_3

    return-wide p1

    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide p0

    :catch_8
    return-wide p1
.end method

.method public static toShort(Ljava/lang/String;)S
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result p0

    return p0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .registers 2

    if-nez p0, :cond_3

    return p1

    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method private static validateArray(Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "The Array must not be null"

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    new-array p0, v1, [Ljava/lang/Object;

    const-string v1, "Array cannot be empty."

    invoke-static {v0, v1, p0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static withDecimalsParsing(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge p1, v2, :cond_2b

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    if-eqz v2, :cond_18

    add-int/lit8 v1, v1, 0x1

    :cond_18
    if-le v1, v3, :cond_1b

    return v0

    :cond_1b
    if-nez v2, :cond_28

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_28

    return v0

    :cond_28
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2b
    return v3
.end method
