.class public Lorg/apache/commons/text/similarity/FuzzyScore;
.super Ljava/lang/Object;
.source "FuzzyScore.java"


# instance fields
.field private final locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lorg/apache/commons/text/similarity/FuzzyScore;->locale:Ljava/util/Locale;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Locale must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public fuzzyScore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .registers 11

    if-eqz p1, :cond_4c

    if-eqz p2, :cond_4c

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/text/similarity/FuzzyScore;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/commons/text/similarity/FuzzyScore;->locale:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_47

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x0

    :goto_29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_44

    if-nez v6, :cond_44

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v5, v7, :cond_41

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_3f

    add-int/lit8 v3, v3, 0x2

    :cond_3f
    const/4 v6, 0x1

    move v0, v4

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Strings must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/text/similarity/FuzzyScore;->locale:Ljava/util/Locale;

    return-object v0
.end method
