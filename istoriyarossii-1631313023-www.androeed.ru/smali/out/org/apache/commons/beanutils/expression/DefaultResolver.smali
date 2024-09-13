.class public Lorg/apache/commons/beanutils/expression/DefaultResolver;
.super Ljava/lang/Object;
.source "DefaultResolver.java"

# interfaces
.implements Lorg/apache/commons/beanutils/expression/Resolver;


# static fields
.field private static final INDEXED_END:C = ']'

.field private static final INDEXED_START:C = '['

.field private static final MAPPED_END:C = ')'

.field private static final MAPPED_START:C = '('

.field private static final NESTED:C = '.'


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .registers 6

    const/4 v0, -0x1

    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_6c

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6c

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_6c

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1e

    goto :goto_6c

    :cond_1e
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_69

    const/16 v0, 0x5d

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_61

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_59

    const/16 v0, 0xa

    :try_start_38
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3c} :catch_3d

    return p1

    :catch_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No Index Value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing End Delimiter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_6c
    :goto_6c
    return v0
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3c

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3c

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_3c

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1e

    goto :goto_3c

    :cond_1e
    const/16 v3, 0x28

    if-ne v2, v3, :cond_39

    const/16 v0, 0x29

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_31

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing End Delimiter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3c
    :goto_3c
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2e

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1e
    const/16 v3, 0x28

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_27

    goto :goto_2a

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2a
    :goto_2a
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2e
    :goto_2e
    return-object p1
.end method

.method public hasNested(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_11

    :cond_a
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/expression/DefaultResolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    :cond_11
    :goto_11
    return v0
.end method

.method public isIndexed(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_27

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_27

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_27

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1e

    goto :goto_27

    :cond_1e
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_24

    const/4 p1, 0x1

    return p1

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_27
    :goto_27
    return v0
.end method

.method public isMapped(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_27

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_27

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_27

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1e

    goto :goto_27

    :cond_1e
    const/16 v3, 0x28

    if-ne v2, v3, :cond_24

    const/4 p1, 0x1

    return p1

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_27
    :goto_27
    return v0
.end method

.method public next(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    if-eqz p1, :cond_48

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_48

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_47

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    if-eqz v2, :cond_24

    const/16 v6, 0x5d

    if-ne v4, v6, :cond_44

    add-int/2addr v1, v5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_24
    if-eqz v3, :cond_30

    const/16 v6, 0x29

    if-ne v4, v6, :cond_44

    add-int/2addr v1, v5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_30
    const/16 v6, 0x2e

    if-ne v4, v6, :cond_39

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_39
    const/16 v6, 0x28

    if-ne v4, v6, :cond_3f

    const/4 v3, 0x1

    goto :goto_44

    :cond_3f
    const/16 v6, 0x5b

    if-ne v4, v6, :cond_44

    const/4 v2, 0x1

    :cond_44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_47
    return-object p1

    :cond_48
    :goto_48
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2c

    :cond_a
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/expression/DefaultResolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_19

    return-object v0

    :cond_19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_27

    add-int/lit8 v0, v0, 0x1

    :cond_27
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2c
    :goto_2c
    return-object v0
.end method
