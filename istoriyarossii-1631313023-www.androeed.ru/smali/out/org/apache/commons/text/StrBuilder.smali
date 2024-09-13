.class public Lorg/apache/commons/text/StrBuilder;
.super Ljava/lang/Object;
.source "StrBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/text/Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/StrBuilder$StrBuilderWriter;,
        Lorg/apache/commons/text/StrBuilder$StrBuilderReader;,
        Lorg/apache/commons/text/StrBuilder$StrBuilderTokenizer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Appendable;",
        "Ljava/io/Serializable;",
        "Lorg/apache/commons/text/Builder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final CAPACITY:I = 0x20

.field private static final serialVersionUID:J = 0x69dea51fe8fc7e4bL


# instance fields
.field buffer:[C

.field private newLine:Ljava/lang/String;

.field private nullText:Ljava/lang/String;

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_7

    const/16 p1, 0x20

    :cond_7
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    if-nez p1, :cond_c

    new-array p1, v0, [C

    iput-object p1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    goto :goto_18

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    new-array v0, v1, [C

    iput-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    :goto_18
    return-void
.end method

.method private deleteImpl(III)V
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    return-void
.end method

.method private replaceImpl(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/text/StrBuilder;
    .registers 15

    if-eqz p1, :cond_32

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-nez v0, :cond_7

    goto :goto_32

    :cond_7
    if-nez p2, :cond_b

    const/4 v0, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_f
    move v7, p3

    :goto_10
    if-ge v7, p4, :cond_32

    if-eqz p5, :cond_32

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v1, v7, p3, p4}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v8

    if-lez v8, :cond_2f

    add-int v3, v7, v8

    move-object v1, p0

    move v2, v7

    move v4, v8

    move-object v5, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    sub-int/2addr p4, v8

    add-int/2addr p4, v0

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x1

    if-lez p5, :cond_2f

    add-int/lit8 p5, p5, -0x1

    :cond_2f
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_32
    :goto_32
    return-object p0
.end method

.method private replaceImpl(IIILjava/lang/String;I)V
    .registers 9

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v0, p3

    add-int/2addr v0, p5

    if-eq p5, p3, :cond_15

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object p3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int v1, p1, p5

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p2

    invoke-static {p3, p2, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_15
    if-lez p5, :cond_1d

    const/4 p2, 0x0

    iget-object p3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p4, p2, p5, p3, p1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(C)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/CharSequence;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Lorg/apache/commons/text/StrBuilder;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    aput-char p1, v0, v1

    return-object p0
.end method

.method public append(D)Lorg/apache/commons/text/StrBuilder;
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(F)Lorg/apache/commons/text/StrBuilder;
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(I)Lorg/apache/commons/text/StrBuilder;
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(J)Lorg/apache/commons/text/StrBuilder;
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/apache/commons/text/StrBuilder;
    .registers 3

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v0, p1, Lorg/apache/commons/text/StrBuilder;

    if-eqz v0, :cond_12

    check-cast p1, Lorg/apache/commons/text/StrBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Lorg/apache/commons/text/StrBuilder;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_12
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1d

    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuilder;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_1d
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_28

    check-cast p1, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_28
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_33

    check-cast p1, Ljava/nio/CharBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/nio/CharBuffer;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_33
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Lorg/apache/commons/text/StrBuilder;
    .registers 4

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;
    .registers 3

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .registers 6

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_21
    return-object p0
.end method

.method public append(Ljava/lang/String;II)Lorg/apache/commons/text/StrBuilder;
    .registers 7

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_7
    if-ltz p2, :cond_37

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_37

    if-ltz p3, :cond_2f

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_2f

    if-lez p3, :cond_2e

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, p3

    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_2e
    return-object p0

    :cond_2f
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "length must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "startIndex must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/StringBuffer;)Lorg/apache/commons/text/StrBuilder;
    .registers 6

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_21

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_21
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/text/StrBuilder;
    .registers 7

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_7
    if-ltz p2, :cond_37

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gt p2, v0, :cond_37

    if-ltz p3, :cond_2f

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gt v0, v1, :cond_2f

    if-lez p3, :cond_2e

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, p3

    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_2e
    return-object p0

    :cond_2f
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "length must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "startIndex must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public append(Ljava/lang/StringBuilder;)Lorg/apache/commons/text/StrBuilder;
    .registers 6

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_21

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_21
    return-object p0
.end method

.method public append(Ljava/lang/StringBuilder;II)Lorg/apache/commons/text/StrBuilder;
    .registers 7

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_7
    if-ltz p2, :cond_37

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_37

    if-ltz p3, :cond_2f

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_2f

    if-lez p3, :cond_2e

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, p3

    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_2e
    return-object p0

    :cond_2f
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "length must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "startIndex must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public append(Ljava/nio/CharBuffer;)Lorg/apache/commons/text/StrBuilder;
    .registers 6

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result p1

    add-int/2addr v3, p1

    iget-object p1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    goto :goto_39

    :cond_32
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    :goto_39
    return-object p0
.end method

.method public append(Ljava/nio/CharBuffer;II)Lorg/apache/commons/text/StrBuilder;
    .registers 7

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    if-ltz p2, :cond_45

    if-gt p2, v0, :cond_45

    if-ltz p3, :cond_3d

    add-int v1, p2, p3

    if-gt v1, v0, :cond_3d

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result p1

    add-int/2addr v2, p1

    add-int/2addr v2, p2

    iget-object p1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {v1, v2, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    goto :goto_54

    :cond_3d
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "length must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "startIndex must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/text/StrBuilder;

    :goto_54
    return-object p0
.end method

.method public append(Lorg/apache/commons/text/StrBuilder;)Lorg/apache/commons/text/StrBuilder;
    .registers 6

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    if-lez v0, :cond_23

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object p1, p1, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_23
    return-object p0
.end method

.method public append(Lorg/apache/commons/text/StrBuilder;II)Lorg/apache/commons/text/StrBuilder;
    .registers 7

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_7
    if-ltz p2, :cond_37

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_37

    if-ltz p3, :cond_2f

    add-int v0, p2, p3

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_2f

    if-lez p3, :cond_2e

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, p3

    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Lorg/apache/commons/text/StrBuilder;->getChars(II[CI)V

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_2e
    return-object p0

    :cond_2f
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "length must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "startIndex must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public append(Z)Lorg/apache/commons/text/StrBuilder;
    .registers 6

    const/16 v0, 0x65

    if-eqz p1, :cond_2e

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object p1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/16 v3, 0x74

    aput-char v3, p1, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/16 v3, 0x72

    aput-char v3, p1, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/16 v3, 0x75

    aput-char v3, p1, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    aput-char v0, p1, v2

    goto :goto_5f

    :cond_2e
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object p1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/16 v3, 0x66

    aput-char v3, p1, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/16 v3, 0x61

    aput-char v3, p1, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/16 v3, 0x6c

    aput-char v3, p1, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/16 v3, 0x73

    aput-char v3, p1, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    aput-char v0, p1, v1

    :goto_5f
    return-object p0
.end method

.method public append([C)Lorg/apache/commons/text/StrBuilder;
    .registers 6

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_7
    array-length v0, p1

    if-lez v0, :cond_1e

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_1e
    return-object p0
.end method

.method public append([CII)Lorg/apache/commons/text/StrBuilder;
    .registers 6

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->appendNull()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_7
    if-ltz p2, :cond_40

    array-length v0, p1

    if-gt p2, v0, :cond_40

    if-ltz p3, :cond_29

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_29

    if-lez p3, :cond_28

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_28
    return-object p0

    :cond_29
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid startIndex: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendAll(Ljava/lang/Iterable;)Lorg/apache/commons/text/StrBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lorg/apache/commons/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    goto :goto_6

    :cond_14
    return-object p0
.end method

.method public appendAll(Ljava/util/Iterator;)Lorg/apache/commons/text/StrBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)",
            "Lorg/apache/commons/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_10

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    goto :goto_2

    :cond_10
    return-object p0
.end method

.method public varargs appendAll([Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/apache/commons/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_11

    array-length v0, p1

    if-lez v0, :cond_11

    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    return-object p0
.end method

.method public appendFixedWidthPadLeft(IIC)Lorg/apache/commons/text/StrBuilder;
    .registers 4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/text/StrBuilder;
    .registers 10

    if-lez p2, :cond_44

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_13
    if-nez p1, :cond_17

    const-string p1, ""

    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_27

    sub-int p3, v0, p2

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p1, p3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_3f

    :cond_27
    sub-int v1, p2, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v1, :cond_37

    iget-object v4, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v5, v3

    aput-char p3, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_37
    iget-object p3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v3, v1

    invoke-virtual {p1, v2, v0, p3, v3}, Ljava/lang/String;->getChars(II[CI)V

    :goto_3f
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_44
    return-object p0
.end method

.method public appendFixedWidthPadRight(IIC)Lorg/apache/commons/text/StrBuilder;
    .registers 4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/text/StrBuilder;
    .registers 9

    if-lez p2, :cond_41

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_13
    if-nez p1, :cond_17

    const-string p1, ""

    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_26

    iget-object p3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p1, v1, p2, p3, v0}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_3c

    :cond_26
    sub-int v2, p2, v0

    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v4, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p1, v1, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    :goto_2f
    if-ge v1, v2, :cond_3c

    iget-object p1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    aput-char p3, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_3c
    :goto_3c
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_41
    return-object p0
.end method

.method public appendNewLine()Lorg/apache/commons/text/StrBuilder;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->newLine:Ljava/lang/String;

    if-nez v0, :cond_c

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    return-object p0

    :cond_c
    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendNull()Lorg/apache/commons/text/StrBuilder;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendPadding(IC)Lorg/apache/commons/text/StrBuilder;
    .registers 7

    if-ltz p1, :cond_18

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_18

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    aput-char p2, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_18
    return-object p0
.end method

.method public appendSeparator(C)Lorg/apache/commons/text/StrBuilder;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(C)Lorg/apache/commons/text/StrBuilder;

    :cond_9
    return-object p0
.end method

.method public appendSeparator(CC)Lorg/apache/commons/text/StrBuilder;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(C)Lorg/apache/commons/text/StrBuilder;

    goto :goto_d

    :cond_a
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrBuilder;->append(C)Lorg/apache/commons/text/StrBuilder;

    :goto_d
    return-object p0
.end method

.method public appendSeparator(CI)Lorg/apache/commons/text/StrBuilder;
    .registers 3

    if-lez p2, :cond_5

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(C)Lorg/apache/commons/text/StrBuilder;

    :cond_5
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendSeparator(Ljava/lang/String;I)Lorg/apache/commons/text/StrBuilder;
    .registers 3

    if-eqz p1, :cond_7

    if-lez p2, :cond_7

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    :cond_7
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object p1, p2

    :cond_7
    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    :cond_c
    return-object p0
.end method

.method public appendTo(Ljava/lang/Appendable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/io/Writer;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    check-cast p1, Ljava/io/Writer;

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    goto :goto_3c

    :cond_f
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1d

    check-cast p1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_1d
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2b

    check-cast p1, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_3c

    :cond_2b
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_39

    check-cast p1, Ljava/nio/CharBuffer;

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    goto :goto_3c

    :cond_39
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_3c
    return-void
.end method

.method public appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_23

    const-string v0, ""

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    goto :goto_c

    :cond_23
    return-object p0
.end method

.method public appendWithSeparators(Ljava/util/Iterator;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_1f

    const-string v0, ""

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    goto :goto_8

    :cond_1f
    return-object p0
.end method

.method public appendWithSeparators([Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .registers 5

    if-eqz p1, :cond_20

    array-length v0, p1

    if-lez v0, :cond_20

    const-string v0, ""

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    const/4 v0, 0x1

    :goto_12
    array-length v1, p1

    if-ge v0, v1, :cond_20

    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_20
    return-object p0
.end method

.method public appendln(C)Lorg/apache/commons/text/StrBuilder;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(C)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(D)Lorg/apache/commons/text/StrBuilder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->append(D)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(F)Lorg/apache/commons/text/StrBuilder;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(F)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(I)Lorg/apache/commons/text/StrBuilder;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(I)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(J)Lorg/apache/commons/text/StrBuilder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->append(J)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/String;II)Lorg/apache/commons/text/StrBuilder;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs appendln(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/StringBuffer;)Lorg/apache/commons/text/StrBuilder;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/StringBuffer;II)Lorg/apache/commons/text/StrBuilder;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/StringBuilder;)Lorg/apache/commons/text/StrBuilder;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuilder;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/StringBuilder;II)Lorg/apache/commons/text/StrBuilder;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuilder;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Lorg/apache/commons/text/StrBuilder;)Lorg/apache/commons/text/StrBuilder;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Lorg/apache/commons/text/StrBuilder;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Lorg/apache/commons/text/StrBuilder;II)Lorg/apache/commons/text/StrBuilder;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append(Lorg/apache/commons/text/StrBuilder;II)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Z)Lorg/apache/commons/text/StrBuilder;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append(Z)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln([C)Lorg/apache/commons/text/StrBuilder;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->append([C)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln([CII)Lorg/apache/commons/text/StrBuilder;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/text/StrBuilder;->append([CII)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/StrBuilder;->appendNewLine()Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public asReader()Ljava/io/Reader;
    .registers 2

    new-instance v0, Lorg/apache/commons/text/StrBuilder$StrBuilderReader;

    invoke-direct {v0, p0}, Lorg/apache/commons/text/StrBuilder$StrBuilderReader;-><init>(Lorg/apache/commons/text/StrBuilder;)V

    return-object v0
.end method

.method public asTokenizer()Lorg/apache/commons/text/StrTokenizer;
    .registers 2

    new-instance v0, Lorg/apache/commons/text/StrBuilder$StrBuilderTokenizer;

    invoke-direct {v0, p0}, Lorg/apache/commons/text/StrBuilder$StrBuilderTokenizer;-><init>(Lorg/apache/commons/text/StrBuilder;)V

    return-object v0
.end method

.method public asWriter()Ljava/io/Writer;
    .registers 2

    new-instance v0, Lorg/apache/commons/text/StrBuilder$StrBuilderWriter;

    invoke-direct {v0, p0}, Lorg/apache/commons/text/StrBuilder$StrBuilderWriter;-><init>(Lorg/apache/commons/text/StrBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public capacity()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .registers 3

    if-ltz p1, :cond_d

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_d

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char p1, v0, p1

    return p1

    :cond_d
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public clear()Lorg/apache/commons/text/StrBuilder;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    return-object p0
.end method

.method public contains(C)Z
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge v2, v3, :cond_11

    aget-char v3, v0, v2

    if-ne v3, p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_11
    return v1
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public contains(Lorg/apache/commons/text/StrMatcher;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Lorg/apache/commons/text/StrMatcher;I)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public delete(II)Lorg/apache/commons/text/StrBuilder;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->validateRange(II)I

    move-result p2

    sub-int v0, p2, p1

    if-lez v0, :cond_b

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/text/StrBuilder;->deleteImpl(III)V

    :cond_b
    return-object p0
.end method

.method public deleteAll(C)Lorg/apache/commons/text/StrBuilder;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_1f

    move v1, v0

    :cond_c
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge v1, v2, :cond_18

    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v2, v2, v1

    if-eq v2, p1, :cond_c

    :cond_18
    sub-int v2, v1, v0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/text/StrBuilder;->deleteImpl(III)V

    sub-int v0, v1, v2

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_22
    return-object p0
.end method

.method public deleteAll(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_5

    const/4 v1, 0x0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_9
    if-lez v1, :cond_1b

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_f
    if-ltz v0, :cond_1b

    add-int v2, v0, v1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/commons/text/StrBuilder;->deleteImpl(III)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_f

    :cond_1b
    return-object p0
.end method

.method public deleteAll(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrBuilder;
    .registers 8

    iget v4, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/text/StrBuilder;->replace(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public deleteCharAt(I)Lorg/apache/commons/text/StrBuilder;
    .registers 4

    if-ltz p1, :cond_d

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge p1, v0, :cond_d

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/text/StrBuilder;->deleteImpl(III)V

    return-object p0

    :cond_d
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public deleteFirst(C)Lorg/apache/commons/text/StrBuilder;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_12

    add-int/lit8 p1, v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/text/StrBuilder;->deleteImpl(III)V

    goto :goto_15

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    :goto_15
    return-object p0
.end method

.method public deleteFirst(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_5

    const/4 v1, 0x0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_9
    if-lez v1, :cond_16

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_16

    add-int v0, p1, v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/text/StrBuilder;->deleteImpl(III)V

    :cond_16
    return-object p0
.end method

.method public deleteFirst(Lorg/apache/commons/text/StrMatcher;)Lorg/apache/commons/text/StrBuilder;
    .registers 8

    iget v4, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/text/StrBuilder;->replace(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public endsWith(Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-le v1, v3, :cond_11

    return v0

    :cond_11
    sub-int/2addr v3, v1

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v1, :cond_25

    iget-object v5, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v5, v5, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_20

    return v0

    :cond_20
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_25
    return v2
.end method

.method public ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    array-length v1, v0

    if-le p1, v1, :cond_11

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lorg/apache/commons/text/StrBuilder;

    if-eqz v0, :cond_e

    check-cast p1, Lorg/apache/commons/text/StrBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->equals(Lorg/apache/commons/text/StrBuilder;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public equals(Lorg/apache/commons/text/StrBuilder;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    iget v3, p1, Lorg/apache/commons/text/StrBuilder;->size:I

    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget-object p1, p1, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    sub-int/2addr v2, v0

    :goto_14
    if-ltz v2, :cond_20

    aget-char v4, v3, v2

    aget-char v5, p1, v2

    if-eq v4, v5, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_20
    return v0
.end method

.method public equalsIgnoreCase(Lorg/apache/commons/text/StrBuilder;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    iget v2, p1, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_c

    return v3

    :cond_c
    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget-object p1, p1, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    sub-int/2addr v1, v0

    :goto_11
    if-ltz v1, :cond_27

    aget-char v4, v2, v1

    aget-char v5, p1, v1

    if-eq v4, v5, :cond_24

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_24

    return v3

    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    :cond_27
    return v0
.end method

.method public getChars(II[CI)V
    .registers 6

    if-ltz p1, :cond_21

    if-ltz p2, :cond_1b

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_1b

    if-gt p1, p2, :cond_13

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_13
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "end < start"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p1

    :cond_21
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public getChars([C)[C
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    if-eqz p1, :cond_9

    array-length v1, p1

    if-ge v1, v0, :cond_b

    :cond_9
    new-array p1, v0, [C

    :cond_b
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public getNewLineText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->newLine:Ljava/lang/String;

    return-object v0
.end method

.method public getNullText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_7
    if-ltz v1, :cond_11

    mul-int/lit8 v2, v2, 0x1f

    aget-char v3, v0, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_11
    return v2
.end method

.method public indexOf(C)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(CI)I

    move-result p1

    return p1
.end method

.method public indexOf(CI)I
    .registers 6

    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_3
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v1, -0x1

    if-lt p2, v0, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    :goto_b
    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge p2, v2, :cond_17

    aget-char v2, v0, p2

    if-ne v2, p1, :cond_14

    return p2

    :cond_14
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_17
    return v1
.end method

.method public indexOf(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/String;I)I
    .registers 11

    const/4 v0, 0x0

    if-gez p2, :cond_4

    const/4 p2, 0x0

    :cond_4
    const/4 v1, -0x1

    if-eqz p1, :cond_3e

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-lt p2, v2, :cond_c

    goto :goto_3e

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->indexOf(CI)I

    move-result p1

    return p1

    :cond_1c
    if-nez v2, :cond_1f

    return p2

    :cond_1f
    iget v4, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-le v2, v4, :cond_24

    return v1

    :cond_24
    iget-object v5, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    sub-int/2addr v4, v2

    add-int/2addr v4, v3

    :goto_28
    if-ge p2, v4, :cond_3e

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v2, :cond_3d

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int v7, p2, v3

    aget-char v7, v5, v7

    if-eq v6, v7, :cond_3a

    add-int/lit8 p2, p2, 0x1

    goto :goto_28

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_3d
    return p2

    :cond_3e
    :goto_3e
    return v1
.end method

.method public indexOf(Lorg/apache/commons/text/StrMatcher;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Lorg/apache/commons/text/StrMatcher;I)I

    move-result p1

    return p1
.end method

.method public indexOf(Lorg/apache/commons/text/StrMatcher;I)I
    .registers 8

    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_3
    const/4 v0, -0x1

    if-eqz p1, :cond_1a

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-lt p2, v1, :cond_b

    goto :goto_1a

    :cond_b
    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    move v3, p2

    :goto_e
    if-ge v3, v1, :cond_1a

    invoke-virtual {p1, v2, v3, p2, v1}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-lez v4, :cond_17

    return v3

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1a
    :goto_1a
    return v0
.end method

.method public insert(IC)Lorg/apache/commons/text/StrBuilder;
    .registers 6

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->validateIndex(I)V

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    return-object p0
.end method

.method public insert(ID)Lorg/apache/commons/text/StrBuilder;
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(IF)Lorg/apache/commons/text/StrBuilder;
    .registers 3

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(II)Lorg/apache/commons/text/StrBuilder;
    .registers 3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(IJ)Lorg/apache/commons/text/StrBuilder;
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(ILjava/lang/Object;)Lorg/apache/commons/text/StrBuilder;
    .registers 3

    if-nez p2, :cond_9

    iget-object p2, p0, Lorg/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .registers 8

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_7

    iget-object p2, p0, Lorg/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    :cond_7
    if-eqz p2, :cond_27

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_27

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int v3, p1, v0

    iget v4, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_27
    return-object p0
.end method

.method public insert(IZ)Lorg/apache/commons/text/StrBuilder;
    .registers 6

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->validateIndex(I)V

    const/16 v0, 0x65

    if-eqz p2, :cond_35

    iget p2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object p2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x4

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-static {p2, p1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x74

    aput-char v2, p2, p1

    add-int/lit8 p1, v1, 0x1

    const/16 v2, 0x72

    aput-char v2, p2, v1

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x75

    aput-char v2, p2, p1

    aput-char v0, p2, v1

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    goto :goto_68

    :cond_35
    iget p2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 p2, p2, 0x5

    invoke-virtual {p0, p2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object p2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x5

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-static {p2, p1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x66

    aput-char v2, p2, p1

    add-int/lit8 p1, v1, 0x1

    const/16 v2, 0x61

    aput-char v2, p2, v1

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x6c

    aput-char v2, p2, p1

    add-int/lit8 p1, v1, 0x1

    const/16 v2, 0x73

    aput-char v2, p2, v1

    aput-char v0, p2, p1

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :goto_68
    return-object p0
.end method

.method public insert(I[C)Lorg/apache/commons/text/StrBuilder;
    .registers 7

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_c

    iget-object p2, p0, Lorg/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_c
    array-length v0, p2

    if-lez v0, :cond_2a

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int v2, p1, v0

    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_2a
    return-object p0
.end method

.method public insert(I[CII)Lorg/apache/commons/text/StrBuilder;
    .registers 8

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_c

    iget-object p2, p0, Lorg/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_c
    if-ltz p3, :cond_4c

    array-length v0, p2

    if-gt p3, v0, :cond_4c

    if-ltz p4, :cond_35

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_35

    if-lez p4, :cond_34

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int v1, p1, p4

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, p4

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :cond_34
    return-object p0

    :cond_35
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid length: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4c
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid offset: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public lastIndexOf(C)I
    .registers 3

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->lastIndexOf(CI)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(CI)I
    .registers 5

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-lt p2, v0, :cond_6

    add-int/lit8 p2, v0, -0x1

    :cond_6
    const/4 v0, -0x1

    if-gez p2, :cond_a

    return v0

    :cond_a
    :goto_a
    if-ltz p2, :cond_16

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v1, v1, p2

    if-ne v1, p1, :cond_13

    return p2

    :cond_13
    add-int/lit8 p2, p2, -0x1

    goto :goto_a

    :cond_16
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .registers 3

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .registers 10

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v1, 0x1

    if-lt p2, v0, :cond_7

    add-int/lit8 p2, v0, -0x1

    :cond_7
    const/4 v0, -0x1

    if-eqz p1, :cond_40

    if-gez p2, :cond_d

    goto :goto_40

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3d

    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-gt v2, v3, :cond_3d

    const/4 v3, 0x0

    if-ne v2, v1, :cond_23

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->lastIndexOf(CI)I

    move-result p1

    return p1

    :cond_23
    sub-int/2addr p2, v2

    add-int/2addr p2, v1

    :goto_25
    if-ltz p2, :cond_40

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v2, :cond_3c

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int v6, p2, v1

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_39

    add-int/lit8 p2, p2, -0x1

    goto :goto_25

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3c
    return p2

    :cond_3d
    if-nez v2, :cond_40

    return p2

    :cond_40
    :goto_40
    return v0
.end method

.method public lastIndexOf(Lorg/apache/commons/text/StrMatcher;)I
    .registers 3

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->lastIndexOf(Lorg/apache/commons/text/StrMatcher;I)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Lorg/apache/commons/text/StrMatcher;I)I
    .registers 7

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-lt p2, v0, :cond_6

    add-int/lit8 p2, v0, -0x1

    :cond_6
    const/4 v0, -0x1

    if-eqz p1, :cond_1d

    if-gez p2, :cond_c

    goto :goto_1d

    :cond_c
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p2, 0x1

    :goto_10
    if-ltz p2, :cond_1d

    const/4 v3, 0x0

    invoke-virtual {p1, v1, p2, v3, v2}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v3

    if-lez v3, :cond_1a

    return p2

    :cond_1a
    add-int/lit8 p2, p2, -0x1

    goto :goto_10

    :cond_1d
    :goto_1d
    return v0
.end method

.method public leftString(I)Ljava/lang/String;
    .registers 5

    if-gtz p1, :cond_5

    const-string p1, ""

    return-object p1

    :cond_5
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_14

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_14
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public length()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    return v0
.end method

.method public midString(II)Ljava/lang/String;
    .registers 5

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    if-lez p2, :cond_21

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_a

    goto :goto_21

    :cond_a
    add-int v1, p1, p2

    if-gt v0, v1, :cond_19

    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v1, p1

    invoke-direct {p2, v0, p1, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p2

    :cond_19
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_21
    :goto_21
    const-string p1, ""

    return-object p1
.end method

.method public minimizeCapacity()Lorg/apache/commons/text/StrBuilder;
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    array-length v0, v0

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    if-le v0, v1, :cond_19

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    return-object p0
.end method

.method public readFrom(Ljava/lang/Readable;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    instance-of v1, p1, Ljava/io/Reader;

    const/4 v2, -0x1

    if-eqz v1, :cond_25

    check-cast p1, Ljava/io/Reader;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    :goto_e
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-eq v1, v2, :cond_59

    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    goto :goto_e

    :cond_25
    instance-of v1, p1, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_42

    check-cast p1, Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    goto :goto_59

    :cond_42
    :goto_42
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-static {v1, v3, v4}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    if-ne v1, v2, :cond_5d

    :cond_59
    :goto_59
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr p1, v0

    return p1

    :cond_5d
    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    goto :goto_42
.end method

.method public replace(IILjava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .registers 10

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->validateRange(II)I

    move-result v2

    if-nez p3, :cond_9

    const/4 p2, 0x0

    const/4 v5, 0x0

    goto :goto_e

    :cond_9
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    move v5, p2

    :goto_e
    sub-int v3, v2, p1

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    return-object p0
.end method

.method public replace(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/text/StrBuilder;
    .registers 12

    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/text/StrBuilder;->validateRange(II)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/StrBuilder;->replaceImpl(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public replaceAll(CC)Lorg/apache/commons/text/StrBuilder;
    .registers 6

    if-eq p1, p2, :cond_12

    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v2, v1, v0

    if-ne v2, p1, :cond_f

    aput-char p2, v1, v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_12
    return-object p0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_5

    const/4 v1, 0x0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_9
    if-lez v1, :cond_2a

    if-nez p2, :cond_f

    const/4 v8, 0x0

    goto :goto_14

    :cond_f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    move v8, v2

    :goto_14
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_18
    if-ltz v0, :cond_2a

    add-int v4, v0, v1

    move-object v2, p0

    move v3, v0

    move v5, v1

    move-object v6, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    add-int/2addr v0, v8

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_18

    :cond_2a
    return-object p0
.end method

.method public replaceAll(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .registers 9

    iget v4, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/text/StrBuilder;->replace(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public replaceFirst(CC)Lorg/apache/commons/text/StrBuilder;
    .registers 6

    if-eq p1, p2, :cond_13

    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_13

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v2, v1, v0

    if-ne v2, p1, :cond_10

    aput-char p2, v1, v0

    goto :goto_13

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_13
    :goto_13
    return-object p0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_5

    const/4 v5, 0x0

    goto :goto_a

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v5, v1

    :goto_a
    if-lez v5, :cond_22

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_22

    if-nez p2, :cond_16

    const/4 v7, 0x0

    goto :goto_1b

    :cond_16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    move v7, v0

    :goto_1b
    add-int v4, v3, v5

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    :cond_22
    return-object p0
.end method

.method public replaceFirst(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .registers 9

    iget v4, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/text/StrBuilder;->replace(Lorg/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Lorg/apache/commons/text/StrBuilder;
    .registers 7

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    div-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ge v3, v1, :cond_1b

    aget-char v4, v2, v3

    aget-char v5, v2, v0

    aput-char v5, v2, v3

    aput-char v4, v2, v0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1b
    return-object p0
.end method

.method public rightString(I)Ljava/lang/String;
    .registers 5

    if-gtz p1, :cond_5

    const-string p1, ""

    return-object p1

    :cond_5
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_14

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_14
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public setCharAt(IC)Lorg/apache/commons/text/StrBuilder;
    .registers 4

    if-ltz p1, :cond_d

    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_d

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    return-object p0

    :cond_d
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public setLength(I)Lorg/apache/commons/text/StrBuilder;
    .registers 5

    if-ltz p1, :cond_1d

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge p1, v0, :cond_9

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    goto :goto_1c

    :cond_9
    if-le p1, v0, :cond_1c

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/text/StrBuilder;

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    :goto_12
    if-ge v0, p1, :cond_1c

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1c
    :goto_1c
    return-object p0

    :cond_1d
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public setNewLineText(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/text/StrBuilder;->newLine:Ljava/lang/String;

    return-object p0
.end method

.method public setNullText(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .registers 3

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p1, 0x0

    :cond_9
    iput-object p1, p0, Lorg/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    return-object p0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-le v1, v3, :cond_11

    return v0

    :cond_11
    const/4 v3, 0x0

    :goto_12
    if-ge v3, v1, :cond_22

    iget-object v4, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v4, v4, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1f

    return v0

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_22
    return v2
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    if-ltz p1, :cond_1a

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-gt p2, v0, :cond_14

    if-gt p1, p2, :cond_d

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int/2addr p2, p1

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_14
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p1

    :cond_1a
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public substring(I)Ljava/lang/String;
    .registers 3

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public substring(II)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->validateRange(II)I

    move-result p2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .registers 5

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_8

    new-array v0, v1, [C

    return-object v0

    :cond_8
    new-array v2, v0, [C

    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public toCharArray(II)[C
    .registers 6

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->validateRange(II)I

    move-result p2

    sub-int/2addr p2, p1

    const/4 v0, 0x0

    if-nez p2, :cond_b

    new-array p1, v0, [C

    return-object p1

    :cond_b
    new-array v1, p2, [C

    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {v2, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toStringBuffer()Ljava/lang/StringBuffer;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public toStringBuilder()Ljava/lang/StringBuilder;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public trim()Lorg/apache/commons/text/StrBuilder;
    .registers 7

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    const/16 v4, 0x20

    if-ge v3, v0, :cond_14

    aget-char v5, v1, v3

    if-gt v5, v4, :cond_14

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_14
    :goto_14
    if-ge v3, v0, :cond_1f

    add-int/lit8 v5, v0, -0x1

    aget-char v5, v1, v5

    if-gt v5, v4, :cond_1f

    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_1f
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_26

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/text/StrBuilder;->delete(II)Lorg/apache/commons/text/StrBuilder;

    :cond_26
    if-lez v3, :cond_2b

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/text/StrBuilder;->delete(II)Lorg/apache/commons/text/StrBuilder;

    :cond_2b
    return-object p0
.end method

.method protected validateIndex(I)V
    .registers 3

    if-ltz p1, :cond_7

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-gt p1, v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method protected validateRange(II)I
    .registers 4

    if-ltz p1, :cond_12

    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->size:I

    if-le p2, v0, :cond_7

    move p2, v0

    :cond_7
    if-gt p1, p2, :cond_a

    return p2

    :cond_a
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "end < start"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method
