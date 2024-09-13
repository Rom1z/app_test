.class public Lorg/apache/commons/beanutils/MappedPropertyDescriptor;
.super Ljava/beans/PropertyDescriptor;
.source "MappedPropertyDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;
    }
.end annotation


# static fields
.field private static final STRING_CLASS_PARAMETER:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mappedPropertyTypeRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mappedReadMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

.field private mappedWriteMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->STRING_CLASS_PARAMETER:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    const-string v0, "set"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Ljava/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    if-eqz p1, :cond_b9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b9

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->setName(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->capitalizePropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    :try_start_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->STRING_CLASS_PARAMETER:[Ljava/lang/Class;

    invoke-static {p2, v4, v5}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_2d
    .catch Ljava/beans/IntrospectionException; {:try_start_16 .. :try_end_2d} :catch_2e

    goto :goto_45

    :catch_2e
    :try_start_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->STRING_CLASS_PARAMETER:[Ljava/lang/Class;

    invoke-static {p2, v4, v5}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_45
    .catch Ljava/beans/IntrospectionException; {:try_start_2e .. :try_end_45} :catch_69

    :goto_45
    :try_start_45
    new-array v5, v3, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6, v5}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_66
    .catch Ljava/beans/IntrospectionException; {:try_start_45 .. :try_end_66} :catch_67

    goto :goto_6a

    :catch_67
    nop

    goto :goto_6a

    :catch_69
    move-object v4, v1

    :goto_6a
    if-nez v4, :cond_7f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v3}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_7f
    if-nez v4, :cond_a7

    if-eqz v1, :cond_84

    goto :goto_a7

    :cond_84
    new-instance v0, Ljava/beans/IntrospectionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found on "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a7
    :goto_a7
    new-instance p1, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {p1, v4}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;-><init>(Ljava/lang/reflect/Method;)V

    iput-object p1, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedReadMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    new-instance p1, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {p1, v1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;-><init>(Ljava/lang/reflect/Method;)V

    iput-object p1, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedWriteMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {p0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->findMappedPropertyType()V

    return-void

    :cond_b9
    new-instance v0, Ljava/beans/IntrospectionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad property name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on class: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ljava/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->setName(Ljava/lang/String;)V

    sget-object p1, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->STRING_CLASS_PARAMETER:[Ljava/lang/Class;

    invoke-static {p2, p3, p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p3, 0x2

    if-eqz p1, :cond_2b

    new-array p3, p3, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Ljava/lang/String;

    aput-object v1, p3, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-static {p2, p4, p3}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    goto :goto_2f

    :cond_2b
    invoke-static {p2, p4, p3}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object p2

    :goto_2f
    new-instance p3, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {p3, p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;-><init>(Ljava/lang/reflect/Method;)V

    iput-object p3, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedReadMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    new-instance p1, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;-><init>(Ljava/lang/reflect/Method;)V

    iput-object p1, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedWriteMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {p0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->findMappedPropertyType()V

    return-void

    :cond_41
    new-instance p2, Ljava/beans/IntrospectionException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bad property name: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->setName(Ljava/lang/String;)V

    new-instance p1, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;-><init>(Ljava/lang/reflect/Method;)V

    iput-object p1, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedReadMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    new-instance p1, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {p1, p3}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;-><init>(Ljava/lang/reflect/Method;)V

    iput-object p1, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedWriteMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {p0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->findMappedPropertyType()V

    return-void

    :cond_20
    new-instance p2, Ljava/beans/IntrospectionException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad property name: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic access$100()[Ljava/lang/Class;
    .registers 1

    sget-object v0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->STRING_CLASS_PARAMETER:[Ljava/lang/Class;

    return-object v0
.end method

.method private static capitalizePropertyName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, p0, v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private findMappedPropertyType()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-ne v2, v3, :cond_3c

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_1c

    goto :goto_44

    :cond_1c
    new-instance v1, Ljava/beans/IntrospectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapped read method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " returns void"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3c
    new-instance v0, Ljava/beans/IntrospectionException;

    const-string v1, "bad mapped read method arg count"

    invoke-direct {v0, v1}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    :goto_44
    if-eqz v1, :cond_68

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_60

    if-eqz v2, :cond_5d

    aget-object v1, v0, v3

    if-ne v2, v1, :cond_55

    goto :goto_5d

    :cond_55
    new-instance v0, Ljava/beans/IntrospectionException;

    const-string v1, "type mismatch between mapped read and write methods"

    invoke-direct {v0, v1}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    :goto_5d
    aget-object v2, v0, v3

    goto :goto_68

    :cond_60
    new-instance v0, Ljava/beans/IntrospectionException;

    const-string v1, "bad mapped write method arg count"

    invoke-direct {v0, v1}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    :goto_68
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedPropertyTypeRef:Ljava/lang/ref/Reference;
    :try_end_6f
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_6f} :catch_70

    return-void

    :catch_70
    move-exception v0

    throw v0
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p0, p1, p2}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->internalGetMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    new-instance p0, Ljava/beans/IntrospectionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No method \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" with "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " parameter(s)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p0, p1, p2}, Lorg/apache/commons/beanutils/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    if-nez p2, :cond_f

    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    array-length p0, p2

    :goto_10
    new-instance p2, Ljava/beans/IntrospectionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No method \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" with "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " parameter(s) of matching types."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static internalGetMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    move-object v0, p0

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    :goto_9
    if-ge v1, v3, :cond_36

    aget-object v4, v2, v1

    if-nez v4, :cond_10

    goto :goto_33

    :cond_10
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_33

    :cond_21
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-ne v5, p2, :cond_33

    return-object v4

    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_36
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_3b
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    array-length v0, p0

    :goto_40
    if-ge v1, v0, :cond_4e

    aget-object v2, p0, v1

    invoke-static {v2, p1, p2}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->internalGetMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_4b

    return-object v2

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_4e
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getMappedPropertyType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedPropertyTypeRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public getMappedReadMethod()Ljava/lang/reflect/Method;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedReadMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-static {v0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->access$000(Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getMappedWriteMethod()Ljava/lang/reflect/Method;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedWriteMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-static {v0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->access$000(Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public setMappedReadMethod(Ljava/lang/reflect/Method;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedReadMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {p0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->findMappedPropertyType()V

    return-void
.end method

.method public setMappedWriteMethod(Ljava/lang/reflect/Method;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->mappedWriteMethodRef:Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;

    invoke-direct {p0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->findMappedPropertyType()V

    return-void
.end method
