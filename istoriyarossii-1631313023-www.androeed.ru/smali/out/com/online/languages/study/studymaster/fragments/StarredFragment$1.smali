.class Lcom/online/languages/study/studymaster/fragments/StarredFragment$1;
.super Ljava/lang/Object;
.source "StarredFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


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

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment$1;->this$0:Lcom/online/languages/study/studymaster/fragments/StarredFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 2

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment$1;->this$0:Lcom/online/languages/study/studymaster/fragments/StarredFragment;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->access$000(Lcom/online/languages/study/studymaster/fragments/StarredFragment;I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StarredFragment$1;->this$0:Lcom/online/languages/study/studymaster/fragments/StarredFragment;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/fragments/StarredFragment;->tabsPager:Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 2

    return-void
.end method
