.class public Lcom/online/languages/study/studymaster/App;
.super Landroid/app/Application;
.source "App.java"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/online/languages/study/studymaster/App;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/online/languages/study/studymaster/App;->context:Landroid/content/Context;

    return-void
.end method
