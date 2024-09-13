.class public Lcom/opencsv/stream/reader/LineReader;
.super Ljava/lang/Object;
.source "LineReader.java"


# instance fields
.field private final keepCarriageReturns:Z

.field private final reader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Ljava/io/BufferedReader;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/stream/reader/LineReader;->reader:Ljava/io/BufferedReader;

    iput-boolean p2, p0, Lcom/opencsv/stream/reader/LineReader;->keepCarriageReturns:Z

    return-void
.end method

.method private readUntilNewline()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_7
    iget-object v1, p0, Lcom/opencsv/stream/reader/LineReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_19

    const/16 v2, 0xa

    if-eq v1, v2, :cond_19

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_24

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return-object v0
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/opencsv/stream/reader/LineReader;->keepCarriageReturns:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/opencsv/stream/reader/LineReader;->readUntilNewline()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lcom/opencsv/stream/reader/LineReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method
