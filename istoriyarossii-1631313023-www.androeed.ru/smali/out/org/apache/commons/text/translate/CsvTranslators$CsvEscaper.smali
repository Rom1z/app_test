.class public Lorg/apache/commons/text/translate/CsvTranslators$CsvEscaper;
.super Lorg/apache/commons/text/translate/SinglePassTranslator;
.source "CsvTranslators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/translate/CsvTranslators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CsvEscaper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/text/translate/SinglePassTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/text/translate/SinglePassTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result p1

    return p1
.end method

.method translateWhole(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/apache/commons/text/translate/CsvTranslators;->access$000()[C

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_29

    :cond_12
    const/16 v0, 0x22

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    invoke-static {}, Lorg/apache/commons/text/translate/CsvTranslators;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/apache/commons/text/translate/CsvTranslators;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    :goto_29
    return-void
.end method
