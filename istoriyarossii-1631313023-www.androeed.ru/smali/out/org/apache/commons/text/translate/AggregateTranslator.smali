.class public Lorg/apache/commons/text/translate/AggregateTranslator;
.super Lorg/apache/commons/text/translate/CharSequenceTranslator;
.source "AggregateTranslator.java"


# instance fields
.field private final translators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/text/translate/CharSequenceTranslator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V
    .registers 6

    invoke-direct {p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/text/translate/AggregateTranslator;->translators:Ljava/util/List;

    if-eqz p1, :cond_1c

    array-length v0, p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    if-eqz v2, :cond_19

    iget-object v3, p0, Lorg/apache/commons/text/translate/AggregateTranslator;->translators:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/text/translate/AggregateTranslator;->translators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v1

    if-eqz v1, :cond_6

    return v1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method
