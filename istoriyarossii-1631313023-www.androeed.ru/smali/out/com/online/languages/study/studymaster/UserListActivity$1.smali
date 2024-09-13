.class Lcom/online/languages/study/studymaster/UserListActivity$1;
.super Ljava/lang/Object;
.source "UserListActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/UserListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/UserListActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/UserListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/UserListActivity$1;->this$0:Lcom/online/languages/study/studymaster/UserListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 2

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/UserListActivity$1;->this$0:Lcom/online/languages/study/studymaster/UserListActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/UserListActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/UserListActivity$1;->this$0:Lcom/online/languages/study/studymaster/UserListActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/UserListActivity;->checkEx()V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 2

    return-void
.end method
