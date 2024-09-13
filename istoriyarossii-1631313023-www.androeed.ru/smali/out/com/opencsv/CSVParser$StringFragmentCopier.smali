.class Lcom/opencsv/CSVParser$StringFragmentCopier;
.super Ljava/lang/Object;
.source "CSVParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opencsv/CSVParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringFragmentCopier"
.end annotation


# instance fields
.field private i:I

.field private final input:Ljava/lang/String;

.field private pendingSubstrFrom:I

.field private pendingSubstrTo:I

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrFrom:I

    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    iput-object p1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->input:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/opencsv/CSVParser$StringFragmentCopier;)I
    .registers 1

    iget p0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    return p0
.end method

.method private materializeBuilder()Ljava/lang/StringBuilder;
    .registers 5

    iget-object v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->sb:Ljava/lang/StringBuilder;

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->sb:Ljava/lang/StringBuilder;

    :cond_13
    iget v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrFrom:I

    iget v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    if-ge v0, v1, :cond_26

    iget-object v2, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->sb:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->input:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrFrom:I

    :cond_26
    iget-object v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->sb:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public append(C)V
    .registers 3

    invoke-direct {p0}, Lcom/opencsv/CSVParser$StringFragmentCopier;->materializeBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public append(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/opencsv/CSVParser$StringFragmentCopier;->materializeBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public appendPrev()V
    .registers 4

    iget v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    iget v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrFrom:I

    if-ne v0, v1, :cond_f

    iget v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrFrom:I

    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    goto :goto_2b

    :cond_f
    iget v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1a

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    goto :goto_2b

    :cond_1a
    invoke-direct {p0}, Lcom/opencsv/CSVParser$StringFragmentCopier;->materializeBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->input:Ljava/lang/String;

    iget v2, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2b
    return-void
.end method

.method public clearOutput()V
    .registers 3

    iget-object v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->sb:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_8
    iget v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrFrom:I

    return-void
.end method

.method public isEmptyInput()Z
    .registers 3

    iget v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    iget-object v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isEmptyOutput()Z
    .registers 3

    iget v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrFrom:I

    iget v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    if-lt v0, v1, :cond_12

    iget-object v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->sb:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public peekOutput()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->sb:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_14

    :cond_b
    invoke-direct {p0}, Lcom/opencsv/CSVParser$StringFragmentCopier;->materializeBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->input:Ljava/lang/String;

    iget v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrFrom:I

    iget v2, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public takeInput()C
    .registers 4

    iget-object v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->input:Ljava/lang/String;

    iget v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public takeOutput()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/opencsv/CSVParser$StringFragmentCopier;->peekOutput()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/opencsv/CSVParser$StringFragmentCopier;->clearOutput()V

    return-object v0
.end method
