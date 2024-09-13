.class public Lcom/online/languages/study/studymaster/AppStart;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AppStart.java"


# static fields
.field public static final APP_LAUNCHES:Ljava/lang/String; = "launches"

.field public static final LAUNCHES_NUM:Ljava/lang/String; = "launches_num"

.field public static final LAUNCHES_RATE_START:Ljava/lang/String; = "launch_rate_start"

.field public static final LAUNCHES_RATE_STARTED:Ljava/lang/String; = "launch_rate_started"


# instance fields
.field appSettings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private changeShowAd()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/AppStart;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_ad"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private changeVersion()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/AppStart;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "full_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-static/range {p0 .. p0}, LWwTkCTXSiLERNyHJcXXnrenlB/uHT;->QiYVFNcWFCKkKeQXxsEBNuGjjsIjgEaOzruVrqpsgEQTaDSF(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/TE/HpnUHrmZrtrydhhHQbQbUSWy/jozRJaNTyUoOrUWXLi;->sJrQIFVNCeeqRpTaDoIfSbcgLstaGuDIUgBqpUnKnKJnQcU(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "launches"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/AppStart;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/online/languages/study/studymaster/AppStart;->appSettings:Landroid/content/SharedPreferences;

    new-instance v1, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/data/DataManager;->getParamsAndSave()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/AppStart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2f

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/AppStart;->setRequestedOrientation(I)V

    :cond_2f
    const-string v1, "launches_num"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "launch_rate_started"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_61

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "launch_rate_start"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_61
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/AppStart;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/AppStart;->finish()V

    return-void
.end method
