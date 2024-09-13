.class public Lorg/apache/commons/lang3/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final CR:Ljava/lang/String; = "\r"

.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1

.field public static final LF:Ljava/lang/String; = "\n"

.field private static final PAD_LIMIT:I = 0x2000

.field public static final SPACE:Ljava/lang/String; = " "


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const-string v0, "..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    const-string v0, "..."

    invoke-static {p0, v0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static abbreviate(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 11

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b3

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_b3

    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    add-int v2, v0, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-lt p3, v1, :cond_9f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, p3, :cond_22

    return-object p0

    :cond_22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le p2, v5, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_2c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, p2

    sub-int v6, p3, v0

    if-ge v5, v6, :cond_3a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v6

    :cond_3a
    if-gt p2, v1, :cond_50

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_50
    if-lt p3, v2, :cond_8b

    add-int/2addr p3, p2

    sub-int/2addr p3, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p3, v0, :cond_72

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v6}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_72
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v6

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "Minimum abbreviation width with offset is %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "Minimum abbreviation width is %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b3
    :goto_b3
    return-object p0
.end method

.method public static abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_47

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_47

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-ge p2, v0, :cond_1c

    goto :goto_47

    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v1, v0, 0x2

    rem-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_47
    :goto_47
    return-object p0
.end method

.method private static varargs appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_37

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_37

    :cond_f
    if-eqz p3, :cond_24

    array-length v0, p3

    if-lez v0, :cond_24

    array-length v0, p3

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_24

    aget-object v2, p3, v1

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_21

    return-object p0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_37
    :goto_37
    return-object p0
.end method

.method public static varargs appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs appendIfMissingIgnoreCase(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_34

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_34

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v3

    if-ne v2, v3, :cond_15

    return-object p0

    :cond_15
    new-array v4, v0, [I

    aput v3, v4, v1

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    const/4 v3, 0x1

    :goto_1e
    if-ge v2, v0, :cond_2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    aput v5, v4, v3

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    move v3, v6

    goto :goto_1e

    :cond_2f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v1, v3}, Ljava/lang/String;-><init>([III)V

    :cond_34
    :goto_34
    return-object p0
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static center(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_19

    if-gtz p1, :cond_5

    goto :goto_19

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v1, p1, v0

    if-gtz v1, :cond_e

    return-object p0

    :cond_e
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {p0, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :cond_19
    :goto_19
    return-object p0
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_21

    if-gtz p1, :cond_5

    goto :goto_21

    :cond_5
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p2, " "

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v1, p1, v0

    if-gtz v1, :cond_16

    return-object p0

    :cond_16
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {p0, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_21
    :goto_21
    return-object p0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-ne v0, v4, :cond_20

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_1d

    if-ne v0, v2, :cond_1c

    goto :goto_1d

    :cond_1c
    return-object p0

    :cond_1d
    :goto_1d
    const-string p0, ""

    return-object p0

    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_36

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3a

    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    :cond_36
    if-eq v4, v3, :cond_3a

    add-int/lit8 v0, v0, 0x1

    :cond_3a
    :goto_3a
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_e

    const-string p0, ""

    return-object p0

    :cond_e
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v3, 0xa

    if-ne p0, v3, :cond_2c

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v3, 0xd

    if-ne p0, v3, :cond_2c

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    return-object v2
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-nez p0, :cond_d

    if-eqz p2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    if-nez p1, :cond_13

    if-eqz p2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    :cond_13
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-nez p0, :cond_d

    if-eqz p2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    if-nez p1, :cond_13

    if-eqz p2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    :cond_13
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static contains(Ljava/lang/CharSequence;I)Z
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result p0

    if-ltz p0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    if-nez p1, :cond_6

    goto :goto_d

    :cond_6
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    if-ltz p0, :cond_d

    const/4 v0, 0x1

    :cond_d
    :goto_d
    return v0
.end method

.method public static containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSequenceUtils;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result p0

    return p0
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[C)Z
    .registers 13

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_44

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_44

    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    array-length v2, p1

    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v4, v2, -0x1

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v0, :cond_44

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/4 v7, 0x0

    :goto_1f
    if-ge v7, v2, :cond_41

    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3e

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3d

    if-ne v7, v4, :cond_2f

    return v9

    :cond_2f
    if-ge v5, v3, :cond_3e

    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v10, v5, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_3e

    :cond_3d
    return v9

    :cond_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_44
    :goto_44
    return v1
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 6

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1f

    :cond_e
    array-length v0, p1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_1f

    aget-object v3, p1, v2

    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1f
    :goto_1f
    return v1
.end method

.method public static containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    if-nez p1, :cond_6

    goto :goto_24

    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v8, v1, v7

    const/4 v9, 0x0

    :goto_11
    if-gt v9, v8, :cond_24

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v3, v9

    move-object v4, p1

    move v6, v7

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_24
    :goto_24
    return v0
.end method

.method public static containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs containsNone(Ljava/lang/CharSequence;[C)Z
    .registers 13

    const/4 v0, 0x1

    if-eqz p0, :cond_3c

    if-nez p1, :cond_6

    goto :goto_3c

    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    array-length v3, p1

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v1, :cond_3c

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/4 v8, 0x0

    :goto_18
    if-ge v8, v3, :cond_39

    aget-char v9, p1, v8

    if-ne v9, v7, :cond_36

    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_35

    if-ne v8, v4, :cond_27

    return v5

    :cond_27
    if-ge v6, v2, :cond_36

    add-int/lit8 v9, v8, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_36

    :cond_35
    return v5

    :cond_36
    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    :cond_39
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_3c
    :goto_3c
    return v0
.end method

.method public static containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->containsOnly(Ljava/lang/CharSequence;[C)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs containsOnly(Ljava/lang/CharSequence;[C)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    if-nez p0, :cond_6

    goto :goto_1a

    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    return v2

    :cond_e
    array-length v1, p1

    if-nez v1, :cond_12

    return v0

    :cond_12
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfAnyBut(Ljava/lang/CharSequence;[C)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    :goto_1a
    return v0
.end method

.method public static containsWhitespace(Ljava/lang/CharSequence;)Z
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_1e

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1e
    return v1
.end method

.method private static convertRemainingAccentCharacters(Ljava/lang/StringBuilder;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_2b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x141

    if-ne v1, v2, :cond_18

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4c

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_18
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x142

    if-ne v1, v2, :cond_28

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x6c

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_28
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2b
    return-void
.end method

.method public static countMatches(Ljava/lang/CharSequence;C)I
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_17

    add-int/lit8 v0, v0, 0x1

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    return v0
.end method

.method public static countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_f

    :cond_1e
    return v0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public static defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object p0, p1

    :cond_7
    return-object p0
.end method

.method public static defaultIfEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object p0, p1

    :cond_7
    return-object p0
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    move-object p0, p1

    :cond_3
    return-object p0
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ge v3, v0, :cond_28

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_25

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v1, v4

    move v4, v5

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_28
    if-ne v4, v0, :cond_2b

    return-object p0

    :cond_2b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_6

    return-object p0

    :cond_6
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_10

    const-string p0, ""

    return-object p0

    :cond_10
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    if-nez p1, :cond_6

    goto :goto_28

    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_11

    return v0

    :cond_11
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v4, v0, v1

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object v2, p0

    move v3, p2

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p0

    return p0

    :cond_28
    :goto_28
    if-nez p0, :cond_2d

    if-nez p1, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    return v0
.end method

.method public static varargs endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 6

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1f

    :cond_e
    array-length v0, p1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_1f

    aget-object v3, p1, v2

    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1f
    :goto_1f
    return v1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p0, :cond_30

    if-nez p1, :cond_a

    goto :goto_30

    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_15

    return v0

    :cond_15
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_22

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_22

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_22
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p0

    return p0

    :cond_30
    :goto_30
    return v0
.end method

.method public static varargs equalsAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    array-length v0, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_18

    aget-object v3, p1, v2

    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    return v1
.end method

.method public static varargs equalsAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    array-length v0, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_18

    aget-object v3, p1, v2

    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    return v1
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_23

    if-nez p1, :cond_7

    goto :goto_23

    :cond_7
    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v0, v2, :cond_15

    return v1

    :cond_15
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p0

    return p0

    :cond_23
    :goto_23
    if-ne p0, p1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method public static varargs getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    if-eqz p0, :cond_22

    array-length v1, p0

    if-nez v1, :cond_8

    goto :goto_22

    :cond_8
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference([Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_18

    aget-object v1, p0, v3

    if-nez v1, :cond_15

    return-object v0

    :cond_15
    aget-object p0, p0, v3

    return-object p0

    :cond_18
    if-nez v1, :cond_1b

    return-object v0

    :cond_1b
    aget-object p0, p0, v3

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    :goto_22
    return-object v0
.end method

.method public static getDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_23

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFuzzyDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/Locale;)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_4e

    if-eqz p1, :cond_4e

    if-eqz p2, :cond_46

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/high16 p2, -0x80000000

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_45

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x0

    :goto_27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_42

    if-nez v5, :cond_42

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v4, v6, :cond_3f

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, 0x1

    if-ne p2, v3, :cond_3d

    add-int/lit8 v2, v2, 0x2

    :cond_3d
    const/4 v5, 0x1

    move p2, v3

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_45
    return v2

    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Locale must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Strings must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getJaroWinklerDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)D
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_5d

    if-eqz p1, :cond_5d

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_13

    return-wide v3

    :cond_13
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    int-to-double v3, p0

    div-double v3, v1, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    int-to-double p0, p0

    div-double p0, v1, p0

    add-double/2addr v3, p0

    const/4 p0, 0x1

    aget p0, v0, p0

    int-to-double p0, p0

    sub-double p0, v1, p0

    div-double/2addr p0, v1

    add-double/2addr v3, p0

    const-wide/high16 p0, 0x4008000000000000L    # 3.0

    div-double/2addr v3, p0

    const-wide p0, 0x3fe6666666666666L    # 0.7

    cmpg-double v1, v3, p0

    if-gez v1, :cond_37

    goto :goto_52

    :cond_37
    const-wide p0, 0x3fb999999999999aL    # 0.1

    const/4 v1, 0x3

    aget v1, v0, v1

    int-to-double v1, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v1, v5, v1

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-double v0, v0

    mul-double p0, p0, v0

    sub-double/2addr v5, v3

    mul-double p0, p0, v5

    add-double/2addr v3, p0

    :goto_52
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    mul-double v3, v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, p0

    return-wide v0

    :cond_5d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Strings must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_65

    if-eqz p1, :cond_65

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v0, :cond_f

    return v1

    :cond_f
    if-nez v1, :cond_12

    return v0

    :cond_12
    if-le v0, v1, :cond_1c

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_1f

    :cond_1c
    move-object v13, p1

    move-object p1, p0

    move-object p0, v13

    :goto_1f
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_25
    if-gt v4, v0, :cond_2c

    aput v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_2c
    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_2e
    if-gt v5, v1, :cond_62

    aget v6, v2, v3

    add-int/lit8 v7, v5, -0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    aput v5, v2, v3

    const/4 v8, 0x1

    :goto_3b
    if-gt v8, v0, :cond_5f

    aget v9, v2, v8

    add-int/lit8 v10, v8, -0x1

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v7, :cond_49

    const/4 v11, 0x0

    goto :goto_4a

    :cond_49
    const/4 v11, 0x1

    :goto_4a
    aget v10, v2, v10

    add-int/2addr v10, v4

    aget v12, v2, v8

    add-int/2addr v12, v4

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v6, v11

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v2, v8

    add-int/lit8 v8, v8, 0x1

    move v6, v9

    goto :goto_3b

    :cond_5f
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_62
    aget p0, v2, v0

    return p0

    :cond_65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Strings must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move/from16 v0, p2

    if-eqz p0, :cond_c2

    if-eqz p1, :cond_c2

    if-ltz v0, :cond_ba

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, -0x1

    if-nez v1, :cond_18

    if-gt v2, v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, -0x1

    :goto_17
    return v2

    :cond_18
    if-nez v2, :cond_1f

    if-gt v1, v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, -0x1

    :goto_1e
    return v1

    :cond_1f
    sub-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v0, :cond_28

    return v3

    :cond_28
    if-le v1, v2, :cond_35

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v5, v1

    move v4, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_3b

    :cond_35
    move v4, v1

    move v5, v2

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    :goto_3b
    add-int/lit8 v6, v4, 0x1

    new-array v7, v6, [I

    new-array v8, v6, [I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_49
    if-ge v12, v9, :cond_50

    aput v12, v7, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_49

    :cond_50
    const v12, 0x7fffffff

    invoke-static {v7, v9, v6, v12}, Ljava/util/Arrays;->fill([IIII)V

    invoke-static {v8, v12}, Ljava/util/Arrays;->fill([II)V

    const/4 v6, 0x1

    :goto_5a
    if-gt v6, v5, :cond_b2

    add-int/lit8 v9, v6, -0x1

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    aput v6, v8, v11

    sub-int v13, v6, v0

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    sub-int v14, v12, v0

    if-le v6, v14, :cond_70

    move v14, v4

    goto :goto_76

    :cond_70
    add-int v14, v6, v0

    invoke-static {v4, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    :goto_76
    if-le v13, v14, :cond_79

    return v3

    :cond_79
    if-le v13, v10, :cond_7f

    add-int/lit8 v15, v13, -0x1

    aput v12, v8, v15

    :cond_7f
    :goto_7f
    if-gt v13, v14, :cond_a6

    add-int/lit8 v15, v13, -0x1

    invoke-interface {v2, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_8e

    aget v11, v7, v15

    aput v11, v8, v13

    goto :goto_9f

    :cond_8e
    aget v11, v8, v15

    aget v12, v7, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aget v12, v7, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v11, v10

    aput v11, v8, v13

    :goto_9f
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x0

    const v12, 0x7fffffff

    goto :goto_7f

    :cond_a6
    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x0

    const v12, 0x7fffffff

    move-object/from16 v16, v8

    move-object v8, v7

    move-object/from16 v7, v16

    goto :goto_5a

    :cond_b2
    aget v1, v7, v4

    if-gt v1, v0, :cond_b9

    aget v0, v7, v4

    return v0

    :cond_b9
    return v3

    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threshold must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;I)I
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public static indexOf(Ljava/lang/CharSequence;II)I
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3

    if-eqz p0, :cond_b

    if-nez p1, :cond_5

    goto :goto_b

    :cond_5
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0

    :cond_b
    :goto_b
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 3

    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    :cond_5
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0

    :cond_a
    :goto_a
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfAny(Ljava/lang/CharSequence;[C)I

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, -0x1

    return p0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[C)I
    .registers 13

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_43

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_43

    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    array-length v3, p1

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v0, :cond_43

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/4 v8, 0x0

    :goto_20
    if-ge v8, v3, :cond_40

    aget-char v9, p1, v8

    if-ne v9, v7, :cond_3d

    if-ge v6, v2, :cond_3c

    if-ge v8, v4, :cond_3c

    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_3c

    add-int/lit8 v9, v8, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_3d

    :cond_3c
    return v6

    :cond_3d
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_43
    :goto_43
    return v1
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .registers 9

    const/4 v0, -0x1

    if-eqz p0, :cond_27

    if-nez p1, :cond_6

    goto :goto_27

    :cond_6
    array-length v1, p1

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const v5, 0x7fffffff

    :goto_f
    if-ge v4, v1, :cond_23

    aget-object v6, p1, v4

    if-nez v6, :cond_16

    goto :goto_20

    :cond_16
    invoke-static {p0, v6, v2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v6

    if-ne v6, v0, :cond_1d

    goto :goto_20

    :cond_1d
    if-ge v6, v5, :cond_20

    move v5, v6

    :cond_20
    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_23
    if-ne v5, v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v5

    :cond_27
    :goto_27
    return v0
.end method

.method public static indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 9

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_3f

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3f

    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v0, :cond_3f

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {p1, v4, v2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v5

    if-ltz v5, :cond_22

    const/4 v5, 0x1

    goto :goto_23

    :cond_22
    const/4 v5, 0x0

    :goto_23
    add-int/lit8 v6, v3, 0x1

    if-ge v6, v0, :cond_3a

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eqz v5, :cond_3d

    invoke-static {p1, v4, v2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v4

    if-gez v4, :cond_3d

    return v3

    :cond_3a
    if-nez v5, :cond_3d

    return v3

    :cond_3d
    move v3, v6

    goto :goto_14

    :cond_3f
    :goto_3f
    return v1
.end method

.method public static varargs indexOfAnyBut(Ljava/lang/CharSequence;[C)I
    .registers 13

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_43

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_43

    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    array-length v3, p1

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v0, :cond_43

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/4 v8, 0x0

    :goto_20
    if-ge v8, v3, :cond_42

    aget-char v9, p1, v8

    if-ne v9, v7, :cond_3f

    if-ge v6, v2, :cond_3c

    if-ge v8, v4, :cond_3c

    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_3c

    add-int/lit8 v9, v8, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_3f

    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_42
    return v6

    :cond_43
    :goto_43
    return v1
.end method

.method public static indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 6

    const/4 v0, -0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_32

    if-nez p1, :cond_a

    goto :goto_32

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_21

    goto :goto_24

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lt v1, p1, :cond_32

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-ge v1, p0, :cond_31

    goto :goto_32

    :cond_31
    return v0

    :cond_32
    :goto_32
    return v1
.end method

.method public static varargs indexOfDifference([Ljava/lang/CharSequence;)I
    .registers 12

    const/4 v0, -0x1

    if-eqz p0, :cond_5f

    array-length v1, p0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_8

    goto :goto_5f

    :cond_8
    array-length v1, p0

    const v3, 0x7fffffff

    array-length v4, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_12
    if-ge v6, v4, :cond_2f

    aget-object v10, p0, v6

    if-nez v10, :cond_1b

    const/4 v3, 0x0

    const/4 v9, 0x1

    goto :goto_2c

    :cond_1b
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v7, 0x0

    :goto_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_2f
    if-nez v7, :cond_5f

    if-nez v8, :cond_36

    if-nez v9, :cond_36

    goto :goto_5f

    :cond_36
    if-nez v3, :cond_39

    return v5

    :cond_39
    const/4 v4, 0x0

    const/4 v6, -0x1

    :goto_3b
    if-ge v4, v3, :cond_59

    aget-object v7, p0, v5

    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/4 v9, 0x1

    :goto_44
    if-ge v9, v1, :cond_53

    aget-object v10, p0, v9

    invoke-interface {v10, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v10, v7, :cond_50

    move v6, v4

    goto :goto_53

    :cond_50
    add-int/lit8 v9, v9, 0x1

    goto :goto_44

    :cond_53
    :goto_53
    if-eq v6, v0, :cond_56

    goto :goto_59

    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_59
    :goto_59
    if-ne v6, v0, :cond_5e

    if-eq v3, v8, :cond_5e

    return v3

    :cond_5e
    return v6

    :cond_5f
    :goto_5f
    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 12

    const/4 v0, -0x1

    if-eqz p0, :cond_33

    if-nez p1, :cond_6

    goto :goto_33

    :cond_6
    if-gez p2, :cond_9

    const/4 p2, 0x0

    :cond_9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-le p2, v1, :cond_17

    return v0

    :cond_17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1e

    return p2

    :cond_1e
    :goto_1e
    if-ge p2, v1, :cond_33

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object v3, p0

    move v5, p2

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_30

    return p2

    :cond_30
    add-int/lit8 p2, p2, 0x1

    goto :goto_1e

    :cond_33
    :goto_33
    return v0
.end method

.method public static varargs isAllBlank([Ljava/lang/CharSequence;)Z
    .registers 6

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_19

    aget-object v4, p0, v3

    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    return v2

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    return v1
.end method

.method public static varargs isAllEmpty([Ljava/lang/CharSequence;)Z
    .registers 6

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_19

    aget-object v4, p0, v3

    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    return v2

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    return v1
.end method

.method public static isAllLowerCase(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_21

    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1f

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-nez v3, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    return v0
.end method

.method public static isAllUpperCase(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_21

    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1f

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    return v0
.end method

.method public static isAlpha(Ljava/lang/CharSequence;)Z
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_1d

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public static isAlphaSpace(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_21

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1e

    return v0

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public static isAlphanumeric(Ljava/lang/CharSequence;)Z
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_1d

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public static isAlphanumericSpace(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_21

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1e

    return v0

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs isAnyBlank([Ljava/lang/CharSequence;)Z
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    array-length v0, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_19

    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    return v1
.end method

.method public static varargs isAnyEmpty([Ljava/lang/CharSequence;)Z
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    array-length v0, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_19

    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    return v1
.end method

.method public static isAsciiPrintable(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_19

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang3/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-nez v3, :cond_16

    return v0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p0, :cond_1c

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1c

    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_1c

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_19

    return v2

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 1

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isMixedCase(Ljava/lang/CharSequence;)Z
    .registers 8

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3c

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    goto :goto_3c

    :cond_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_16
    if-ge v3, v0, :cond_37

    if-eqz v4, :cond_1d

    if-eqz v5, :cond_1d

    return v2

    :cond_1d
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_29

    const/4 v4, 0x1

    goto :goto_34

    :cond_29
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_34

    const/4 v5, 0x1

    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_37
    if-eqz v4, :cond_3c

    if-eqz v5, :cond_3c

    const/4 v1, 0x1

    :cond_3c
    :goto_3c
    return v1
.end method

.method public static varargs isNoneBlank([Ljava/lang/CharSequence;)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isAnyBlank([Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static varargs isNoneEmpty([Ljava/lang/CharSequence;)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isAnyEmpty([Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNumeric(Ljava/lang/CharSequence;)Z
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_1d

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public static isNumericSpace(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_21

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1e

    return v0

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public static isWhitespace(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_19

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_16

    return v0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public static join(Ljava/lang/Iterable;C)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v0, :cond_28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v0, :cond_28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    if-eqz p1, :cond_33

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([BC)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([BCII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([BCII)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    :goto_13
    if-ge v0, p3, :cond_22

    if-le v0, p2, :cond_1a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    aget-byte v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([CC)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([CCII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([CCII)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    :goto_13
    if-ge v0, p3, :cond_22

    if-le v0, p2, :cond_1a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    aget-char v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([DC)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([DCII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([DCII)Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    :goto_13
    if-ge v0, p3, :cond_22

    if-le v0, p2, :cond_1a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([FC)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([FCII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([FCII)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    :goto_13
    if-ge v0, p3, :cond_22

    if-le v0, p2, :cond_1a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([IC)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([ICII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([ICII)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    :goto_13
    if-ge v0, p3, :cond_22

    if-le v0, p2, :cond_1a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([JC)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([JCII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([JCII)Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    :goto_13
    if-ge v0, p3, :cond_22

    if-le v0, p2, :cond_1a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs join([Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    :goto_13
    if-ge v0, p3, :cond_26

    if-le v0, p2, :cond_1a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    aget-object v2, p0, v0

    if-eqz v2, :cond_23

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, ""

    if-nez p1, :cond_9

    move-object p1, v0

    :cond_9
    sub-int v1, p3, p2

    if-gtz v1, :cond_e

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, p2

    :goto_16
    if-ge v1, p3, :cond_29

    if-le v1, p2, :cond_1d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    aget-object v2, p0, v1

    if-eqz v2, :cond_26

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([SC)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([SCII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([SCII)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    :goto_13
    if-ge v0, p3, :cond_22

    if-le v0, p2, :cond_1a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    aget-short v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs joinWith(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_35

    const-string v0, ""

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Object varargs must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;I)I
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;II)I
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, -0x1

    return p0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 3

    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    :cond_5
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0

    :cond_a
    :goto_a
    const/4 p0, -0x1

    return p0
.end method

.method public static varargs lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .registers 7

    const/4 v0, -0x1

    if-eqz p0, :cond_1d

    if-nez p1, :cond_6

    goto :goto_1d

    :cond_6
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1d

    aget-object v3, p1, v2

    if-nez v3, :cond_f

    goto :goto_1a

    :cond_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p0, v3, v4}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v3

    if-le v3, v0, :cond_1a

    move v0, v3

    :cond_1a
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    :goto_1d
    return v0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, -0x1

    return p0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 11

    const/4 v0, -0x1

    if-eqz p0, :cond_39

    if-nez p1, :cond_6

    goto :goto_39

    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_1a

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr p2, v1

    :cond_1a
    if-gez p2, :cond_1d

    return v0

    :cond_1d
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_24

    return p2

    :cond_24
    :goto_24
    if-ltz p2, :cond_39

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object v2, p0

    move v4, p2

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_36

    return p2

    :cond_36
    add-int/lit8 p2, p2, -0x1

    goto :goto_24

    :cond_39
    :goto_39
    return v0
.end method

.method public static lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result p0

    return p0
.end method

.method public static left(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-gez p1, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_10

    return-object p0

    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    if-gtz v0, :cond_d

    return-object p0

    :cond_d
    const/16 v1, 0x2000

    if-le v0, v1, :cond_1a

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p2, " "

    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p1, v1

    if-gtz v1, :cond_19

    return-object p0

    :cond_19
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2a

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_2a

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    if-ne v1, v0, :cond_31

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    if-ge v1, v0, :cond_3c

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3c
    new-array p1, v1, [C

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    :goto_42
    if-ge v3, v1, :cond_4d

    rem-int v2, v3, v0

    aget-char v2, p2, v2

    aput-char v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_4d
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static length(Ljava/lang/CharSequence;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    :goto_8
    return p0
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I
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

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-ltz p2, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_d

    goto :goto_21

    :cond_d
    if-gez p1, :cond_10

    const/4 p1, 0x0

    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, p1

    if-gt v0, p2, :cond_1c

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    :goto_21
    const-string p0, ""

    return-object p0
.end method

.method public static normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_13
    if-ge v4, v0, :cond_41

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_2d

    add-int/lit8 v5, v6, 0x1

    const/16 v7, 0xa0

    if-ne v8, v7, :cond_27

    const/16 v8, 0x20

    :cond_27
    aput-char v8, v1, v6

    move v6, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_3e

    :cond_2d
    if-nez v7, :cond_3c

    if-nez v5, :cond_3c

    add-int/lit8 v8, v6, 0x1

    const-string v9, " "

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v1, v6

    move v6, v8

    :cond_3c
    add-int/lit8 v7, v7, 0x1

    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_41
    if-eqz v5, :cond_46

    const-string p0, ""

    return-object p0

    :cond_46
    new-instance p0, Ljava/lang/String;

    if-lez v7, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    sub-int/2addr v6, v2

    invoke-direct {p0, v1, v3, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result p0

    return p0
.end method

.method private static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I
    .registers 7

    const/4 v0, -0x1

    if-eqz p0, :cond_32

    if-eqz p1, :cond_32

    if-gtz p2, :cond_8

    goto :goto_32

    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    if-eqz p3, :cond_15

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :cond_15
    return v2

    :cond_16
    if-eqz p3, :cond_1c

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_1c
    if-eqz p3, :cond_25

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_2b

    :cond_25
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    :goto_2b
    if-gez v0, :cond_2e

    return v0

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_1c

    :cond_32
    :goto_32
    return v0
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 9

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-nez p1, :cond_8

    const-string p1, ""

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gez p2, :cond_10

    const/4 p2, 0x0

    :cond_10
    if-le p2, v0, :cond_13

    move p2, v0

    :cond_13
    if-gez p3, :cond_16

    const/4 p3, 0x0

    :cond_16
    if-le p3, v0, :cond_19

    move p3, v0

    :cond_19
    if-le p2, p3, :cond_1e

    move v4, p3

    move p3, p2

    move p2, v4

    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, p2

    sub-int/2addr v0, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static varargs prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_37

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_37

    :cond_f
    if-eqz p3, :cond_24

    array-length v0, p3

    if-lez v0, :cond_24

    array-length v0, p3

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_24

    aget-object v2, p3, v1

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_21

    return-object p0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_37
    :goto_37
    return-object p0
.end method

.method public static varargs prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs prependIfMissingIgnoreCase(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .registers 7

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    goto :goto_2c

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_15
    array-length v3, p0

    if-ge v1, v3, :cond_26

    aget-char v3, p0, v1

    if-eq v3, p1, :cond_23

    add-int/lit8 v3, v2, 0x1

    aget-char v4, p0, v1

    aput-char v4, p0, v2

    move v2, v3

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_26
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, v0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_2c
    :goto_2c
    return-object p0
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    :cond_d
    const/4 v0, -0x1

    const-string v1, ""

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_14
    :goto_14
    return-object p0
.end method

.method public static removeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_21

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_21
    :goto_21
    return-object p0
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_21

    :cond_d
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_21
    :goto_21
    return-object p0
.end method

.method public static removeFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    :cond_d
    const/4 v0, -0x1

    const-string v1, ""

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_14
    :goto_14
    return-object p0
.end method

.method public static removePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1b

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1b
    :goto_1b
    return-object p0
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1b

    :cond_d
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1b
    :goto_1b
    return-object p0
.end method

.method public static repeat(CI)Ljava/lang/String;
    .registers 3

    if-gtz p1, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    new-array v0, p1, [C

    add-int/lit8 p1, p1, -0x1

    :goto_9
    if-ltz p1, :cond_10

    aput-char p0, v0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_9

    :cond_10
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-gtz p1, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_64

    if-nez v0, :cond_13

    goto :goto_64

    :cond_13
    const/4 v2, 0x0

    if-ne v0, v1, :cond_23

    const/16 v3, 0x2000

    if-gt p1, v3, :cond_23

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    mul-int v3, v0, p1

    if-eq v0, v1, :cond_5c

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_2f
    if-ge v2, p1, :cond_37

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-array v1, v3, [C

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v4

    :goto_49
    if-ltz p1, :cond_56

    aput-char v0, v1, p1

    add-int/lit8 v2, p1, 0x1

    aput-char p0, v1, v2

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_49

    :cond_56
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_5c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    :cond_64
    :goto_64
    return-object p0
.end method

.method public static repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_1d

    if-nez p1, :cond_5

    goto :goto_1d

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    :goto_1d
    invoke-static {p0, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 12

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    if-eqz p2, :cond_6b

    if-nez p3, :cond_11

    goto :goto_6b

    :cond_11
    if-eqz p4, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    :cond_1c
    move-object p4, p0

    :goto_1d
    const/4 v0, 0x0

    invoke-virtual {p4, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_26

    return-object p0

    :cond_26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-gez v4, :cond_32

    const/4 v4, 0x0

    :cond_32
    const/16 v5, 0x40

    if-gez p3, :cond_39

    const/16 v5, 0x10

    goto :goto_3d

    :cond_39
    if-le p3, v5, :cond_3c

    goto :goto_3d

    :cond_3c
    move v5, p3

    :goto_3d
    mul-int v4, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_49
    if-eq v1, v2, :cond_60

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v1, v3

    add-int/2addr p3, v2

    if-nez p3, :cond_5b

    goto :goto_60

    :cond_5b
    invoke-virtual {p4, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_49

    :cond_60
    :goto_60
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6b
    :goto_6b
    return-object p0
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    if-nez p2, :cond_7

    goto :goto_b

    :cond_7
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_b
    :goto_b
    return-object p0
.end method

.method public static replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_43

    :cond_d
    if-nez p2, :cond_11

    const-string p2, ""

    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_20
    if-ge v3, v1, :cond_3d

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_37

    if-ge v6, v0, :cond_35

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_35
    const/4 v4, 0x1

    goto :goto_3a

    :cond_37
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_3d
    if-eqz v4, :cond_43

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_43
    :goto_43
    return-object p0
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 16

    if-eqz p0, :cond_114

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_114

    if-eqz p1, :cond_114

    array-length v0, p1

    if-eqz v0, :cond_114

    if-eqz p2, :cond_114

    array-length v0, p2

    if-nez v0, :cond_14

    goto/16 :goto_114

    :cond_14
    if-ltz p4, :cond_10c

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_ed

    new-array v1, v0, [Z

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    :goto_21
    const/4 v7, 0x1

    if-ge v4, v0, :cond_4d

    aget-boolean v8, v1, v4

    if-nez v8, :cond_4a

    aget-object v8, p1, v4

    if-eqz v8, :cond_4a

    aget-object v8, p1, v4

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4a

    aget-object v8, p2, v4

    if-nez v8, :cond_39

    goto :goto_4a

    :cond_39
    aget-object v8, p1, v4

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v3, :cond_44

    aput-boolean v7, v1, v4

    goto :goto_4a

    :cond_44
    if-eq v5, v3, :cond_48

    if-ge v8, v5, :cond_4a

    :cond_48
    move v6, v4

    move v5, v8

    :cond_4a
    :goto_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_4d
    if-ne v5, v3, :cond_50

    return-object p0

    :cond_50
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_52
    array-length v9, p1

    if-ge v4, v9, :cond_73

    aget-object v9, p1, v4

    if-eqz v9, :cond_70

    aget-object v9, p2, v4

    if-nez v9, :cond_5e

    goto :goto_70

    :cond_5e
    aget-object v9, p2, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    aget-object v10, p1, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    if-lez v9, :cond_70

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v8, v9

    :cond_70
    :goto_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_73
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x5

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v4

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :cond_88
    if-eq v5, v3, :cond_d0

    :goto_8a
    if-ge v4, v5, :cond_96

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    :cond_96
    aget-object v4, p2, v6

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v5

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v9, 0x0

    :goto_a5
    if-ge v9, v0, :cond_88

    aget-boolean v10, v1, v9

    if-nez v10, :cond_cd

    aget-object v10, p1, v9

    if-eqz v10, :cond_cd

    aget-object v10, p1, v9

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_cd

    aget-object v10, p2, v9

    if-nez v10, :cond_bc

    goto :goto_cd

    :cond_bc
    aget-object v10, p1, v9

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v3, :cond_c7

    aput-boolean v7, v1, v9

    goto :goto_cd

    :cond_c7
    if-eq v5, v3, :cond_cb

    if-ge v10, v5, :cond_cd

    :cond_cb
    move v6, v9

    move v5, v10

    :cond_cd
    :goto_cd
    add-int/lit8 v9, v9, 0x1

    goto :goto_a5

    :cond_d0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_d4
    if-ge v4, v0, :cond_e0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_d4

    :cond_e0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p3, :cond_e7

    return-object p0

    :cond_e7
    sub-int/2addr p4, v7

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_ed
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Search and Replace array lengths don\'t match: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " vs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Aborting to protect against StackOverflowError - output of one loop is the input of another"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_114
    :goto_114
    return-object p0
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    array-length v0, p1

    :goto_5
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    if-nez p2, :cond_7

    goto :goto_b

    :cond_7
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_b
    :goto_b
    return-object p0
.end method

.method public static replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceOnceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_15

    if-eqz p1, :cond_15

    if-nez p2, :cond_7

    goto :goto_15

    :cond_7
    const/16 v0, 0x20

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_15
    :goto_15
    return-object p0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-gez p1, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_10

    return-object p0

    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    if-gtz v0, :cond_d

    return-object p0

    :cond_d
    const/16 v1, 0x2000

    if-le v0, v1, :cond_1a

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p2, " "

    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p1, v1

    if-gtz v1, :cond_19

    return-object p0

    :cond_19
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2a

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_2a

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    if-ne v1, v0, :cond_31

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    if-ge v1, v0, :cond_3c

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3c
    new-array p1, v1, [C

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    :goto_42
    if-ge v3, v1, :cond_4d

    rem-int v2, v3, v0

    aget-char v2, p2, v2

    aput-char v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_4d
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rotate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz p1, :cond_29

    if-eqz v0, :cond_29

    rem-int/2addr p1, v0

    if-nez p1, :cond_10

    goto :goto_29

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    neg-int p1, p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_29
    :goto_29
    return-object p0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 10

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    aget-char v2, p0, v1

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_1f
    array-length v5, p0

    if-ge v4, v5, :cond_51

    aget-char v5, p0, v4

    invoke-static {v5}, Ljava/lang/Character;->getType(C)I

    move-result v5

    if-ne v5, v2, :cond_2b

    goto :goto_4e

    :cond_2b
    if-eqz p1, :cond_42

    const/4 v6, 0x2

    if-ne v5, v6, :cond_42

    if-ne v2, v3, :cond_42

    add-int/lit8 v2, v4, -0x1

    if-eq v2, v1, :cond_4d

    new-instance v6, Ljava/lang/String;

    sub-int v7, v2, v1

    invoke-direct {v6, p0, v1, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_4d

    :cond_42
    new-instance v2, Ljava/lang/String;

    sub-int v6, v4, v1

    invoke-direct {v2, p0, v1, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v4

    :cond_4d
    :goto_4d
    move v2, v5

    :goto_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_51
    new-instance p1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, v1

    invoke-direct {p1, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    :cond_d
    if-eqz p1, :cond_6e

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_6e

    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_24
    if-ge v4, v1, :cond_61

    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, -0x1

    if-le v4, v7, :cond_58

    if-le v4, v5, :cond_43

    add-int/lit8 v6, v6, 0x1

    if-ne v6, p2, :cond_3b

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :cond_3b
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_43
    if-eqz p3, :cond_55

    add-int/lit8 v6, v6, 0x1

    if-ne v6, p2, :cond_52

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v1

    goto :goto_55

    :cond_52
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    :goto_55
    add-int v5, v4, v0

    goto :goto_24

    :cond_58
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5f
    move v4, v1

    goto :goto_24

    :cond_61
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_6e
    :goto_6e
    invoke-static {p0, v0, p2, p3}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .registers 12

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_18
    if-ge v4, v0, :cond_36

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, p1, :cond_31

    if-nez v5, :cond_24

    if-eqz p2, :cond_2d

    :cond_24
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    :cond_2d
    add-int/lit8 v7, v4, 0x1

    move v4, v7

    goto :goto_18

    :cond_31
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_18

    :cond_36
    if-nez v5, :cond_3c

    if-eqz p2, :cond_43

    if-eqz v6, :cond_43

    :cond_3c
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 14

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_45

    const/4 p1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_1b
    if-ge p1, v0, :cond_ad

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_40

    if-nez v4, :cond_2b

    if-eqz p3, :cond_3c

    :cond_2b
    add-int/lit8 v4, v7, 0x1

    if-ne v7, p2, :cond_32

    move p1, v0

    const/4 v5, 0x0

    goto :goto_33

    :cond_32
    const/4 v5, 0x1

    :goto_33
    invoke-virtual {p0, v6, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v4

    const/4 v4, 0x0

    :cond_3c
    add-int/lit8 v6, p1, 0x1

    move p1, v6

    goto :goto_1b

    :cond_40
    add-int/lit8 p1, p1, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_1b

    :cond_45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v3, :cond_7a

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_54
    if-ge v4, v0, :cond_a9

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, p1, :cond_75

    if-nez v5, :cond_60

    if-eqz p3, :cond_71

    :cond_60
    add-int/lit8 v5, v8, 0x1

    if-ne v8, p2, :cond_67

    move v4, v0

    const/4 v6, 0x0

    goto :goto_68

    :cond_67
    const/4 v6, 0x1

    :goto_68
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v5

    const/4 v5, 0x0

    :cond_71
    add-int/lit8 v7, v4, 0x1

    move v4, v7

    goto :goto_54

    :cond_75
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_54

    :cond_7a
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_7f
    if-ge v4, v0, :cond_a9

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_a4

    if-nez v5, :cond_8f

    if-eqz p3, :cond_a0

    :cond_8f
    add-int/lit8 v5, v8, 0x1

    if-ne v8, p2, :cond_96

    move v4, v0

    const/4 v6, 0x0

    goto :goto_97

    :cond_96
    const/4 v6, 0x1

    :goto_97
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v5

    const/4 v5, 0x0

    :cond_a0
    add-int/lit8 v7, v4, 0x1

    move v4, v7

    goto :goto_7f

    :cond_a4
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_7f

    :cond_a9
    move p1, v4

    move v4, v5

    move v5, v6

    move v6, v7

    :cond_ad
    if-nez v4, :cond_b3

    if-eqz p3, :cond_ba

    if-eqz v5, :cond_ba

    :cond_b3
    invoke-virtual {p0, v6, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ba
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    if-nez p1, :cond_6

    goto :goto_1f

    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_11

    return v0

    :cond_11
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object v3, p0

    move v4, p2

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p0

    return p0

    :cond_1f
    :goto_1f
    if-nez p0, :cond_24

    if-nez p1, :cond_24

    const/4 v0, 0x1

    :cond_24
    return v0
.end method

.method public static varargs startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 6

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1f

    :cond_e
    array-length v0, p1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_1f

    aget-object v3, p1, v2

    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1f
    :goto_1f
    return v1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stripAccents(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->convertRemainingAccentCharacters(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_17

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_17

    :cond_6
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_16

    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_16
    return-object v1

    :cond_17
    :goto_17
    return-object p0
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3a

    :cond_9
    if-nez p1, :cond_1c

    :goto_b
    if-eqz v0, :cond_35

    add-int/lit8 p1, v0, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_35

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    return-object p0

    :cond_23
    :goto_23
    if-eqz v0, :cond_35

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    :cond_35
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3a
    :goto_3a
    return-object p0
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_36

    :cond_9
    const/4 v1, 0x0

    if-nez p1, :cond_1b

    :goto_c
    if-eq v1, v0, :cond_32

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_32

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    return-object p0

    :cond_22
    :goto_22
    if-eq v1, v0, :cond_32

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_32

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_32
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_36
    :goto_36
    return-object p0
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_a

    :cond_5
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_10

    :cond_f
    move-object v0, p0

    :goto_10
    return-object v0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-gez p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    :cond_b
    if-gez p1, :cond_e

    const/4 p1, 0x0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_17

    const-string p0, ""

    return-object p0

    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-gez p2, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    :cond_b
    if-gez p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1c
    if-le p1, p2, :cond_21

    const-string p0, ""

    return-object p0

    :cond_21
    const/4 v0, 0x0

    if-gez p1, :cond_25

    const/4 p1, 0x0

    :cond_25
    if-gez p2, :cond_28

    const/4 p2, 0x0

    :cond_28
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const-string v0, ""

    if-nez p1, :cond_c

    return-object v0

    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    return-object v0

    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_10

    return-object v1

    :cond_10
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_23

    goto :goto_2d

    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    :goto_2d
    return-object v1
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-nez p1, :cond_9

    goto :goto_1f

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, ""

    return-object p0

    :cond_12
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1a

    return-object p0

    :cond_1a
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1f
    :goto_1f
    return-object p0
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_15

    return-object p0

    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1a
    :goto_1a
    return-object p0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1, p1}, Lorg/apache/commons/lang3/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    if-eqz p1, :cond_24

    if-nez p2, :cond_8

    goto :goto_24

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v2, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    :goto_24
    return-object v0
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_58

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_58

    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_19

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    :cond_19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_27
    sub-int v6, v1, v2

    if-ge v5, v6, :cond_44

    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-gez v5, :cond_32

    goto :goto_44

    :cond_32
    add-int/2addr v5, v3

    invoke-virtual {p0, p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-gez v6, :cond_3a

    goto :goto_44

    :cond_3a
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v5, v6, v2

    goto :goto_27

    :cond_44
    :goto_44
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4b

    return-object v0

    :cond_4b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v4, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_58
    :goto_58
    return-object v0
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ge v3, v0, :cond_41

    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    goto :goto_36

    :cond_21
    invoke-static {v5}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    goto :goto_36

    :cond_2c
    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    :cond_36
    :goto_36
    add-int/lit8 v6, v4, 0x1

    aput v5, v1, v4

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    move v4, v6

    goto :goto_10

    :cond_41
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([III)V

    return-object p0
.end method

.method public static toCodePoints(Ljava/lang/CharSequence;)[I
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object p0

    :cond_d
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    new-array v2, v0, [I

    const/4 v3, 0x0

    :goto_1d
    if-ge v1, v0, :cond_2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    aput v4, v2, v1

    aget v4, v2, v1

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2f
    return-object v2
.end method

.method public static toEncodedString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    if-eqz p1, :cond_5

    goto :goto_9

    :cond_5
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    :goto_9
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_f

    :cond_8
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_f
    return-object v0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p0, 0x0

    :cond_b
    return-object p0
.end method

.method public static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/StringUtils;->truncate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static truncate(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_34

    if-ltz p2, :cond_2c

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_11

    const-string p0, ""

    return-object p0

    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_27

    add-int/2addr p2, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_22
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxWith cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_34

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_34

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v3

    if-ne v2, v3, :cond_15

    return-object p0

    :cond_15
    new-array v4, v0, [I

    aput v3, v4, v1

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    const/4 v3, 0x1

    :goto_1e
    if-ge v2, v0, :cond_2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    aput v5, v4, v3

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    move v3, v6

    goto :goto_1e

    :cond_2f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v1, v3}, Ljava/lang/String;-><init>([III)V

    :cond_34
    :goto_34
    return-object p0
.end method

.method public static unwrap(Ljava/lang/String;C)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    if-nez p1, :cond_9

    goto :goto_28

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_28

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_28
    :goto_28
    return-object p0
.end method

.method public static unwrap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2f

    :cond_d
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2f

    if-eq v1, v2, :cond_2f

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2f
    :goto_2f
    return-object p0
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Ljava/lang/String;C)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-nez p1, :cond_9

    goto :goto_1b

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1b
    :goto_1b
    return-object p0
.end method

.method public static wrap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    :cond_d
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_15
    :goto_15
    return-object p0
.end method

.method public static wrapIfMissing(Ljava/lang/String;C)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    if-nez p1, :cond_9

    goto :goto_34

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, p1, :cond_1e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eq p0, p1, :cond_30

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_34
    :goto_34
    return-object p0
.end method

.method public static wrapIfMissing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_39

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_35

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_39
    :goto_39
    return-object p0
.end method
