.class public final Landroidx/core/text/ICUCompat;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompat"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

.field private static sGetScriptMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "addLikelySubtags"

    const-string v2, "libcore.icu.ICU"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x15

    if-ge v0, v5, :cond_39

    :try_start_c
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_57

    const-string v2, "getScript"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    new-array v2, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2c} :catch_2d

    goto :goto_57

    :catch_2d
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    sput-object v1, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    const-string v1, "ICUCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57

    :cond_39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-ge v0, v5, :cond_57

    :try_start_3f
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Class;

    const-class v4, Ljava/util/Locale;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4f} :catch_50

    goto :goto_57

    :catch_50
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_57
    :goto_57
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    const-string v0, "ICUCompat"

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_6
    sget-object v1, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_21

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_17} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_17} :catch_18

    return-object v1

    :catch_18
    move-exception v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    :catch_1d
    move-exception v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_21
    return-object p0
.end method

.method private static getScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "ICUCompat"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_13} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    :catch_19
    move-exception p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_1d
    return-object v1
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    const-string v0, "ICUCompat"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_15

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3d

    const/4 v1, 0x1

    :try_start_1d
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p0
    :try_end_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_2e} :catch_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :catch_34
    move-exception v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_38
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    invoke-static {p0}, Landroidx/core/text/ICUCompat;->addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_48

    invoke-static {p0}, Landroidx/core/text/ICUCompat;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_48
    return-object v3
.end method
