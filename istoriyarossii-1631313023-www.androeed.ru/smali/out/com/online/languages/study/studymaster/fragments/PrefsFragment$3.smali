.class Lcom/online/languages/study/studymaster/fragments/PrefsFragment$3;
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

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$3;->this$0:Lcom/online/languages/study/studymaster/fragments/PrefsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$3;->this$0:Lcom/online/languages/study/studymaster/fragments/PrefsFragment;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const p2, 0x10008000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$3;->this$0:Lcom/online/languages/study/studymaster/fragments/PrefsFragment;

    invoke-virtual {p2}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
