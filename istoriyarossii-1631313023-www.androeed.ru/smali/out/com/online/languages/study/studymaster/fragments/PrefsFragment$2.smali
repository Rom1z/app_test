.class Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2;
.super Ljava/lang/Object;
.source "PrefsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/PrefsFragment;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/PrefsFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2;->this$0:Lcom/online/languages/study/studymaster/fragments/PrefsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2$1;

    invoke-direct {p2, p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2$1;-><init>(Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1
.end method
