.class Lcom/online/languages/study/studymaster/fragments/StarredFragment$2;
.super Ljava/lang/Object;
.source "StarredFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/StarredFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/StarredFragment;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/StarredFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment$2;->this$0:Lcom/online/languages/study/studymaster/fragments/StarredFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment$2;->this$0:Lcom/online/languages/study/studymaster/fragments/StarredFragment;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabsPager:Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment$2;->this$0:Lcom/online/languages/study/studymaster/fragments/StarredFragment;

    iget v1, v1, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->activeTab:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->setCurrentItem(IZ)V

    return-void
.end method
