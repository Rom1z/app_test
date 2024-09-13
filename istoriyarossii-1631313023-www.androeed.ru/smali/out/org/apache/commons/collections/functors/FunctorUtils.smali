.class Lorg/apache/commons/collections/functors/FunctorUtils;
.super Ljava/lang/Object;
.source "FunctorUtils.java"


# static fields
.field static final UNSAFE_SERIALIZABLE_PROPERTY:Ljava/lang/String; = "org.apache.commons.collections.enableUnsafeSerialization"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkUnsafeSerialization(Ljava/lang/Class;)V
    .registers 4

    :try_start_0
    new-instance v0, Lorg/apache/commons/collections/functors/FunctorUtils$1;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/FunctorUtils$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    const/4 v0, 0x0

    :goto_d
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Serialization support for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " is disabled for security reasons. "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "To enable it set system property \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "org.apache.commons.collections.enableUnsafeSerialization"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\' to \'true\', "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "but you must ensure that your application does not de-serialize objects from untrusted sources."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static copy([Lorg/apache/commons/collections/Closure;)[Lorg/apache/commons/collections/Closure;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/collections/Closure;

    check-cast p0, [Lorg/apache/commons/collections/Closure;

    return-object p0
.end method

.method static copy([Lorg/apache/commons/collections/Predicate;)[Lorg/apache/commons/collections/Predicate;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/collections/Predicate;

    check-cast p0, [Lorg/apache/commons/collections/Predicate;

    return-object p0
.end method

.method static copy([Lorg/apache/commons/collections/Transformer;)[Lorg/apache/commons/collections/Transformer;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/collections/Transformer;

    check-cast p0, [Lorg/apache/commons/collections/Transformer;

    return-object p0
.end method

.method static validate([Lorg/apache/commons/collections/Closure;)V
    .registers 4

    if-eqz p0, :cond_2a

    const/4 v0, 0x0

    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_29

    aget-object v1, p0, v0

    if-eqz v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The closure array must not contain a null closure, index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " was null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    return-void

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The closure array must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validate([Lorg/apache/commons/collections/Predicate;)V
    .registers 4

    if-eqz p0, :cond_2a

    const/4 v0, 0x0

    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_29

    aget-object v1, p0, v0

    if-eqz v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The predicate array must not contain a null predicate, index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " was null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    return-void

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The predicate array must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validate([Lorg/apache/commons/collections/Transformer;)V
    .registers 4

    if-eqz p0, :cond_2a

    const/4 v0, 0x0

    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_29

    aget-object v1, p0, v0

    if-eqz v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The transformer array must not contain a null transformer, index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " was null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    return-void

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The transformer array must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validate(Ljava/util/Collection;)[Lorg/apache/commons/collections/Predicate;
    .registers 4

    if-eqz p0, :cond_3f

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/collections/Predicate;

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/Predicate;

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    if-eqz v2, :cond_22

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The predicate collection must not contain a null predicate, index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " was null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    return-object v0

    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The predicate collection must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
