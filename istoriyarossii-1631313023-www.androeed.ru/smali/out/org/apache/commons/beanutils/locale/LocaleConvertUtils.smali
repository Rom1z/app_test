.class public Lorg/apache/commons/beanutils/locale/LocaleConvertUtils;
.super Ljava/lang/Object;
.source "LocaleConvertUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convert([Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convert([Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static create(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->create(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static deregister()V
    .registers 1

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->deregister()V

    return-void
.end method

.method public static deregister(Ljava/lang/Class;Ljava/util/Locale;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->deregister(Ljava/lang/Class;Ljava/util/Locale;)V

    return-void
.end method

.method public static deregister(Ljava/util/Locale;)V
    .registers 2

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->deregister(Ljava/util/Locale;)V

    return-void
.end method

.method public static getApplyLocalized()Z
    .registers 1

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getApplyLocalized()Z

    move-result v0

    return v0
.end method

.method public static getDefaultLocale()Ljava/util/Locale;
    .registers 1

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static lookup(Ljava/lang/Class;Ljava/util/Locale;)Lorg/apache/commons/beanutils/locale/LocaleConverter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            ")",
            "Lorg/apache/commons/beanutils/locale/LocaleConverter;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->lookup(Ljava/lang/Class;Ljava/util/Locale;)Lorg/apache/commons/beanutils/locale/LocaleConverter;

    move-result-object p0

    return-object p0
.end method

.method protected static lookup(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->lookup(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static register(Lorg/apache/commons/beanutils/locale/LocaleConverter;Ljava/lang/Class;Ljava/util/Locale;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/beanutils/locale/LocaleConverter;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->register(Lorg/apache/commons/beanutils/locale/LocaleConverter;Ljava/lang/Class;Ljava/util/Locale;)V

    return-void
.end method

.method public static setApplyLocalized(Z)V
    .registers 2

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->setApplyLocalized(Z)V

    return-void
.end method

.method public static setDefaultLocale(Ljava/util/Locale;)V
    .registers 2

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->setDefaultLocale(Ljava/util/Locale;)V

    return-void
.end method
