.class Lcom/online/languages/study/studymaster/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/MainActivity;->openCatFromGallery(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/MainActivity;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/MainActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity$8;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/MainActivity$8;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity$8;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity$8;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/fragments/GalleryFragment;->openCatActivity(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
