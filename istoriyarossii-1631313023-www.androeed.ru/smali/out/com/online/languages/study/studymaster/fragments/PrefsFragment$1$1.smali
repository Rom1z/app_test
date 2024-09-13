.class Lcom/online/languages/study/studymaster/fragments/PrefsFragment$1$1;
.super Ljava/lang/Object;
.source "PrefsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/PrefsFragment$1;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/online/languages/study/studymaster/fragments/PrefsFragment$1;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/PrefsFragment$1;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$1$1;->this$1:Lcom/online/languages/study/studymaster/fragments/PrefsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$1$1;->this$1:Lcom/online/languages/study/studymaster/fragments/PrefsFragment$1;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$1;->this$0:Lcom/online/languages/study/studymaster/fragments/PrefsFragment;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/MainActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/MainActivity;->bottomNavDisplay()V

    return-void
.end method
