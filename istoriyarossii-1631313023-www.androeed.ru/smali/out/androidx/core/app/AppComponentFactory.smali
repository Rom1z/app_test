.class public Landroidx/core/app/AppComponentFactory;
.super Landroid/app/AppComponentFactory;
.source "AppComponentFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/AppComponentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateActivityCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    return-object p1
.end method

.method public instantiateActivityCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 p3, 0x0

    :try_start_1
    invoke-static {p2, p3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const-class p2, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;
    :try_end_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_19} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p1

    goto :goto_1d

    :catch_1c
    move-exception p1

    :goto_1d
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Couldn\'t call constructor"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/core/app/AppComponentFactory;->instantiateApplicationCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    return-object p1
.end method

.method public instantiateApplicationCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const-class p2, Landroid/app/Application;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;
    :try_end_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_19} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p1

    goto :goto_1d

    :catch_1c
    move-exception p1

    :goto_1d
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Couldn\'t call constructor"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/core/app/AppComponentFactory;->instantiateProviderCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentProvider;

    return-object p1
.end method

.method public instantiateProviderCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const-class p2, Landroid/content/ContentProvider;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentProvider;
    :try_end_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_19} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p1

    goto :goto_1d

    :catch_1c
    move-exception p1

    :goto_1d
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Couldn\'t call constructor"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateReceiverCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method public instantiateReceiverCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 p3, 0x0

    :try_start_1
    invoke-static {p2, p3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const-class p2, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/BroadcastReceiver;
    :try_end_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_19} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p1

    goto :goto_1d

    :catch_1c
    move-exception p1

    :goto_1d
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Couldn\'t call constructor"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateServiceCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Service;

    return-object p1
.end method

.method public instantiateServiceCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 p3, 0x0

    :try_start_1
    invoke-static {p2, p3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const-class p2, Landroid/app/Service;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Service;
    :try_end_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_19} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p1

    goto :goto_1d

    :catch_1c
    move-exception p1

    :goto_1d
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Couldn\'t call constructor"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
