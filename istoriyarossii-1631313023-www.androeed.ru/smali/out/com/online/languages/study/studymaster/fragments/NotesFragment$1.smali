.class Lcom/online/languages/study/studymaster/fragments/NotesFragment$1;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/NotesFragment;->openListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/NotesFragment;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/NotesFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$1;->this$0:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$1;->this$0:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->helperView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
