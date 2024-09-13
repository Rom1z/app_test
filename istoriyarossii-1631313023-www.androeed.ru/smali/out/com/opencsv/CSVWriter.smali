.class public Lcom/opencsv/CSVWriter;
.super Ljava/lang/Object;
.source "CSVWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field public static final DEFAULT_ESCAPE_CHARACTER:C = '\"'

.field public static final DEFAULT_LINE_END:Ljava/lang/String; = "\n"

.field public static final DEFAULT_QUOTE_CHARACTER:C = '\"'

.field public static final DEFAULT_SEPARATOR:C = ','

.field public static final INITIAL_STRING_SIZE:I = 0x400

.field public static final NO_ESCAPE_CHARACTER:C = '\u0000'

.field public static final NO_QUOTE_CHARACTER:C = '\u0000'

.field public static final RFC4180_LINE_END:Ljava/lang/String; = "\r\n"


# instance fields
.field protected final escapechar:C

.field protected volatile exception:Ljava/io/IOException;

.field protected lineEnd:Ljava/lang/String;

.field protected final quotechar:C

.field protected resultService:Lcom/opencsv/ResultSetHelper;

.field protected final separator:C

.field protected final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lcom/opencsv/CSVWriter;-><init>(Ljava/io/Writer;C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;C)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x22

    invoke-direct {p0, p1, p2, v0}, Lcom/opencsv/CSVWriter;-><init>(Ljava/io/Writer;CC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;CC)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x22

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/opencsv/CSVWriter;-><init>(Ljava/io/Writer;CCC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;CCC)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v5, "\n"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/opencsv/CSVWriter;-><init>(Ljava/io/Writer;CCCLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;CCCLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/CSVWriter;->writer:Ljava/io/Writer;

    iput-char p2, p0, Lcom/opencsv/CSVWriter;->separator:C

    iput-char p3, p0, Lcom/opencsv/CSVWriter;->quotechar:C

    iput-char p4, p0, Lcom/opencsv/CSVWriter;->escapechar:C

    iput-object p5, p0, Lcom/opencsv/CSVWriter;->lineEnd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;CCLjava/lang/String;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v4, 0x22

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/opencsv/CSVWriter;-><init>(Ljava/io/Writer;CCCLjava/lang/String;)V

    return-void
.end method

.method private appendQuoteCharacterIfNeeded(ZLjava/lang/Appendable;Ljava/lang/Boolean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_8

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_8
    iget-char p1, p0, Lcom/opencsv/CSVWriter;->quotechar:C

    if-eqz p1, :cond_f

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_f
    return-void
.end method


# virtual methods
.method protected checkCharactersToEscape(C)Z
    .registers 5

    iget-char v0, p0, Lcom/opencsv/CSVWriter;->quotechar:C

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    if-eq p1, v0, :cond_1b

    iget-char v0, p0, Lcom/opencsv/CSVWriter;->escapechar:C

    if-eq p1, v0, :cond_1b

    iget-char v0, p0, Lcom/opencsv/CSVWriter;->separator:C

    if-eq p1, v0, :cond_1b

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1c

    goto :goto_1b

    :cond_15
    if-eq p1, v0, :cond_1b

    iget-char v0, p0, Lcom/opencsv/CSVWriter;->escapechar:C

    if-ne p1, v0, :cond_1c

    :cond_1b
    :goto_1b
    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public checkError()Z
    .registers 3

    iget-object v0, p0, Lcom/opencsv/CSVWriter;->writer:Ljava/io/Writer;

    instance-of v1, v0, Ljava/io/PrintWriter;

    if-eqz v1, :cond_d

    check-cast v0, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result v0

    return v0

    :cond_d
    invoke-virtual {p0}, Lcom/opencsv/CSVWriter;->flushQuietly()V

    iget-object v0, p0, Lcom/opencsv/CSVWriter;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/opencsv/CSVWriter;->flush()V

    iget-object v0, p0, Lcom/opencsv/CSVWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/CSVWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public flushQuietly()V
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Lcom/opencsv/CSVWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method protected processCharacter(Ljava/lang/Appendable;C)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-char v0, p0, Lcom/opencsv/CSVWriter;->escapechar:C

    if-eqz v0, :cond_f

    invoke-virtual {p0, p2}, Lcom/opencsv/CSVWriter;->checkCharactersToEscape(C)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-char v0, p0, Lcom/opencsv/CSVWriter;->escapechar:C

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_f
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method protected processLine(Ljava/lang/String;Ljava/lang/Appendable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/opencsv/CSVWriter;->processCharacter(Ljava/lang/Appendable;C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method protected resultService()Lcom/opencsv/ResultSetHelper;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/CSVWriter;->resultService:Lcom/opencsv/ResultSetHelper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/opencsv/ResultSetHelperService;

    invoke-direct {v0}, Lcom/opencsv/ResultSetHelperService;-><init>()V

    iput-object v0, p0, Lcom/opencsv/CSVWriter;->resultService:Lcom/opencsv/ResultSetHelper;

    :cond_b
    iget-object v0, p0, Lcom/opencsv/CSVWriter;->resultService:Lcom/opencsv/ResultSetHelper;

    return-object v0
.end method

.method public setResultService(Lcom/opencsv/ResultSetHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/opencsv/CSVWriter;->resultService:Lcom/opencsv/ResultSetHelper;

    return-void
.end method

.method protected stringContainsSpecialCharacters(Ljava/lang/String;)Z
    .registers 4

    iget-char v0, p0, Lcom/opencsv/CSVWriter;->quotechar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2c

    iget-char v0, p0, Lcom/opencsv/CSVWriter;->escapechar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2c

    iget-char v0, p0, Lcom/opencsv/CSVWriter;->separator:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2c

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p1, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 p1, 0x1

    :goto_2d
    return p1
.end method

.method public writeAll(Ljava/sql/ResultSet;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/opencsv/CSVWriter;->writeAll(Ljava/sql/ResultSet;ZZZ)I

    move-result p1

    return p1
.end method

.method public writeAll(Ljava/sql/ResultSet;ZZ)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/opencsv/CSVWriter;->writeAll(Ljava/sql/ResultSet;ZZZ)I

    move-result p1

    return p1
.end method

.method public writeAll(Ljava/sql/ResultSet;ZZZ)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1, p4}, Lcom/opencsv/CSVWriter;->writeColumnNames(Ljava/sql/ResultSet;Z)V

    const/4 p2, 0x1

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/opencsv/CSVWriter;->resultService()Lcom/opencsv/ResultSetHelper;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/opencsv/ResultSetHelper;->getColumnValues(Ljava/sql/ResultSet;Z)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lcom/opencsv/CSVWriter;->writeNext([Ljava/lang/String;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_1c
    return p2
.end method

.method public writeAll(Ljava/lang/Iterable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :try_start_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/opencsv/CSVWriter;->writeNext([Ljava/lang/String;ZLjava/lang/Appendable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1f} :catch_20

    goto :goto_b

    :catch_20
    move-exception p1

    iput-object p1, p0, Lcom/opencsv/CSVWriter;->exception:Ljava/io/IOException;

    :cond_23
    return-void
.end method

.method public writeAll(Ljava/lang/Iterable;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "[",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :try_start_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v1, p2, v0}, Lcom/opencsv/CSVWriter;->writeNext([Ljava/lang/String;ZLjava/lang/Appendable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1e} :catch_1f

    goto :goto_b

    :catch_1f
    move-exception p1

    iput-object p1, p0, Lcom/opencsv/CSVWriter;->exception:Ljava/io/IOException;

    :cond_22
    return-void
.end method

.method public writeAll(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/opencsv/CSVWriter;->writeAll(Ljava/lang/Iterable;)V

    return-void
.end method

.method public writeAll(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/opencsv/CSVWriter;->writeAll(Ljava/lang/Iterable;Z)V

    return-void
.end method

.method protected writeColumnNames(Ljava/sql/ResultSet;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/opencsv/CSVWriter;->resultService()Lcom/opencsv/ResultSetHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/opencsv/ResultSetHelper;->getColumnNames(Ljava/sql/ResultSet;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/opencsv/CSVWriter;->writeNext([Ljava/lang/String;Z)V

    return-void
.end method

.method public writeNext([Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/opencsv/CSVWriter;->writeNext([Ljava/lang/String;Z)V

    return-void
.end method

.method public writeNext([Ljava/lang/String;Z)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/opencsv/CSVWriter;->writeNext([Ljava/lang/String;ZLjava/lang/Appendable;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_e

    :catch_b
    move-exception p1

    iput-object p1, p0, Lcom/opencsv/CSVWriter;->exception:Ljava/io/IOException;

    :goto_e
    return-void
.end method

.method protected writeNext([Ljava/lang/String;ZLjava/lang/Appendable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_31

    if-eqz v0, :cond_e

    iget-char v1, p0, Lcom/opencsv/CSVWriter;->separator:C

    invoke-interface {p3, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_e
    aget-object v1, p1, v0

    if-nez v1, :cond_13

    goto :goto_2e

    :cond_13
    invoke-virtual {p0, v1}, Lcom/opencsv/CSVWriter;->stringContainsSpecialCharacters(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p2, p3, v2}, Lcom/opencsv/CSVWriter;->appendQuoteCharacterIfNeeded(ZLjava/lang/Appendable;Ljava/lang/Boolean;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {p0, v1, p3}, Lcom/opencsv/CSVWriter;->processLine(Ljava/lang/String;Ljava/lang/Appendable;)V

    goto :goto_2b

    :cond_28
    invoke-interface {p3, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_2b
    invoke-direct {p0, p2, p3, v2}, Lcom/opencsv/CSVWriter;->appendQuoteCharacterIfNeeded(ZLjava/lang/Appendable;Ljava/lang/Boolean;)V

    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_31
    iget-object p1, p0, Lcom/opencsv/CSVWriter;->lineEnd:Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object p1, p0, Lcom/opencsv/CSVWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
