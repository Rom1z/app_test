.class Lcom/online/languages/study/studymaster/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/MainActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity$9;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 v0, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f0901c5

    if-ne p1, v3, :cond_f

    const/4 p1, 0x1

    goto :goto_26

    :cond_f
    const v3, 0x7f0901cc

    if-ne p1, v3, :cond_16

    const/4 p1, 0x2

    goto :goto_26

    :cond_16
    const v3, 0x7f0901cd

    if-ne p1, v3, :cond_1d

    const/4 p1, 0x3

    goto :goto_26

    :cond_1d
    const v3, 0x7f0901c8

    if-ne p1, v3, :cond_25

    const/16 p1, 0x64

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    if-ne p1, v0, :cond_2e

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity$9;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/MainActivity;->openNavDialog()V

    return v2

    :cond_2e
    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity$9;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->onMenuItemClicker(I)V

    return v1
.end method
