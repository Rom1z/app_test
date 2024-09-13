.class public final Lcom/google/android/gms/common/util/HexDumpUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesFromString(Ljava/lang/String;)[B
    .registers 4

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " \t\n"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_c
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_24

    :try_start_12
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_21} :catch_22

    goto :goto_c

    :catch_22
    const/4 p0, 0x0

    return-object p0

    :cond_24
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static dump([BIIZ)Ljava/lang/String;
    .registers 15

    if-eqz p0, :cond_bf

    array-length v0, p0

    if-eqz v0, :cond_bf

    if-ltz p1, :cond_bf

    if-lez p2, :cond_bf

    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_10

    goto/16 :goto_bf

    :cond_10
    const/16 v0, 0x39

    if-eqz p3, :cond_16

    const/16 v0, 0x4b

    :cond_16
    add-int/lit8 v1, p2, 0x10

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v3, 0x10

    div-int/2addr v1, v3

    mul-int v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    move v4, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_28
    if-lez v4, :cond_ba

    const/16 v7, 0x8

    if-nez v5, :cond_54

    const/high16 v6, 0x10000

    if-ge p2, v6, :cond_41

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v0

    const-string v8, "%04X:"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4f

    :cond_41
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v0

    const-string v8, "%08X:"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_4f
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, p1

    goto :goto_5b

    :cond_54
    if-ne v5, v7, :cond_5b

    const-string v8, " -"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    :goto_5b
    new-array v8, v2, [Ljava/lang/Object;

    aget-byte v9, p0, p1

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const-string v9, " %02X"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, 0x1

    if-eqz p3, :cond_ac

    if-eq v5, v3, :cond_7a

    if-nez v4, :cond_ac

    :cond_7a
    rsub-int/lit8 v8, v5, 0x10

    if-lez v8, :cond_89

    const/4 v9, 0x0

    :goto_7f
    if-ge v9, v8, :cond_89

    const-string v10, "   "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_7f

    :cond_89
    const-string v9, "  "

    if-lt v8, v7, :cond_90

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_90
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :goto_94
    if-ge v7, v5, :cond_ac

    add-int v8, v6, v7

    aget-byte v8, p0, v8

    int-to-char v8, v8

    const/16 v9, 0x20

    if-lt v8, v9, :cond_a4

    const/16 v9, 0x7e

    if-gt v8, v9, :cond_a4

    goto :goto_a6

    :cond_a4
    const/16 v8, 0x2e

    :goto_a6
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_94

    :cond_ac
    if-eq v5, v3, :cond_b0

    if-nez v4, :cond_b6

    :cond_b0
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :cond_b6
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_28

    :cond_ba
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_bf
    :goto_bf
    const/4 p0, 0x0

    return-object p0
.end method
