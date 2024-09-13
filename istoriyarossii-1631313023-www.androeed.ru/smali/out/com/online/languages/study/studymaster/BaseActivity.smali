.class public Lcom/online/languages/study/studymaster/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field br:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/online/languages/study/studymaster/LocaleChangedReceiver;

    invoke-direct {p1}, Lcom/online/languages/study/studymaster/LocaleChangedReceiver;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/BaseActivity;->br:Landroid/content/BroadcastReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/BaseActivity;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/BaseActivity;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
