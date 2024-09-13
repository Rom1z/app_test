.class public Lcom/opencsv/exceptions/CsvException;
.super Ljava/lang/Exception;
.source "CsvException.java"


# instance fields
.field private lineNumber:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/opencsv/exceptions/CsvException;->lineNumber:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/opencsv/exceptions/CsvException;->lineNumber:J

    return-void
.end method


# virtual methods
.method public getLineNumber()J
    .registers 3

    iget-wide v0, p0, Lcom/opencsv/exceptions/CsvException;->lineNumber:J

    return-wide v0
.end method

.method public setLineNumber(J)V
    .registers 3

    iput-wide p1, p0, Lcom/opencsv/exceptions/CsvException;->lineNumber:J

    return-void
.end method
