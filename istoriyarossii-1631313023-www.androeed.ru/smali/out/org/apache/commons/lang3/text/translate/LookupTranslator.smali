.class public Lorg/apache/commons/lang3/text/translate/LookupTranslator;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "LookupTranslator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final longest:I

.field private final lookupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final prefixSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final shortest:I


# direct methods
.method public varargs constructor <init>([[Ljava/lang/CharSequence;)V
    .registers 11

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->prefixSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    const v1, 0x7fffffff

    if-eqz p1, :cond_4f

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1a
    if-ge v3, v2, :cond_4e

    aget-object v5, p1, v3

    iget-object v6, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    aget-object v7, v5, v0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->prefixSet:Ljava/util/HashSet;

    aget-object v7, v5, v0

    invoke-interface {v7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    aget-object v5, v5, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v5, v1, :cond_48

    move v1, v5

    :cond_48
    if-le v5, v4, :cond_4b

    move v4, v5

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_4e
    move v0, v4

    :cond_4f
    iput v1, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->shortest:I

    iput v0, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->longest:I

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->prefixSet:Ljava/util/HashSet;

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget v0, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->longest:I

    add-int v1, p2, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_1f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    :cond_1f
    :goto_1f
    iget v1, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->shortest:I

    if-lt v0, v1, :cond_3e

    add-int v1, p2, v0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3b

    invoke-virtual {p3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return v0

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    :cond_3e
    const/4 p1, 0x0

    return p1
.end method
