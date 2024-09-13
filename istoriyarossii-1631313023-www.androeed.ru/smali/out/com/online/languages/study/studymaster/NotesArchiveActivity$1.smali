.class Lcom/online/languages/study/studymaster/NotesArchiveActivity$1;
.super Ljava/lang/Object;
.source "NotesArchiveActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/NotesArchiveActivity;->openListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/NotesArchiveActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/NotesArchiveActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity$1;->this$0:Lcom/online/languages/study/studymaster/NotesArchiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity$1;->this$0:Lcom/online/languages/study/studymaster/NotesArchiveActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->helperView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
