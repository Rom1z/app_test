.class public Lcom/online/languages/study/studymaster/fragments/InfoFragment;
.super Landroidx/fragment/app/Fragment;
.source "InfoFragment.java"


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field button:Landroid/view/View;

.field htmlStart:Ljava/lang/String;

.field public themeTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "<!DOCTYPE html><html><head><style>"

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->htmlStart:Ljava/lang/String;

    return-void
.end method

.method private getThemeFont()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->themeTitle:Ljava/lang/String;

    const-string v1, "dark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "body {color: #fff;}"

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->themeTitle:Ljava/lang/String;

    const-string v2, "smoky"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->themeTitle:Ljava/lang/String;

    const-string v2, "westworld"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_24

    :cond_21
    const-string v0, "body {color: #111;}"

    goto :goto_25

    :cond_24
    :goto_24
    move-object v0, v1

    :goto_25
    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->themeTitle:Ljava/lang/String;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->themeTitle:Ljava/lang/String;

    const-string v3, "red"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->themeTitle:Ljava/lang/String;

    const-string v3, "white"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5c

    :cond_43
    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->appSettings:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    const-string v4, "night_mode"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    goto :goto_5d

    :cond_5c
    move-object v1, v0

    :goto_5d
    return-object v1
.end method

.method public static readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_17
    :try_start_17
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_25} :catch_2b

    goto :goto_17

    :cond_26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method private versionText()Ljava/lang/String;
    .registers 4

    const v0, 0x7f110025

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110026

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "5.9.1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    const p3, 0x7f0c0089

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->appSettings:Landroid/content/SharedPreferences;

    const-string p3, "theme"

    const-string v1, "default"

    invoke-interface {p2, p3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->themeTitle:Ljava/lang/String;

    const p2, 0x7f090307

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    new-instance p3, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p3, v1, v2}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    iget-boolean p3, p3, Lcom/online/languages/study/studymaster/data/DataManager;->simplified:Z

    if-eqz p3, :cond_3a

    const-string p3, "info_simplified"

    goto :goto_3c

    :cond_3a
    const-string p3, "info"

    :goto_3c
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "raw"

    invoke-virtual {v2, p3, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-static {v1, p3}, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->htmlStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->getThemeFont()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    const-string v1, "utf-8"

    invoke-virtual {p3, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "en_US"

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const p2, 0x7f090225

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->button:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lcom/online/languages/study/studymaster/fragments/InfoFragment$1;

    invoke-direct {p3, p0}, Lcom/online/languages/study/studymaster/fragments/InfoFragment$1;-><init>(Lcom/online/languages/study/studymaster/fragments/InfoFragment;)V

    const-wide/16 v0, 0x2bc

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const p2, 0x7f0902ff

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->versionText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method
