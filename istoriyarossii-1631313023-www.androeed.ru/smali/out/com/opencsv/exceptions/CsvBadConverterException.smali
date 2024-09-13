.class public Lcom/opencsv/exceptions/CsvBadConverterException;
.super Lcom/opencsv/exceptions/CsvRuntimeException;
.source "CsvBadConverterException.java"


# instance fields
.field private final converterClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/exceptions/CsvBadConverterException;->converterClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>()V

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBadConverterException;->converterClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBadConverterException;->converterClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBadConverterException;->converterClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getConverterClass()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/exceptions/CsvBadConverterException;->converterClass:Ljava/lang/Class;

    return-object v0
.end method
