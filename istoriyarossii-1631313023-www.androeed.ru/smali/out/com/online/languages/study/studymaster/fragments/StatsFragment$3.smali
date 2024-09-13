.class Lcom/online/languages/study/studymaster/fragments/StatsFragment$3;
.super Ljava/lang/Object;
.source "StatsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/StatsFragment;->onGridClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/StatsFragment;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/StatsFragment;Landroid/view/View;I)V
    .registers 4

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment$3;->this$0:Lcom/online/languages/study/studymaster/fragments/StatsFragment;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment$3;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment$3;->this$0:Lcom/online/languages/study/studymaster/fragments/StatsFragment;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/MainActivity;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment$3;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment$3;->val$position:I

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/MainActivity;->openSectionStats(Landroid/view/View;I)V

    return-void
.end method
