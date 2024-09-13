.class Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$3;
.super Ljava/lang/Object;
.source "NotesArchiveAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->popupDisplay(Lcom/online/languages/study/studymaster/data/DataObject;)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

.field final synthetic val$dataObject:Lcom/online/languages/study/studymaster/data/DataObject;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Lcom/online/languages/study/studymaster/data/DataObject;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$3;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$3;->val$dataObject:Lcom/online/languages/study/studymaster/data/DataObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$3;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$3;->val$dataObject:Lcom/online/languages/study/studymaster/data/DataObject;

    const-string v1, "update"

    invoke-static {p1, v0, v1}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->access$400(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Lcom/online/languages/study/studymaster/data/DataObject;Ljava/lang/String;)V

    return-void
.end method
