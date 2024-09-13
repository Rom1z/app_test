.class public Lorg/apache/commons/text/WordUtils;
.super Ljava/lang/Object;
.source "WordUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abbreviate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-lt p2, v1, :cond_7

    const/4 v3, 0x1

    goto :goto_8

    :cond_7
    const/4 v3, 0x0

    :goto_8
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "upper value cannot be less than -1"

    invoke-static {v3, v5, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ge p2, p1, :cond_15

    if-ne p2, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :cond_15
    :goto_15
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "upper value is less than lower value"

    invoke-static {v0, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    return-object p0

    :cond_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_2d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :cond_2d
    if-eq p2, v1, :cond_35

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_39

    :cond_35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-static {p0, v3, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p1

    if-ne p1, v1, :cond_5b

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eq p2, p0, :cond_7a

    invoke-static {p3}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7a

    :cond_5b
    if-le p1, p2, :cond_6c

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7a

    :cond_6c
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7a
    :goto_7a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs capitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 11

    if-nez p1, :cond_4

    const/4 v0, -0x1

    goto :goto_5

    :cond_4
    array-length v0, p1

    :goto_5
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    if-nez v0, :cond_e

    goto :goto_52

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_18
    const/4 v6, 0x1

    :goto_19
    if-ge v4, v0, :cond_4d

    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    invoke-static {v7, p1}, Lorg/apache/commons/text/WordUtils;->isDelimiter(I[C)Z

    move-result v8

    if-eqz v8, :cond_30

    add-int/lit8 v6, v5, 0x1

    aput v7, v1, v5

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    move v5, v6

    goto :goto_18

    :cond_30
    if-eqz v6, :cond_42

    invoke-static {v7}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    aput v6, v1, v5

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    move v5, v7

    const/4 v6, 0x0

    goto :goto_19

    :cond_42
    add-int/lit8 v8, v5, 0x1

    aput v7, v1, v5

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    move v5, v8

    goto :goto_19

    :cond_4d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v5}, Ljava/lang/String;-><init>([III)V

    :cond_52
    :goto_52
    return-object p0
.end method

.method public static capitalizeFully(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/text/WordUtils;->capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, -0x1

    goto :goto_5

    :cond_4
    array-length v0, p1

    :goto_5
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    if-nez v0, :cond_e

    goto :goto_16

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    :cond_16
    :goto_16
    return-object p0
.end method

.method public static varargs containsAllWords(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 8

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_45

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_45

    :cond_e
    array-length v0, p1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_43

    aget-object v3, p1, v2

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    return v1

    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".*\\b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\\b.*"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_40

    return v1

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_43
    const/4 p0, 0x1

    return p0

    :cond_45
    :goto_45
    return v1
.end method

.method public static initials(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/text/WordUtils;->initials(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs initials(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 11

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    if-eqz p1, :cond_f

    array-length v0, p1

    if-nez v0, :cond_f

    const-string p0, ""

    return-object p0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [C

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_1d
    if-ge v4, v0, :cond_36

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lorg/apache/commons/text/WordUtils;->isDelimiter(C[C)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/4 v6, 0x1

    goto :goto_33

    :cond_2b
    if-eqz v6, :cond_33

    add-int/lit8 v6, v5, 0x1

    aput-char v7, v1, v5

    move v5, v6

    const/4 v6, 0x0

    :cond_33
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_36
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static isDelimiter(C[C)Z
    .registers 6

    if-nez p1, :cond_7

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    return p0

    :cond_7
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_15

    aget-char v3, p1, v2

    if-ne p0, v3, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_15
    return v1
.end method

.method public static isDelimiter(I[C)Z
    .registers 5

    if-nez p1, :cond_7

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result p0

    return p0

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_17

    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v2

    if-ne v2, p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    return v0
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_11
    if-ge v4, v0, :cond_4f

    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v6

    :goto_21
    const/4 v2, 0x0

    goto :goto_44

    :cond_23
    invoke-static {v6}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v6

    goto :goto_21

    :cond_2e
    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v7

    if-eqz v7, :cond_40

    if-eqz v2, :cond_3b

    invoke-static {v6}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v6

    goto :goto_21

    :cond_3b
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v6

    goto :goto_44

    :cond_40
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    :goto_44
    add-int/lit8 v7, v5, 0x1

    aput v6, v1, v5

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    move v5, v7

    goto :goto_11

    :cond_4f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3, v5}, Ljava/lang/String;-><init>([III)V

    return-object p0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/text/WordUtils;->uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 11

    if-nez p1, :cond_4

    const/4 v0, -0x1

    goto :goto_5

    :cond_4
    array-length v0, p1

    :goto_5
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    if-nez v0, :cond_e

    goto :goto_52

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_18
    const/4 v6, 0x1

    :goto_19
    if-ge v4, v0, :cond_4d

    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    invoke-static {v7, p1}, Lorg/apache/commons/text/WordUtils;->isDelimiter(I[C)Z

    move-result v8

    if-eqz v8, :cond_30

    add-int/lit8 v6, v5, 0x1

    aput v7, v1, v5

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    move v5, v6

    goto :goto_18

    :cond_30
    if-eqz v6, :cond_42

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    aput v6, v1, v5

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    move v5, v7

    const/4 v6, 0x0

    goto :goto_19

    :cond_42
    add-int/lit8 v8, v5, 0x1

    aput v7, v1, v5

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    move v5, v8

    goto :goto_19

    :cond_4d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v5}, Ljava/lang/String;-><init>([III)V

    :cond_52
    :goto_52
    return-object p0
.end method

.method public static wrap(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 5

    const-string v0, " "

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 12

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-nez p2, :cond_a

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p2

    :cond_a
    const/4 v0, 0x1

    if-ge p1, v0, :cond_e

    const/4 p1, 0x1

    :cond_e
    invoke-static {p4}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p4, " "

    :cond_16
    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_26
    if-ge v1, v0, :cond_aa

    const/4 v3, -0x1

    add-int v4, v1, p1

    add-int/lit8 v5, v4, 0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    if-nez v3, :cond_4b

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_26

    :cond_4b
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v1

    :cond_50
    sub-int v6, v0, v1

    if-gt v6, p1, :cond_55

    goto :goto_aa

    :cond_55
    :goto_55
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_55

    :cond_61
    if-lt v3, v1, :cond_71

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6d
    add-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_26

    :cond_71
    if-eqz p3, :cond_7f

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v4

    goto :goto_26

    :cond_7f
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, p1

    :cond_93
    if-ltz v3, :cond_a0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6d

    :cond_a0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    goto/16 :goto_26

    :cond_aa
    :goto_aa
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
