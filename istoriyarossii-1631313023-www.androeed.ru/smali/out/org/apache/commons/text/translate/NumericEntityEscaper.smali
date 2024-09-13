.class public Lorg/apache/commons/text/translate/NumericEntityEscaper;
.super Lorg/apache/commons/text/translate/CodePointTranslator;
.source "NumericEntityEscaper.java"


# instance fields
.field private final above:I

.field private final below:I

.field private final between:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-void
.end method

.method private constructor <init>(IIZ)V
    .registers 4

    invoke-direct {p0}, Lorg/apache/commons/text/translate/CodePointTranslator;-><init>()V

    iput p1, p0, Lorg/apache/commons/text/translate/NumericEntityEscaper;->below:I

    iput p2, p0, Lorg/apache/commons/text/translate/NumericEntityEscaper;->above:I

    iput-boolean p3, p0, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between:Z

    return-void
.end method

.method public static above(I)Lorg/apache/commons/text/translate/NumericEntityEscaper;
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->outsideOf(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object p0

    return-object p0
.end method

.method public static below(I)Lorg/apache/commons/text/translate/NumericEntityEscaper;
    .registers 2

    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->outsideOf(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object p0

    return-object p0
.end method

.method public static between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;
    .registers 4

    new-instance v0, Lorg/apache/commons/text/translate/NumericEntityEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
.end method

.method public static outsideOf(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;
    .registers 4

    new-instance v0, Lorg/apache/commons/text/translate/NumericEntityEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method public translate(ILjava/io/Writer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/apache/commons/text/translate/NumericEntityEscaper;->below:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Lorg/apache/commons/text/translate/NumericEntityEscaper;->above:I

    if-le p1, v0, :cond_17

    :cond_d
    return v1

    :cond_e
    iget v0, p0, Lorg/apache/commons/text/translate/NumericEntityEscaper;->below:I

    if-lt p1, v0, :cond_17

    iget v0, p0, Lorg/apache/commons/text/translate/NumericEntityEscaper;->above:I

    if-gt p1, v0, :cond_17

    return v1

    :cond_17
    const-string v0, "&#"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x3b

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(I)V

    const/4 p1, 0x1

    return p1
.end method
