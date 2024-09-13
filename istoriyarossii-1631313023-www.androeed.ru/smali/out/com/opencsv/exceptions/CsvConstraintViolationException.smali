.class public Lcom/opencsv/exceptions/CsvConstraintViolationException;
.super Lcom/opencsv/exceptions/CsvException;
.source "CsvConstraintViolationException.java"


# instance fields
.field private final transient sourceObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvException;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/exceptions/CsvConstraintViolationException;->sourceObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvException;-><init>()V

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvConstraintViolationException;->sourceObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/opencsv/exceptions/CsvException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvConstraintViolationException;->sourceObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/opencsv/exceptions/CsvException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/opencsv/exceptions/CsvConstraintViolationException;->sourceObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getSourceObject()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/exceptions/CsvConstraintViolationException;->sourceObject:Ljava/lang/Object;

    return-object v0
.end method
