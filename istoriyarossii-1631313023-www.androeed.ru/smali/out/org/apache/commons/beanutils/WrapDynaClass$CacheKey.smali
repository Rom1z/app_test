.class Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;
.super Ljava/lang/Object;
.source "WrapDynaClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/beanutils/WrapDynaClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheKey"
.end annotation


# instance fields
.field private final beanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final propUtils:Lorg/apache/commons/beanutils/PropertyUtilsBean;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/PropertyUtilsBean;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/PropertyUtilsBean;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->beanClass:Ljava/lang/Class;

    iput-object p2, p0, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->propUtils:Lorg/apache/commons/beanutils/PropertyUtilsBean;

    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;)Ljava/lang/Class;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->beanClass:Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;

    iget-object v1, p0, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->beanClass:Ljava/lang/Class;

    iget-object v3, p1, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->beanClass:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->propUtils:Lorg/apache/commons/beanutils/PropertyUtilsBean;

    iget-object p1, p1, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->propUtils:Lorg/apache/commons/beanutils/PropertyUtilsBean;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->beanClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->propUtils:Lorg/apache/commons/beanutils/PropertyUtilsBean;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method
