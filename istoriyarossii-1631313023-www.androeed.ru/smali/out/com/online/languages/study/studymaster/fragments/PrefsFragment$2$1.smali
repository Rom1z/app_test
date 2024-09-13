.class Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2$1;
.super Ljava/lang/Object;
.source "PrefsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2$1;->this$1:Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2$1;->this$1:Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2;->this$0:Lcom/online/languages/study/studymaster/fragments/PrefsFragment;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2$1;->this$1:Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2;->this$0:Lcom/online/languages/study/studymaster/fragments/PrefsFragment;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
