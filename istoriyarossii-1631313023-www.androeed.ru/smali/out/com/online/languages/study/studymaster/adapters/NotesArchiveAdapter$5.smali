.class Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$5;
.super Ljava/lang/Object;
.source "NotesArchiveAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->clickActionPopup(Lcom/online/languages/study/studymaster/data/DataObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

.field final synthetic val$dataObject:Lcom/online/languages/study/studymaster/data/DataObject;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Lcom/online/languages/study/studymaster/data/DataObject;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$5;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$5;->val$dataObject:Lcom/online/languages/study/studymaster/data/DataObject;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$5;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$5;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->access$000(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;)Lcom/online/languages/study/studymaster/NotesArchiveActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$5;->val$dataObject:Lcom/online/languages/study/studymaster/data/DataObject;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$5;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->performAction(Lcom/online/languages/study/studymaster/data/DataObject;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$5;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->access$100(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$5;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->access$302(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Z)Z

    return-void
.end method
