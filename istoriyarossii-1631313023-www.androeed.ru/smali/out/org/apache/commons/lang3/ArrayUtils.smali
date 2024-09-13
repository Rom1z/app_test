.class public Lorg/apache/commons/lang3/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

.field public static final EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

.field public static final EMPTY_CHAR_ARRAY:[C

.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final EMPTY_SHORT_ARRAY:[S

.field public static final EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v1, v0, [J

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    new-array v1, v0, [Ljava/lang/Long;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    new-array v1, v0, [I

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    new-array v1, v0, [Ljava/lang/Integer;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    new-array v1, v0, [S

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    new-array v1, v0, [Ljava/lang/Short;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    new-array v1, v0, [B

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    new-array v1, v0, [Ljava/lang/Byte;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    new-array v1, v0, [D

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    new-array v1, v0, [Ljava/lang/Double;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    new-array v1, v0, [F

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    new-array v1, v0, [Ljava/lang/Float;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    new-array v1, v0, [Z

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    new-array v1, v0, [Ljava/lang/Boolean;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    new-array v1, v0, [C

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    new-array v0, v0, [Ljava/lang/Character;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "Index: "

    const/4 v1, 0x0

    if-nez p0, :cond_2a

    if-nez p1, :cond_10

    const/4 p0, 0x1

    invoke-static {p3, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Length: 0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gt p1, v2, :cond_47

    if-ltz p1, :cond_47

    add-int/lit8 v0, v2, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p0, v1, p3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p3, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    if-ge p1, v2, :cond_46

    add-int/lit8 p2, p1, 0x1

    sub-int/2addr v2, p1

    invoke-static {p0, p1, p3, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    return-object p3

    :cond_47
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Length: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static add([BB)[B
    .registers 3

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput-byte p1, p0, v0

    return-object p0
.end method

.method public static add([BIB)[B
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public static add([CC)[C
    .registers 3

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    check-cast p0, [C

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput-char p1, p0, v0

    return-object p0
.end method

.method public static add([CIC)[C
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    check-cast p0, [C

    return-object p0
.end method

.method public static add([DD)[D
    .registers 4

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    check-cast p0, [D

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput-wide p1, p0, v0

    return-object p0
.end method

.method public static add([DID)[D
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    sget-object p3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    check-cast p0, [D

    return-object p0
.end method

.method public static add([FF)[F
    .registers 3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    check-cast p0, [F

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput p1, p0, v0

    return-object p0
.end method

.method public static add([FIF)[F
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    check-cast p0, [F

    return-object p0
.end method

.method public static add([II)[I
    .registers 3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput p1, p0, v0

    return-object p0
.end method

.method public static add([III)[I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I

    return-object p0
.end method

.method public static add([JIJ)[J
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sget-object p3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    check-cast p0, [J

    return-object p0
.end method

.method public static add([JJ)[J
    .registers 4

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    check-cast p0, [J

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput-wide p1, p0, v0

    return-object p0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_11

    :cond_b
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_11
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array and element cannot both be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_11

    :cond_b
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_11
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput-object p1, p0, v0

    return-object p0

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arguments cannot both be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static add([SIS)[S
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    check-cast p0, [S

    return-object p0
.end method

.method public static add([SS)[S
    .registers 3

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    check-cast p0, [S

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput-short p1, p0, v0

    return-object p0
.end method

.method public static add([ZIZ)[Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    check-cast p0, [Z

    return-object p0
.end method

.method public static add([ZZ)[Z
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    check-cast p0, [Z

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput-boolean p1, p0, v0

    return-object p0
.end method

.method public static varargs addAll([B[B)[B
    .registers 5

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object p0

    return-object p0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs addAll([C[C)[C
    .registers 5

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object p0

    return-object p0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs addAll([D[D)[D
    .registers 5

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object p0

    return-object p0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [D

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs addAll([F[F)[F
    .registers 5

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object p0

    return-object p0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs addAll([I[I)[I
    .registers 5

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object p0

    return-object p0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs addAll([J[J)[J
    .registers 5

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object p0

    return-object p0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [J

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_26
    array-length p0, p0

    array-length v2, p1

    invoke-static {p1, v3, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2b
    .catch Ljava/lang/ArrayStoreException; {:try_start_26 .. :try_end_2b} :catch_2c

    return-object v1

    :catch_2c
    move-exception p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_62

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot store "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in an array of "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_62
    throw p0
.end method

.method public static varargs addAll([S[S)[S
    .registers 5

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object p0

    return-object p0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [S

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs addAll([Z[Z)[Z
    .registers 5

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object p0

    return-object p0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static clone([B)[B
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static clone([C)[C
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0
.end method

.method public static clone([D)[D
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public static clone([F)[F
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public static clone([I)[I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static clone([J)[J
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static clone([S)[S
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    return-object p0
.end method

.method public static clone([Z)[Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0
.end method

.method public static contains([BB)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static contains([CC)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static contains([DD)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static contains([DDD)Z
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static contains([FF)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static contains([II)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static contains([JJ)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static contains([SS)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static contains([ZZ)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private static copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p0, :cond_19

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_19
    const/4 p0, 0x1

    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .registers 2

    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result p0

    return p0
.end method

.method public static indexOf([BB)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result p0

    return p0
.end method

.method public static indexOf([BBI)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    const/4 p2, 0x0

    :cond_7
    :goto_7
    array-length v1, p0

    if-ge p2, v1, :cond_12

    aget-byte v1, p0, p2

    if-ne p1, v1, :cond_f

    return p2

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_12
    return v0
.end method

.method public static indexOf([CC)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result p0

    return p0
.end method

.method public static indexOf([CCI)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    const/4 p2, 0x0

    :cond_7
    :goto_7
    array-length v1, p0

    if-ge p2, v1, :cond_12

    aget-char v1, p0, p2

    if-ne p1, v1, :cond_f

    return p2

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_12
    return v0
.end method

.method public static indexOf([DD)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result p0

    return p0
.end method

.method public static indexOf([DDD)I
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result p0

    return p0
.end method

.method public static indexOf([DDI)I
    .registers 8

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-gez p3, :cond_b

    const/4 p3, 0x0

    :cond_b
    :goto_b
    array-length v0, p0

    if-ge p3, v0, :cond_18

    aget-wide v2, p0, p3

    cmpl-double v0, p1, v2

    if-nez v0, :cond_15

    return p3

    :cond_15
    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    :cond_18
    return v1
.end method

.method public static indexOf([DDID)I
    .registers 10

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-gez p3, :cond_b

    const/4 p3, 0x0

    :cond_b
    sub-double v2, p1, p4

    add-double/2addr p1, p4

    :goto_e
    array-length p4, p0

    if-ge p3, p4, :cond_21

    aget-wide p4, p0, p3

    cmpl-double v0, p4, v2

    if-ltz v0, :cond_1e

    aget-wide p4, p0, p3

    cmpg-double v0, p4, p1

    if-gtz v0, :cond_1e

    return p3

    :cond_1e
    add-int/lit8 p3, p3, 0x1

    goto :goto_e

    :cond_21
    return v1
.end method

.method public static indexOf([FF)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result p0

    return p0
.end method

.method public static indexOf([FFI)I
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-gez p2, :cond_b

    const/4 p2, 0x0

    :cond_b
    :goto_b
    array-length v0, p0

    if-ge p2, v0, :cond_18

    aget v0, p0, p2

    cmpl-float v0, p1, v0

    if-nez v0, :cond_15

    return p2

    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_18
    return v1
.end method

.method public static indexOf([II)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result p0

    return p0
.end method

.method public static indexOf([III)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    const/4 p2, 0x0

    :cond_7
    :goto_7
    array-length v1, p0

    if-ge p2, v1, :cond_12

    aget v1, p0, p2

    if-ne p1, v1, :cond_f

    return p2

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_12
    return v0
.end method

.method public static indexOf([JJ)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result p0

    return p0
.end method

.method public static indexOf([JJI)I
    .registers 8

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p3, :cond_7

    const/4 p3, 0x0

    :cond_7
    :goto_7
    array-length v1, p0

    if-ge p3, v1, :cond_14

    aget-wide v1, p0, p3

    cmp-long v3, p1, v1

    if-nez v3, :cond_11

    return p3

    :cond_11
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_14
    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    const/4 p2, 0x0

    :cond_7
    if-nez p1, :cond_14

    :goto_9
    array-length p1, p0

    if-ge p2, p1, :cond_23

    aget-object p1, p0, p2

    if-nez p1, :cond_11

    return p2

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_14
    :goto_14
    array-length v1, p0

    if-ge p2, v1, :cond_23

    aget-object v1, p0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    return p2

    :cond_20
    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :cond_23
    return v0
.end method

.method public static indexOf([SS)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result p0

    return p0
.end method

.method public static indexOf([SSI)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    const/4 p2, 0x0

    :cond_7
    :goto_7
    array-length v1, p0

    if-ge p2, v1, :cond_12

    aget-short v1, p0, p2

    if-ne p1, v1, :cond_f

    return p2

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_12
    return v0
.end method

.method public static indexOf([ZZ)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result p0

    return p0
.end method

.method public static indexOf([ZZI)I
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-gez p2, :cond_b

    const/4 p2, 0x0

    :cond_b
    :goto_b
    array-length v0, p0

    if-ge p2, v0, :cond_16

    aget-boolean v0, p0, p2

    if-ne p1, v0, :cond_13

    return p2

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_16
    return v1
.end method

.method public static varargs insert(I[B[B)[B
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_49

    array-length v0, p2

    if-nez v0, :cond_a

    goto :goto_49

    :cond_a
    if-ltz p0, :cond_29

    array-length v0, p1

    if-gt p0, v0, :cond_29

    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_1e

    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    array-length v1, p1

    if-ge p0, v1, :cond_28

    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_28
    return-object v0

    :cond_29
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Length: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_49
    :goto_49
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs insert(I[C[C)[C
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_49

    array-length v0, p2

    if-nez v0, :cond_a

    goto :goto_49

    :cond_a
    if-ltz p0, :cond_29

    array-length v0, p1

    if-gt p0, v0, :cond_29

    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [C

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_1e

    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    array-length v1, p1

    if-ge p0, v1, :cond_28

    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_28
    return-object v0

    :cond_29
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Length: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_49
    :goto_49
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object p0

    return-object p0
.end method

.method public static varargs insert(I[D[D)[D
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_49

    array-length v0, p2

    if-nez v0, :cond_a

    goto :goto_49

    :cond_a
    if-ltz p0, :cond_29

    array-length v0, p1

    if-gt p0, v0, :cond_29

    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [D

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_1e

    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    array-length v1, p1

    if-ge p0, v1, :cond_28

    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_28
    return-object v0

    :cond_29
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Length: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_49
    :goto_49
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object p0

    return-object p0
.end method

.method public static varargs insert(I[F[F)[F
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_49

    array-length v0, p2

    if-nez v0, :cond_a

    goto :goto_49

    :cond_a
    if-ltz p0, :cond_29

    array-length v0, p1

    if-gt p0, v0, :cond_29

    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [F

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_1e

    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    array-length v1, p1

    if-ge p0, v1, :cond_28

    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_28
    return-object v0

    :cond_29
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Length: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_49
    :goto_49
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object p0

    return-object p0
.end method

.method public static varargs insert(I[I[I)[I
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_49

    array-length v0, p2

    if-nez v0, :cond_a

    goto :goto_49

    :cond_a
    if-ltz p0, :cond_29

    array-length v0, p1

    if-gt p0, v0, :cond_29

    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_1e

    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    array-length v1, p1

    if-ge p0, v1, :cond_28

    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_28
    return-object v0

    :cond_29
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Length: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_49
    :goto_49
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object p0

    return-object p0
.end method

.method public static varargs insert(I[J[J)[J
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_49

    array-length v0, p2

    if-nez v0, :cond_a

    goto :goto_49

    :cond_a
    if-ltz p0, :cond_29

    array-length v0, p1

    if-gt p0, v0, :cond_29

    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [J

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_1e

    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    array-length v1, p1

    if-ge p0, v1, :cond_28

    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_28
    return-object v0

    :cond_29
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Length: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_49
    :goto_49
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object p0

    return-object p0
.end method

.method public static varargs insert(I[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[TT;[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_57

    array-length v0, p2

    if-nez v0, :cond_a

    goto :goto_57

    :cond_a
    if-ltz p0, :cond_37

    array-length v0, p1

    if-gt p0, v0, :cond_37

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_2c

    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2c
    array-length v1, p1

    if-ge p0, v1, :cond_36

    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    return-object v0

    :cond_37
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Length: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_57
    :goto_57
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs insert(I[S[S)[S
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_49

    array-length v0, p2

    if-nez v0, :cond_a

    goto :goto_49

    :cond_a
    if-ltz p0, :cond_29

    array-length v0, p1

    if-gt p0, v0, :cond_29

    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [S

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_1e

    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    array-length v1, p1

    if-ge p0, v1, :cond_28

    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_28
    return-object v0

    :cond_29
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Length: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_49
    :goto_49
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object p0

    return-object p0
.end method

.method public static varargs insert(I[Z[Z)[Z
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_49

    array-length v0, p2

    if-nez v0, :cond_a

    goto :goto_49

    :cond_a
    if-ltz p0, :cond_29

    array-length v0, p1

    if-gt p0, v0, :cond_29

    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_1e

    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    array-length v1, p1

    if-ge p0, v1, :cond_28

    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_28
    return-object v0

    :cond_29
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Length: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_49
    :goto_49
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object p0

    return-object p0
.end method

.method public static isEmpty([B)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isEmpty([C)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isEmpty([D)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isEmpty([F)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isEmpty([I)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isEmpty([J)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isEmpty([S)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isEmpty([Z)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result p0

    return p0
.end method

.method public static isNotEmpty([B)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty([C)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty([D)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty([F)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty([I)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty([J)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty([Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty([S)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty([Z)Z
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isSameLength([B[B)Z
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isSameLength([C[C)Z
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isSameLength([D[D)Z
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isSameLength([F[F)Z
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isSameLength([I[I)Z
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isSameLength([J[J)Z
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isSameLength([S[S)Z
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isSameLength([Z[Z)Z
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Array must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSorted([B)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p0, :cond_1c

    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    goto :goto_1c

    :cond_8
    const/4 v1, 0x0

    aget-byte v2, p0, v1

    array-length v3, p0

    const/4 v4, 0x1

    :goto_d
    if-ge v4, v3, :cond_1c

    aget-byte v5, p0, v4

    invoke-static {v2, v5}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(BB)I

    move-result v2

    if-lez v2, :cond_18

    return v1

    :cond_18
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_d

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static isSorted([C)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p0, :cond_1c

    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    goto :goto_1c

    :cond_8
    const/4 v1, 0x0

    aget-char v2, p0, v1

    array-length v3, p0

    const/4 v4, 0x1

    :goto_d
    if-ge v4, v3, :cond_1c

    aget-char v5, p0, v4

    invoke-static {v2, v5}, Lorg/apache/commons/lang3/CharUtils;->compare(CC)I

    move-result v2

    if-lez v2, :cond_18

    return v1

    :cond_18
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_d

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static isSorted([D)Z
    .registers 9

    const/4 v0, 0x1

    if-eqz p0, :cond_1c

    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    goto :goto_1c

    :cond_8
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    array-length v4, p0

    const/4 v5, 0x1

    :goto_d
    if-ge v5, v4, :cond_1c

    aget-wide v6, p0, v5

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-lez v2, :cond_18

    return v1

    :cond_18
    add-int/lit8 v5, v5, 0x1

    move-wide v2, v6

    goto :goto_d

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static isSorted([F)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p0, :cond_1c

    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    goto :goto_1c

    :cond_8
    const/4 v1, 0x0

    aget v2, p0, v1

    array-length v3, p0

    const/4 v4, 0x1

    :goto_d
    if-ge v4, v3, :cond_1c

    aget v5, p0, v4

    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-lez v2, :cond_18

    return v1

    :cond_18
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_d

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static isSorted([I)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p0, :cond_1c

    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    goto :goto_1c

    :cond_8
    const/4 v1, 0x0

    aget v2, p0, v1

    array-length v3, p0

    const/4 v4, 0x1

    :goto_d
    if-ge v4, v3, :cond_1c

    aget v5, p0, v4

    invoke-static {v2, v5}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(II)I

    move-result v2

    if-lez v2, :cond_18

    return v1

    :cond_18
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_d

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static isSorted([J)Z
    .registers 9

    const/4 v0, 0x1

    if-eqz p0, :cond_1c

    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    goto :goto_1c

    :cond_8
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    array-length v4, p0

    const/4 v5, 0x1

    :goto_d
    if-ge v5, v4, :cond_1c

    aget-wide v6, p0, v5

    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(JJ)I

    move-result v2

    if-lez v2, :cond_18

    return v1

    :cond_18
    add-int/lit8 v5, v5, 0x1

    move-wide v2, v6

    goto :goto_d

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static isSorted([Ljava/lang/Comparable;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)Z"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/lang3/ArrayUtils$1;

    invoke-direct {v0}, Lorg/apache/commons/lang3/ArrayUtils$1;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->isSorted([Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result p0

    return p0
.end method

.method public static isSorted([Ljava/lang/Object;Ljava/util/Comparator;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-eqz p0, :cond_1e

    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_a

    goto :goto_1e

    :cond_a
    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v3, p0

    const/4 v4, 0x1

    :goto_f
    if-ge v4, v3, :cond_1e

    aget-object v5, p0, v4

    invoke-interface {p1, v2, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    move-object v2, v5

    goto :goto_f

    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Comparator should not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSorted([S)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p0, :cond_1c

    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    goto :goto_1c

    :cond_8
    const/4 v1, 0x0

    aget-short v2, p0, v1

    array-length v3, p0

    const/4 v4, 0x1

    :goto_d
    if-ge v4, v3, :cond_1c

    aget-short v5, p0, v4

    invoke-static {v2, v5}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(SS)I

    move-result v2

    if-lez v2, :cond_18

    return v1

    :cond_18
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_d

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static isSorted([Z)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p0, :cond_1c

    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    goto :goto_1c

    :cond_8
    const/4 v1, 0x0

    aget-boolean v2, p0, v1

    array-length v3, p0

    const/4 v4, 0x1

    :goto_d
    if-ge v4, v3, :cond_1c

    aget-boolean v5, p0, v4

    invoke-static {v2, v5}, Lorg/apache/commons/lang3/BooleanUtils;->compare(ZZ)I

    move-result v2

    if-lez v2, :cond_18

    return v1

    :cond_18
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_d

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static lastIndexOf([BB)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([BBI)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([BBI)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    return v0

    :cond_7
    array-length v1, p0

    if-lt p2, v1, :cond_d

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_d
    :goto_d
    if-ltz p2, :cond_17

    aget-byte v1, p0, p2

    if-ne p1, v1, :cond_14

    return p2

    :cond_14
    add-int/lit8 p2, p2, -0x1

    goto :goto_d

    :cond_17
    return v0
.end method

.method public static lastIndexOf([CC)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([CCI)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([CCI)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    return v0

    :cond_7
    array-length v1, p0

    if-lt p2, v1, :cond_d

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_d
    :goto_d
    if-ltz p2, :cond_17

    aget-char v1, p0, p2

    if-ne p1, v1, :cond_14

    return p2

    :cond_14
    add-int/lit8 p2, p2, -0x1

    goto :goto_d

    :cond_17
    return v0
.end method

.method public static lastIndexOf([DD)I
    .registers 4

    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDI)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([DDD)I
    .registers 11

    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDID)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([DDI)I
    .registers 8

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-gez p3, :cond_b

    return v1

    :cond_b
    array-length v0, p0

    if-lt p3, v0, :cond_11

    array-length p3, p0

    add-int/lit8 p3, p3, -0x1

    :cond_11
    :goto_11
    if-ltz p3, :cond_1d

    aget-wide v2, p0, p3

    cmpl-double v0, p1, v2

    if-nez v0, :cond_1a

    return p3

    :cond_1a
    add-int/lit8 p3, p3, -0x1

    goto :goto_11

    :cond_1d
    return v1
.end method

.method public static lastIndexOf([DDID)I
    .registers 10

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-gez p3, :cond_b

    return v1

    :cond_b
    array-length v0, p0

    if-lt p3, v0, :cond_11

    array-length p3, p0

    add-int/lit8 p3, p3, -0x1

    :cond_11
    sub-double v2, p1, p4

    add-double/2addr p1, p4

    :goto_14
    if-ltz p3, :cond_26

    aget-wide p4, p0, p3

    cmpl-double v0, p4, v2

    if-ltz v0, :cond_23

    aget-wide p4, p0, p3

    cmpg-double v0, p4, p1

    if-gtz v0, :cond_23

    return p3

    :cond_23
    add-int/lit8 p3, p3, -0x1

    goto :goto_14

    :cond_26
    return v1
.end method

.method public static lastIndexOf([FF)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([FFI)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([FFI)I
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-gez p2, :cond_b

    return v1

    :cond_b
    array-length v0, p0

    if-lt p2, v0, :cond_11

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_11
    :goto_11
    if-ltz p2, :cond_1d

    aget v0, p0, p2

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1a

    return p2

    :cond_1a
    add-int/lit8 p2, p2, -0x1

    goto :goto_11

    :cond_1d
    return v1
.end method

.method public static lastIndexOf([II)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([III)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([III)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    return v0

    :cond_7
    array-length v1, p0

    if-lt p2, v1, :cond_d

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_d
    :goto_d
    if-ltz p2, :cond_17

    aget v1, p0, p2

    if-ne p1, v1, :cond_14

    return p2

    :cond_14
    add-int/lit8 p2, p2, -0x1

    goto :goto_d

    :cond_17
    return v0
.end method

.method public static lastIndexOf([JJ)I
    .registers 4

    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([JJI)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([JJI)I
    .registers 8

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p3, :cond_7

    return v0

    :cond_7
    array-length v1, p0

    if-lt p3, v1, :cond_d

    array-length p3, p0

    add-int/lit8 p3, p3, -0x1

    :cond_d
    :goto_d
    if-ltz p3, :cond_19

    aget-wide v1, p0, p3

    cmp-long v3, p1, v1

    if-nez v3, :cond_16

    return p3

    :cond_16
    add-int/lit8 p3, p3, -0x1

    goto :goto_d

    :cond_19
    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    return v0

    :cond_7
    array-length v1, p0

    if-lt p2, v1, :cond_d

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_d
    if-nez p1, :cond_19

    :goto_f
    if-ltz p2, :cond_35

    aget-object p1, p0, p2

    if-nez p1, :cond_16

    return p2

    :cond_16
    add-int/lit8 p2, p2, -0x1

    goto :goto_f

    :cond_19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    :goto_27
    if-ltz p2, :cond_35

    aget-object v1, p0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    return p2

    :cond_32
    add-int/lit8 p2, p2, -0x1

    goto :goto_27

    :cond_35
    return v0
.end method

.method public static lastIndexOf([SS)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([SSI)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([SSI)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-gez p2, :cond_7

    return v0

    :cond_7
    array-length v1, p0

    if-lt p2, v1, :cond_d

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_d
    :goto_d
    if-ltz p2, :cond_17

    aget-short v1, p0, p2

    if-ne p1, v1, :cond_14

    return p2

    :cond_14
    add-int/lit8 p2, p2, -0x1

    goto :goto_d

    :cond_17
    return v0
.end method

.method public static lastIndexOf([ZZ)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([ZZI)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([ZZI)I
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-gez p2, :cond_b

    return v1

    :cond_b
    array-length v0, p0

    if-lt p2, v0, :cond_11

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_11
    :goto_11
    if-ltz p2, :cond_1b

    aget-boolean v0, p0, p2

    if-ne p1, v0, :cond_18

    return p2

    :cond_18
    add-int/lit8 p2, p2, -0x1

    goto :goto_11

    :cond_1b
    return v1
.end method

.method public static nullToEmpty([B)[B
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([C)[C
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([D)[D
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([F)[F
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([I)[I
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([J)[J
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Boolean;)[Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Byte;)[Ljava/lang/Byte;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Character;)[Ljava/lang/Character;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Double;)[Ljava/lang/Double;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Float;)[Ljava/lang/Float;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Integer;)[Ljava/lang/Integer;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Long;)[Ljava/lang/Long;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class<",
            "[TT;>;)[TT;"
        }
    .end annotation

    if-eqz p1, :cond_14

    if-nez p0, :cond_13

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    :cond_13
    return-object p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The type must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static nullToEmpty([Ljava/lang/Short;)[Ljava/lang/Short;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([S)[S
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    :cond_8
    return-object p0
.end method

.method public static nullToEmpty([Z)[Z
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    :cond_8
    return-object p0
.end method

.method private static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ltz p1, :cond_25

    if-ge p1, v0, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge p1, v2, :cond_24

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    return-object v1

    :cond_25
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Length: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static remove([BI)[B
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public static remove([CI)[C
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    check-cast p0, [C

    return-object p0
.end method

.method public static remove([DI)[D
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    check-cast p0, [D

    return-object p0
.end method

.method public static remove([FI)[F
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    check-cast p0, [F

    return-object p0
.end method

.method public static remove([II)[I
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I

    return-object p0
.end method

.method public static remove([JI)[J
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    check-cast p0, [J

    return-object p0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static remove([SI)[S
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    check-cast p0, [S

    return-object p0
.end method

.method public static remove([ZI)[Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    check-cast p0, [Z

    return-object p0
.end method

.method static removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;
    .registers 8

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sub-int v1, v0, v1

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_18
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2c

    sub-int v5, v4, v2

    if-lez v5, :cond_27

    invoke-static {p0, v2, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    :cond_27
    invoke-virtual {p1, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v2

    goto :goto_18

    :cond_2c
    sub-int/2addr v0, v2

    if-lez v0, :cond_32

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_32
    return-object v1
.end method

.method static varargs removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;
    .registers 10

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_45

    array-length v1, p1

    move v4, v0

    const/4 v3, 0x0

    :goto_15
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_46

    aget v5, p1, v1

    if-ltz v5, :cond_26

    if-ge v5, v0, :cond_26

    if-lt v5, v4, :cond_22

    goto :goto_15

    :cond_22
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_15

    :cond_26
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Length: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    const/4 v3, 0x0

    :cond_46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sub-int v4, v0, v3

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    if-ge v3, v0, :cond_71

    array-length v3, p1

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    :goto_59
    if-ltz v3, :cond_6c

    aget v6, p1, v3

    sub-int/2addr v0, v6

    if-le v0, v5, :cond_68

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v4, v0

    add-int/lit8 v7, v6, 0x1

    invoke-static {p0, v7, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_68
    add-int/lit8 v3, v3, -0x1

    move v0, v6

    goto :goto_59

    :cond_6c
    if-lez v0, :cond_71

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_71
    return-object v1
.end method

.method public static varargs removeAll([B[I)[B
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public static varargs removeAll([C[I)[C
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    check-cast p0, [C

    return-object p0
.end method

.method public static varargs removeAll([D[I)[D
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    check-cast p0, [D

    return-object p0
.end method

.method public static varargs removeAll([F[I)[F
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    check-cast p0, [F

    return-object p0
.end method

.method public static varargs removeAll([I[I)[I
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I

    return-object p0
.end method

.method public static varargs removeAll([J[I)[J
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    check-cast p0, [J

    return-object p0
.end method

.method public static varargs removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I)[TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static varargs removeAll([S[I)[S
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    check-cast p0, [S

    return-object p0
.end method

.method public static varargs removeAll([Z[I)[Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    check-cast p0, [Z

    return-object p0
.end method

.method public static removeAllOccurences([BB)[B
    .registers 8

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object p0

    return-object p0

    :cond_c
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x1

    :goto_15
    add-int/lit8 v4, v3, -0x1

    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v4

    if-eq v4, v1, :cond_26

    add-int/lit8 v5, v3, 0x1

    aput v4, v2, v3

    move v3, v5

    goto :goto_15

    :cond_26
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([B[I)[B

    move-result-object p0

    return-object p0
.end method

.method public static removeAllOccurences([CC)[C
    .registers 8

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object p0

    return-object p0

    :cond_c
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x1

    :goto_15
    add-int/lit8 v4, v3, -0x1

    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v4

    if-eq v4, v1, :cond_26

    add-int/lit8 v5, v3, 0x1

    aput v4, v2, v3

    move v3, v5

    goto :goto_15

    :cond_26
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([C[I)[C

    move-result-object p0

    return-object p0
.end method

.method public static removeAllOccurences([DD)[D
    .registers 9

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object p0

    return-object p0

    :cond_c
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x1

    :goto_15
    add-int/lit8 v4, v3, -0x1

    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, p2, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v4

    if-eq v4, v1, :cond_26

    add-int/lit8 v5, v3, 0x1

    aput v4, v2, v3

    move v3, v5

    goto :goto_15

    :cond_26
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([D[I)[D

    move-result-object p0

    return-object p0
.end method

.method public static removeAllOccurences([FF)[F
    .registers 8

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object p0

    return-object p0

    :cond_c
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x1

    :goto_15
    add-int/lit8 v4, v3, -0x1

    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v4

    if-eq v4, v1, :cond_26

    add-int/lit8 v5, v3, 0x1

    aput v4, v2, v3

    move v3, v5

    goto :goto_15

    :cond_26
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([F[I)[F

    move-result-object p0

    return-object p0
.end method

.method public static removeAllOccurences([II)[I
    .registers 8

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object p0

    return-object p0

    :cond_c
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x1

    :goto_15
    add-int/lit8 v4, v3, -0x1

    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v4

    if-eq v4, v1, :cond_26

    add-int/lit8 v5, v3, 0x1

    aput v4, v2, v3

    move v3, v5

    goto :goto_15

    :cond_26
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public static removeAllOccurences([JJ)[J
    .registers 9

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object p0

    return-object p0

    :cond_c
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x1

    :goto_15
    add-int/lit8 v4, v3, -0x1

    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, p2, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v4

    if-eq v4, v1, :cond_26

    add-int/lit8 v5, v3, 0x1

    aput v4, v2, v3

    move v3, v5

    goto :goto_15

    :cond_26
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([J[I)[J

    move-result-object p0

    return-object p0
.end method

.method public static removeAllOccurences([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x1

    :goto_15
    add-int/lit8 v4, v3, -0x1

    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v4

    if-eq v4, v1, :cond_26

    add-int/lit8 v5, v3, 0x1

    aput v4, v2, v3

    move v3, v5

    goto :goto_15

    :cond_26
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static removeAllOccurences([SS)[S
    .registers 8

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object p0

    return-object p0

    :cond_c
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x1

    :goto_15
    add-int/lit8 v4, v3, -0x1

    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v4

    if-eq v4, v1, :cond_26

    add-int/lit8 v5, v3, 0x1

    aput v4, v2, v3

    move v3, v5

    goto :goto_15

    :cond_26
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([S[I)[S

    move-result-object p0

    return-object p0
.end method

.method public static removeAllOccurences([ZZ)[Z
    .registers 8

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object p0

    return-object p0

    :cond_c
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x1

    :goto_15
    add-int/lit8 v4, v3, -0x1

    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v4

    if-eq v4, v1, :cond_26

    add-int/lit8 v5, v3, 0x1

    aput v4, v2, v3

    move v3, v5

    goto :goto_15

    :cond_26
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([Z[I)[Z

    move-result-object p0

    return-object p0
.end method

.method public static removeElement([BB)[B
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object p0

    return-object p0

    :cond_c
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static removeElement([CC)[C
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object p0

    return-object p0

    :cond_c
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([CI)[C

    move-result-object p0

    return-object p0
.end method

.method public static removeElement([DD)[D
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object p0

    return-object p0

    :cond_c
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([DI)[D

    move-result-object p0

    return-object p0
.end method

.method public static removeElement([FF)[F
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object p0

    return-object p0

    :cond_c
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([FI)[F

    move-result-object p0

    return-object p0
.end method

.method public static removeElement([II)[I
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object p0

    return-object p0

    :cond_c
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([II)[I

    move-result-object p0

    return-object p0
.end method

.method public static removeElement([JJ)[J
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object p0

    return-object p0

    :cond_c
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([JI)[J

    move-result-object p0

    return-object p0
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static removeElement([SS)[S
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object p0

    return-object p0

    :cond_c
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([SI)[S

    move-result-object p0

    return-object p0
.end method

.method public static removeElement([ZZ)[Z
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object p0

    return-object p0

    :cond_c
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([ZI)[Z

    move-result-object p0

    return-object p0
.end method

.method public static varargs removeElements([B[B)[B
    .registers 9

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_68

    :cond_d
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_36

    aget-byte v4, p1, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_30

    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_30
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_36
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    :goto_3b
    array-length v1, p0

    if-ge v2, v1, :cond_5f

    aget-byte v1, p0, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_59

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_5f
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0

    :cond_68
    :goto_68
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs removeElements([C[C)[C
    .registers 9

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_68

    :cond_d
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_36

    aget-char v4, p1, v3

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_30

    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_30
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_36
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    :goto_3b
    array-length v1, p0

    if-ge v2, v1, :cond_5f

    aget-char v1, p0, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_59

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_5f
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    check-cast p0, [C

    return-object p0

    :cond_68
    :goto_68
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object p0

    return-object p0
.end method

.method public static varargs removeElements([D[D)[D
    .registers 9

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_68

    :cond_d
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_36

    aget-wide v4, p1, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_30

    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_30
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_36
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    :goto_3b
    array-length v1, p0

    if-ge v2, v1, :cond_5f

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_59

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_5f
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    check-cast p0, [D

    return-object p0

    :cond_68
    :goto_68
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object p0

    return-object p0
.end method

.method public static varargs removeElements([F[F)[F
    .registers 9

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_68

    :cond_d
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_36

    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_30

    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_30
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_36
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    :goto_3b
    array-length v1, p0

    if-ge v2, v1, :cond_5f

    aget v1, p0, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_59

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_5f
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    check-cast p0, [F

    return-object p0

    :cond_68
    :goto_68
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object p0

    return-object p0
.end method

.method public static varargs removeElements([I[I)[I
    .registers 9

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_68

    :cond_d
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_36

    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_30

    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_30
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_36
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    :goto_3b
    array-length v1, p0

    if-ge v2, v1, :cond_5f

    aget v1, p0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_59

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_5f
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I

    return-object p0

    :cond_68
    :goto_68
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object p0

    return-object p0
.end method

.method public static varargs removeElements([J[J)[J
    .registers 9

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_68

    :cond_d
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_36

    aget-wide v4, p1, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_30

    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_30
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_36
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    :goto_3b
    array-length v1, p0

    if-ge v2, v1, :cond_5f

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_59

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_5f
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    check-cast p0, [J

    return-object p0

    :cond_68
    :goto_68
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object p0

    return-object p0
.end method

.method public static varargs removeElements([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5c

    :cond_d
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_32

    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_2c

    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_2c
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_32
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    :goto_37
    array-length v1, p0

    if-ge v2, v1, :cond_53

    aget-object v1, p0, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v3, :cond_50

    invoke-virtual {v3}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_4d

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_53
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_5c
    :goto_5c
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs removeElements([S[S)[S
    .registers 9

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_68

    :cond_d
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_36

    aget-short v4, p1, v3

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_30

    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_30
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_36
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    :goto_3b
    array-length v1, p0

    if-ge v2, v1, :cond_5f

    aget-short v1, p0, v2

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_59

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_5f
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    check-cast p0, [S

    return-object p0

    :cond_68
    :goto_68
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object p0

    return-object p0
.end method

.method public static varargs removeElements([Z[Z)[Z
    .registers 9

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_68

    :cond_d
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_36

    aget-boolean v4, p1, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_30

    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_30
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_36
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    :goto_3b
    array-length v1, p0

    if-ge v2, v1, :cond_5f

    aget-boolean v1, p0, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_59

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_5f
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    check-cast p0, [Z

    return-object p0

    :cond_68
    :goto_68
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object p0

    return-object p0
.end method

.method public static reverse([B)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([BII)V

    return-void
.end method

.method public static reverse([BII)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-gez p1, :cond_6

    const/4 p1, 0x0

    :cond_6
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_d
    if-le p2, p1, :cond_1c

    aget-byte v0, p0, p2

    aget-byte v1, p0, p1

    aput-byte v1, p0, p2

    aput-byte v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method

.method public static reverse([C)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([CII)V

    return-void
.end method

.method public static reverse([CII)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-gez p1, :cond_6

    const/4 p1, 0x0

    :cond_6
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_d
    if-le p2, p1, :cond_1c

    aget-char v0, p0, p2

    aget-char v1, p0, p1

    aput-char v1, p0, p2

    aput-char v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method

.method public static reverse([D)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([DII)V

    return-void
.end method

.method public static reverse([DII)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-gez p1, :cond_6

    const/4 p1, 0x0

    :cond_6
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_d
    if-le p2, p1, :cond_1c

    aget-wide v0, p0, p2

    aget-wide v2, p0, p1

    aput-wide v2, p0, p2

    aput-wide v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method

.method public static reverse([F)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([FII)V

    return-void
.end method

.method public static reverse([FII)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-gez p1, :cond_6

    const/4 p1, 0x0

    :cond_6
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_d
    if-le p2, p1, :cond_1c

    aget v0, p0, p2

    aget v1, p0, p1

    aput v1, p0, p2

    aput v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method

.method public static reverse([I)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([III)V

    return-void
.end method

.method public static reverse([III)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-gez p1, :cond_6

    const/4 p1, 0x0

    :cond_6
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_d
    if-le p2, p1, :cond_1c

    aget v0, p0, p2

    aget v1, p0, p1

    aput v1, p0, p2

    aput v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method

.method public static reverse([J)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([JII)V

    return-void
.end method

.method public static reverse([JII)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-gez p1, :cond_6

    const/4 p1, 0x0

    :cond_6
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_d
    if-le p2, p1, :cond_1c

    aget-wide v0, p0, p2

    aget-wide v2, p0, p1

    aput-wide v2, p0, p2

    aput-wide v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method

.method public static reverse([Ljava/lang/Object;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;II)V

    return-void
.end method

.method public static reverse([Ljava/lang/Object;II)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-gez p1, :cond_6

    const/4 p1, 0x0

    :cond_6
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_d
    if-le p2, p1, :cond_1c

    aget-object v0, p0, p2

    aget-object v1, p0, p1

    aput-object v1, p0, p2

    aput-object v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method

.method public static reverse([S)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([SII)V

    return-void
.end method

.method public static reverse([SII)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-gez p1, :cond_6

    const/4 p1, 0x0

    :cond_6
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_d
    if-le p2, p1, :cond_1c

    aget-short v0, p0, p2

    aget-short v1, p0, p1

    aput-short v1, p0, p2

    aput-short v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method

.method public static reverse([Z)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([ZII)V

    return-void
.end method

.method public static reverse([ZII)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-gez p1, :cond_6

    const/4 p1, 0x0

    :cond_6
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_d
    if-le p2, p1, :cond_1c

    aget-boolean v0, p0, p2

    aget-boolean v1, p0, p1

    aput-boolean v1, p0, p2

    aput-boolean v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method

.method public static shift([BI)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([BIII)V

    return-void
.end method

.method public static shift([BIII)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_3b

    if-gtz p2, :cond_b

    goto :goto_3b

    :cond_b
    if-gez p1, :cond_e

    const/4 p1, 0x0

    :cond_e
    array-length v0, p0

    if-lt p2, v0, :cond_12

    array-length p2, p0

    :cond_12
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_16

    return-void

    :cond_16
    rem-int/2addr p3, p2

    if-gez p3, :cond_1a

    add-int/2addr p3, p2

    :cond_1a
    :goto_1a
    if-le p2, v1, :cond_3b

    if-lez p3, :cond_3b

    sub-int v0, p2, p3

    if-le p3, v0, :cond_2d

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_1a

    :cond_2d
    if-ge p3, v0, :cond_37

    add-int p2, p1, v0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_1a

    :cond_37
    add-int/2addr v0, p1

    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static shift([CI)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([CIII)V

    return-void
.end method

.method public static shift([CIII)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_3b

    if-gtz p2, :cond_b

    goto :goto_3b

    :cond_b
    if-gez p1, :cond_e

    const/4 p1, 0x0

    :cond_e
    array-length v0, p0

    if-lt p2, v0, :cond_12

    array-length p2, p0

    :cond_12
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_16

    return-void

    :cond_16
    rem-int/2addr p3, p2

    if-gez p3, :cond_1a

    add-int/2addr p3, p2

    :cond_1a
    :goto_1a
    if-le p2, v1, :cond_3b

    if-lez p3, :cond_3b

    sub-int v0, p2, p3

    if-le p3, v0, :cond_2d

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_1a

    :cond_2d
    if-ge p3, v0, :cond_37

    add-int p2, p1, v0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_1a

    :cond_37
    add-int/2addr v0, p1

    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static shift([DI)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([DIII)V

    return-void
.end method

.method public static shift([DIII)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_3b

    if-gtz p2, :cond_b

    goto :goto_3b

    :cond_b
    if-gez p1, :cond_e

    const/4 p1, 0x0

    :cond_e
    array-length v0, p0

    if-lt p2, v0, :cond_12

    array-length p2, p0

    :cond_12
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_16

    return-void

    :cond_16
    rem-int/2addr p3, p2

    if-gez p3, :cond_1a

    add-int/2addr p3, p2

    :cond_1a
    :goto_1a
    if-le p2, v1, :cond_3b

    if-lez p3, :cond_3b

    sub-int v0, p2, p3

    if-le p3, v0, :cond_2d

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_1a

    :cond_2d
    if-ge p3, v0, :cond_37

    add-int p2, p1, v0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_1a

    :cond_37
    add-int/2addr v0, p1

    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static shift([FI)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([FIII)V

    return-void
.end method

.method public static shift([FIII)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_3b

    if-gtz p2, :cond_b

    goto :goto_3b

    :cond_b
    if-gez p1, :cond_e

    const/4 p1, 0x0

    :cond_e
    array-length v0, p0

    if-lt p2, v0, :cond_12

    array-length p2, p0

    :cond_12
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_16

    return-void

    :cond_16
    rem-int/2addr p3, p2

    if-gez p3, :cond_1a

    add-int/2addr p3, p2

    :cond_1a
    :goto_1a
    if-le p2, v1, :cond_3b

    if-lez p3, :cond_3b

    sub-int v0, p2, p3

    if-le p3, v0, :cond_2d

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_1a

    :cond_2d
    if-ge p3, v0, :cond_37

    add-int p2, p1, v0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_1a

    :cond_37
    add-int/2addr v0, p1

    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static shift([II)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([IIII)V

    return-void
.end method

.method public static shift([IIII)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_3b

    if-gtz p2, :cond_b

    goto :goto_3b

    :cond_b
    if-gez p1, :cond_e

    const/4 p1, 0x0

    :cond_e
    array-length v0, p0

    if-lt p2, v0, :cond_12

    array-length p2, p0

    :cond_12
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_16

    return-void

    :cond_16
    rem-int/2addr p3, p2

    if-gez p3, :cond_1a

    add-int/2addr p3, p2

    :cond_1a
    :goto_1a
    if-le p2, v1, :cond_3b

    if-lez p3, :cond_3b

    sub-int v0, p2, p3

    if-le p3, v0, :cond_2d

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_1a

    :cond_2d
    if-ge p3, v0, :cond_37

    add-int p2, p1, v0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_1a

    :cond_37
    add-int/2addr v0, p1

    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static shift([JI)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([JIII)V

    return-void
.end method

.method public static shift([JIII)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_3b

    if-gtz p2, :cond_b

    goto :goto_3b

    :cond_b
    if-gez p1, :cond_e

    const/4 p1, 0x0

    :cond_e
    array-length v0, p0

    if-lt p2, v0, :cond_12

    array-length p2, p0

    :cond_12
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_16

    return-void

    :cond_16
    rem-int/2addr p3, p2

    if-gez p3, :cond_1a

    add-int/2addr p3, p2

    :cond_1a
    :goto_1a
    if-le p2, v1, :cond_3b

    if-lez p3, :cond_3b

    sub-int v0, p2, p3

    if-le p3, v0, :cond_2d

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_1a

    :cond_2d
    if-ge p3, v0, :cond_37

    add-int p2, p1, v0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_1a

    :cond_37
    add-int/2addr v0, p1

    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static shift([Ljava/lang/Object;I)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([Ljava/lang/Object;III)V

    return-void
.end method

.method public static shift([Ljava/lang/Object;III)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_3b

    if-gtz p2, :cond_b

    goto :goto_3b

    :cond_b
    if-gez p1, :cond_e

    const/4 p1, 0x0

    :cond_e
    array-length v0, p0

    if-lt p2, v0, :cond_12

    array-length p2, p0

    :cond_12
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_16

    return-void

    :cond_16
    rem-int/2addr p3, p2

    if-gez p3, :cond_1a

    add-int/2addr p3, p2

    :cond_1a
    :goto_1a
    if-le p2, v1, :cond_3b

    if-lez p3, :cond_3b

    sub-int v0, p2, p3

    if-le p3, v0, :cond_2d

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_1a

    :cond_2d
    if-ge p3, v0, :cond_37

    add-int p2, p1, v0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_1a

    :cond_37
    add-int/2addr v0, p1

    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static shift([SI)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([SIII)V

    return-void
.end method

.method public static shift([SIII)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_3b

    if-gtz p2, :cond_b

    goto :goto_3b

    :cond_b
    if-gez p1, :cond_e

    const/4 p1, 0x0

    :cond_e
    array-length v0, p0

    if-lt p2, v0, :cond_12

    array-length p2, p0

    :cond_12
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_16

    return-void

    :cond_16
    rem-int/2addr p3, p2

    if-gez p3, :cond_1a

    add-int/2addr p3, p2

    :cond_1a
    :goto_1a
    if-le p2, v1, :cond_3b

    if-lez p3, :cond_3b

    sub-int v0, p2, p3

    if-le p3, v0, :cond_2d

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_1a

    :cond_2d
    if-ge p3, v0, :cond_37

    add-int p2, p1, v0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_1a

    :cond_37
    add-int/2addr v0, p1

    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static shift([ZI)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([ZIII)V

    return-void
.end method

.method public static shift([ZIII)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_3b

    if-gtz p2, :cond_b

    goto :goto_3b

    :cond_b
    if-gez p1, :cond_e

    const/4 p1, 0x0

    :cond_e
    array-length v0, p0

    if-lt p2, v0, :cond_12

    array-length p2, p0

    :cond_12
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_16

    return-void

    :cond_16
    rem-int/2addr p3, p2

    if-gez p3, :cond_1a

    add-int/2addr p3, p2

    :cond_1a
    :goto_1a
    if-le p2, v1, :cond_3b

    if-lez p3, :cond_3b

    sub-int v0, p2, p3

    if-le p3, v0, :cond_2d

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_1a

    :cond_2d
    if-ge p3, v0, :cond_37

    add-int p2, p1, v0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_1a

    :cond_37
    add-int/2addr v0, p1

    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static shuffle([B)V
    .registers 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([BLjava/util/Random;)V

    return-void
.end method

.method public static shuffle([BLjava/util/Random;)V
    .registers 6

    array-length v0, p0

    :goto_1
    const/4 v1, 0x1

    if-le v0, v1, :cond_10

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public static shuffle([C)V
    .registers 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([CLjava/util/Random;)V

    return-void
.end method

.method public static shuffle([CLjava/util/Random;)V
    .registers 6

    array-length v0, p0

    :goto_1
    const/4 v1, 0x1

    if-le v0, v1, :cond_10

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public static shuffle([D)V
    .registers 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([DLjava/util/Random;)V

    return-void
.end method

.method public static shuffle([DLjava/util/Random;)V
    .registers 6

    array-length v0, p0

    :goto_1
    const/4 v1, 0x1

    if-le v0, v1, :cond_10

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public static shuffle([F)V
    .registers 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([FLjava/util/Random;)V

    return-void
.end method

.method public static shuffle([FLjava/util/Random;)V
    .registers 6

    array-length v0, p0

    :goto_1
    const/4 v1, 0x1

    if-le v0, v1, :cond_10

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public static shuffle([I)V
    .registers 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([ILjava/util/Random;)V

    return-void
.end method

.method public static shuffle([ILjava/util/Random;)V
    .registers 6

    array-length v0, p0

    :goto_1
    const/4 v1, 0x1

    if-le v0, v1, :cond_10

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public static shuffle([J)V
    .registers 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([JLjava/util/Random;)V

    return-void
.end method

.method public static shuffle([JLjava/util/Random;)V
    .registers 6

    array-length v0, p0

    :goto_1
    const/4 v1, 0x1

    if-le v0, v1, :cond_10

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public static shuffle([Ljava/lang/Object;)V
    .registers 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([Ljava/lang/Object;Ljava/util/Random;)V

    return-void
.end method

.method public static shuffle([Ljava/lang/Object;Ljava/util/Random;)V
    .registers 6

    array-length v0, p0

    :goto_1
    const/4 v1, 0x1

    if-le v0, v1, :cond_10

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public static shuffle([S)V
    .registers 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([SLjava/util/Random;)V

    return-void
.end method

.method public static shuffle([SLjava/util/Random;)V
    .registers 6

    array-length v0, p0

    :goto_1
    const/4 v1, 0x1

    if-le v0, v1, :cond_10

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public static shuffle([Z)V
    .registers 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([ZLjava/util/Random;)V

    return-void
.end method

.method public static shuffle([ZLjava/util/Random;)V
    .registers 6

    array-length v0, p0

    :goto_1
    const/4 v1, 0x1

    if-le v0, v1, :cond_10

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public static subarray([BII)[B
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    if-gez p1, :cond_8

    const/4 p1, 0x0

    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    array-length p2, p0

    :cond_c
    sub-int/2addr p2, p1

    if-gtz p2, :cond_12

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    :cond_12
    new-array v1, p2, [B

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static subarray([CII)[C
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    if-gez p1, :cond_8

    const/4 p1, 0x0

    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    array-length p2, p0

    :cond_c
    sub-int/2addr p2, p1

    if-gtz p2, :cond_12

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object p0

    :cond_12
    new-array v1, p2, [C

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static subarray([DII)[D
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    if-gez p1, :cond_8

    const/4 p1, 0x0

    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    array-length p2, p0

    :cond_c
    sub-int/2addr p2, p1

    if-gtz p2, :cond_12

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object p0

    :cond_12
    new-array v1, p2, [D

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static subarray([FII)[F
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    if-gez p1, :cond_8

    const/4 p1, 0x0

    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    array-length p2, p0

    :cond_c
    sub-int/2addr p2, p1

    if-gtz p2, :cond_12

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object p0

    :cond_12
    new-array v1, p2, [F

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static subarray([III)[I
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    if-gez p1, :cond_8

    const/4 p1, 0x0

    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    array-length p2, p0

    :cond_c
    sub-int/2addr p2, p1

    if-gtz p2, :cond_12

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object p0

    :cond_12
    new-array v1, p2, [I

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static subarray([JII)[J
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    if-gez p1, :cond_8

    const/4 p1, 0x0

    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    array-length p2, p0

    :cond_c
    sub-int/2addr p2, p1

    if-gtz p2, :cond_12

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object p0

    :cond_12
    new-array v1, p2, [J

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static subarray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    if-gez p1, :cond_8

    const/4 p1, 0x0

    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    array-length p2, p0

    :cond_c
    sub-int/2addr p2, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    if-gtz p2, :cond_20

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_20
    invoke-static {v1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static subarray([SII)[S
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    if-gez p1, :cond_8

    const/4 p1, 0x0

    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    array-length p2, p0

    :cond_c
    sub-int/2addr p2, p1

    if-gtz p2, :cond_12

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object p0

    :cond_12
    new-array v1, p2, [S

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static subarray([ZII)[Z
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    if-gez p1, :cond_8

    const/4 p1, 0x0

    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    array-length p2, p0

    :cond_c
    sub-int/2addr p2, p1

    if-gtz p2, :cond_12

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object p0

    :cond_12
    new-array v1, p2, [Z

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static swap([BII)V
    .registers 4

    if-eqz p0, :cond_a

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_a

    :cond_6
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    :cond_a
    :goto_a
    return-void
.end method

.method public static swap([BIII)V
    .registers 7

    if-eqz p0, :cond_30

    array-length v0, p0

    if-eqz v0, :cond_30

    array-length v0, p0

    if-ge p1, v0, :cond_30

    array-length v0, p0

    if-lt p2, v0, :cond_c

    goto :goto_30

    :cond_c
    const/4 v0, 0x0

    if-gez p1, :cond_10

    const/4 p1, 0x0

    :cond_10
    if-gez p2, :cond_13

    const/4 p2, 0x0

    :cond_13
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_1f
    if-ge v0, p3, :cond_30

    aget-byte v1, p0, p1

    aget-byte v2, p0, p2

    aput-byte v2, p0, p1

    aput-byte v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    :cond_30
    :goto_30
    return-void
.end method

.method public static swap([CII)V
    .registers 4

    if-eqz p0, :cond_a

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_a

    :cond_6
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    :cond_a
    :goto_a
    return-void
.end method

.method public static swap([CIII)V
    .registers 7

    if-eqz p0, :cond_30

    array-length v0, p0

    if-eqz v0, :cond_30

    array-length v0, p0

    if-ge p1, v0, :cond_30

    array-length v0, p0

    if-lt p2, v0, :cond_c

    goto :goto_30

    :cond_c
    const/4 v0, 0x0

    if-gez p1, :cond_10

    const/4 p1, 0x0

    :cond_10
    if-gez p2, :cond_13

    const/4 p2, 0x0

    :cond_13
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_1f
    if-ge v0, p3, :cond_30

    aget-char v1, p0, p1

    aget-char v2, p0, p2

    aput-char v2, p0, p1

    aput-char v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    :cond_30
    :goto_30
    return-void
.end method

.method public static swap([DII)V
    .registers 4

    if-eqz p0, :cond_a

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_a

    :cond_6
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    :cond_a
    :goto_a
    return-void
.end method

.method public static swap([DIII)V
    .registers 9

    if-eqz p0, :cond_30

    array-length v0, p0

    if-eqz v0, :cond_30

    array-length v0, p0

    if-ge p1, v0, :cond_30

    array-length v0, p0

    if-lt p2, v0, :cond_c

    goto :goto_30

    :cond_c
    const/4 v0, 0x0

    if-gez p1, :cond_10

    const/4 p1, 0x0

    :cond_10
    if-gez p2, :cond_13

    const/4 p2, 0x0

    :cond_13
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_1f
    if-ge v0, p3, :cond_30

    aget-wide v1, p0, p1

    aget-wide v3, p0, p2

    aput-wide v3, p0, p1

    aput-wide v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    :cond_30
    :goto_30
    return-void
.end method

.method public static swap([FII)V
    .registers 4

    if-eqz p0, :cond_a

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_a

    :cond_6
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    :cond_a
    :goto_a
    return-void
.end method

.method public static swap([FIII)V
    .registers 7

    if-eqz p0, :cond_30

    array-length v0, p0

    if-eqz v0, :cond_30

    array-length v0, p0

    if-ge p1, v0, :cond_30

    array-length v0, p0

    if-lt p2, v0, :cond_c

    goto :goto_30

    :cond_c
    const/4 v0, 0x0

    if-gez p1, :cond_10

    const/4 p1, 0x0

    :cond_10
    if-gez p2, :cond_13

    const/4 p2, 0x0

    :cond_13
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_1f
    if-ge v0, p3, :cond_30

    aget v1, p0, p1

    aget v2, p0, p2

    aput v2, p0, p1

    aput v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    :cond_30
    :goto_30
    return-void
.end method

.method public static swap([III)V
    .registers 4

    if-eqz p0, :cond_a

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_a

    :cond_6
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    :cond_a
    :goto_a
    return-void
.end method

.method public static swap([IIII)V
    .registers 7

    if-eqz p0, :cond_30

    array-length v0, p0

    if-eqz v0, :cond_30

    array-length v0, p0

    if-ge p1, v0, :cond_30

    array-length v0, p0

    if-lt p2, v0, :cond_c

    goto :goto_30

    :cond_c
    const/4 v0, 0x0

    if-gez p1, :cond_10

    const/4 p1, 0x0

    :cond_10
    if-gez p2, :cond_13

    const/4 p2, 0x0

    :cond_13
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_1f
    if-ge v0, p3, :cond_30

    aget v1, p0, p1

    aget v2, p0, p2

    aput v2, p0, p1

    aput v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    :cond_30
    :goto_30
    return-void
.end method

.method public static swap([JII)V
    .registers 4

    if-eqz p0, :cond_a

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_a

    :cond_6
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    :cond_a
    :goto_a
    return-void
.end method

.method public static swap([JIII)V
    .registers 9

    if-eqz p0, :cond_30

    array-length v0, p0

    if-eqz v0, :cond_30

    array-length v0, p0

    if-ge p1, v0, :cond_30

    array-length v0, p0

    if-lt p2, v0, :cond_c

    goto :goto_30

    :cond_c
    const/4 v0, 0x0

    if-gez p1, :cond_10

    const/4 p1, 0x0

    :cond_10
    if-gez p2, :cond_13

    const/4 p2, 0x0

    :cond_13
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_1f
    if-ge v0, p3, :cond_30

    aget-wide v1, p0, p1

    aget-wide v3, p0, p2

    aput-wide v3, p0, p1

    aput-wide v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    :cond_30
    :goto_30
    return-void
.end method

.method public static swap([Ljava/lang/Object;II)V
    .registers 4

    if-eqz p0, :cond_a

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_a

    :cond_6
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    :cond_a
    :goto_a
    return-void
.end method

.method public static swap([Ljava/lang/Object;III)V
    .registers 7

    if-eqz p0, :cond_30

    array-length v0, p0

    if-eqz v0, :cond_30

    array-length v0, p0

    if-ge p1, v0, :cond_30

    array-length v0, p0

    if-lt p2, v0, :cond_c

    goto :goto_30

    :cond_c
    const/4 v0, 0x0

    if-gez p1, :cond_10

    const/4 p1, 0x0

    :cond_10
    if-gez p2, :cond_13

    const/4 p2, 0x0

    :cond_13
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_1f
    if-ge v0, p3, :cond_30

    aget-object v1, p0, p1

    aget-object v2, p0, p2

    aput-object v2, p0, p1

    aput-object v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    :cond_30
    :goto_30
    return-void
.end method

.method public static swap([SII)V
    .registers 4

    if-eqz p0, :cond_a

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_a

    :cond_6
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    :cond_a
    :goto_a
    return-void
.end method

.method public static swap([SIII)V
    .registers 7

    if-eqz p0, :cond_33

    array-length v0, p0

    if-eqz v0, :cond_33

    array-length v0, p0

    if-ge p1, v0, :cond_33

    array-length v0, p0

    if-lt p2, v0, :cond_c

    goto :goto_33

    :cond_c
    const/4 v0, 0x0

    if-gez p1, :cond_10

    const/4 p1, 0x0

    :cond_10
    if-gez p2, :cond_13

    const/4 p2, 0x0

    :cond_13
    if-ne p1, p2, :cond_16

    return-void

    :cond_16
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_22
    if-ge v0, p3, :cond_33

    aget-short v1, p0, p1

    aget-short v2, p0, p2

    aput-short v2, p0, p1

    aput-short v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_22

    :cond_33
    :goto_33
    return-void
.end method

.method public static swap([ZII)V
    .registers 4

    if-eqz p0, :cond_a

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_a

    :cond_6
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    :cond_a
    :goto_a
    return-void
.end method

.method public static swap([ZIII)V
    .registers 7

    if-eqz p0, :cond_30

    array-length v0, p0

    if-eqz v0, :cond_30

    array-length v0, p0

    if-ge p1, v0, :cond_30

    array-length v0, p0

    if-lt p2, v0, :cond_c

    goto :goto_30

    :cond_c
    const/4 v0, 0x0

    if-gez p1, :cond_10

    const/4 p1, 0x0

    :cond_10
    if-gez p2, :cond_13

    const/4 p2, 0x0

    :cond_13
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_1f
    if-ge v0, p3, :cond_30

    aget-boolean v1, p0, p1

    aget-boolean v2, p0, p2

    aput-boolean v2, p0, p1

    aput-boolean v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    :cond_30
    :goto_30
    return-void
.end method

.method public static varargs toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    return-object p0
.end method

.method public static toMap([Ljava/lang/Object;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p0

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_12
    array-length v3, p0

    if-ge v2, v3, :cond_85

    aget-object v3, p0, v2

    instance-of v4, v3, Ljava/util/Map$Entry;

    if-eqz v4, :cond_29

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    :cond_29
    instance-of v4, v3, [Ljava/lang/Object;

    const-string v5, ", \'"

    const-string v6, "Array element "

    if-eqz v4, :cond_65

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    array-length v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_45

    aget-object v3, v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', has a length less than 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', is neither of type Map.Entry nor an Array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    return-object v0
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1f

    aget-boolean v2, p0, v1

    if-eqz v2, :cond_18

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1a

    :cond_18
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1a
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1f
    return-object v0
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Byte;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Character;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-char v2, p0, v1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Float;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Short;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-short v2, p0, v1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    check-cast p0, [Ljava/lang/Integer;

    check-cast p0, [Ljava/lang/Integer;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Integer;)[I

    move-result-object p0

    return-object p0

    :cond_21
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    check-cast p0, [Ljava/lang/Long;

    check-cast p0, [Ljava/lang/Long;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Long;)[J

    move-result-object p0

    return-object p0

    :cond_32
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    check-cast p0, [Ljava/lang/Short;

    check-cast p0, [Ljava/lang/Short;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Short;)[S

    move-result-object p0

    return-object p0

    :cond_43
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    check-cast p0, [Ljava/lang/Double;

    check-cast p0, [Ljava/lang/Double;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Double;)[D

    move-result-object p0

    return-object p0

    :cond_54
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    check-cast p0, [Ljava/lang/Float;

    check-cast p0, [Ljava/lang/Float;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Float;)[F

    move-result-object p0

    :cond_64
    return-object p0
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    move v2, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    :goto_1b
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    move v2, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    :goto_1b
    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    move-wide v2, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_1b
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    move v2, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_1b
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    move v2, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1b
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    move-wide v2, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1b
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [S

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [S

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    move v2, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    :goto_1b
    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    move v2, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_1b
    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    const-string v0, "{}"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    invoke-virtual {p1, p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static toStringArray([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_17

    move-object v2, p1

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1b
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-object v0
.end method
