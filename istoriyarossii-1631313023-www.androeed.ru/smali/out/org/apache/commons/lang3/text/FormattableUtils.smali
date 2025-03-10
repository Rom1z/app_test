.class public Lorg/apache/commons/lang3/text/FormattableUtils;
.super Ljava/lang/Object;
.source "FormattableUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SIMPLEST_FORMAT:Ljava/lang/String; = "%s"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Formatter;III)Ljava/util/Formatter;
    .registers 12

    const/16 v5, 0x20

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/text/FormattableUtils;->append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIICLjava/lang/CharSequence;)Ljava/util/Formatter;

    move-result-object p0

    return-object p0
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIIC)Ljava/util/Formatter;
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/text/FormattableUtils;->append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIICLjava/lang/CharSequence;)Ljava/util/Formatter;

    move-result-object p0

    return-object p0
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIICLjava/lang/CharSequence;)Ljava/util/Formatter;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p6, :cond_f

    if-ltz p4, :cond_f

    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v2, p4, :cond_d

    goto :goto_f

    :cond_d
    const/4 v2, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v2, 0x1

    :goto_10
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p6, v3, v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "Specified ellipsis \'%1$s\' exceeds precision of %2$s"

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-ltz p4, :cond_45

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge p4, v3, :cond_45

    const-string v3, ""

    invoke-static {p6, v3}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/CharSequence;

    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr p4, v3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-interface {p6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v2, p4, p0, p6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    and-int/lit8 p0, p2, 0x1

    if-ne p0, v1, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    :goto_4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    :goto_4f
    if-ge p0, p3, :cond_5c

    if-eqz v1, :cond_55

    move p2, p0

    goto :goto_56

    :cond_55
    const/4 p2, 0x0

    :goto_56
    invoke-virtual {v2, p2, p5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_4f

    :cond_5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-object p1
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIILjava/lang/CharSequence;)Ljava/util/Formatter;
    .registers 13

    const/16 v5, 0x20

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/text/FormattableUtils;->append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIICLjava/lang/CharSequence;)Ljava/util/Formatter;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/util/Formattable;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
