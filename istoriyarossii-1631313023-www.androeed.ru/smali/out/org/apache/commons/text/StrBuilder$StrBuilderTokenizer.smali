.class Lorg/apache/commons/text/StrBuilder$StrBuilderTokenizer;
.super Lorg/apache/commons/text/StrTokenizer;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderTokenizer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/text/StrBuilder;


# direct methods
.method constructor <init>(Lorg/apache/commons/text/StrBuilder;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/text/StrBuilder;

    invoke-direct {p0}, Lorg/apache/commons/text/StrTokenizer;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/text/StrTokenizer;->getContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/text/StrBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method protected tokenize([CII)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/apache/commons/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/text/StrBuilder;

    iget-object p1, p1, Lorg/apache/commons/text/StrBuilder;->buffer:[C

    const/4 p2, 0x0

    iget-object p3, p0, Lorg/apache/commons/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/text/StrBuilder;

    invoke-virtual {p3}, Lorg/apache/commons/text/StrBuilder;->size()I

    move-result p3

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_12
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
