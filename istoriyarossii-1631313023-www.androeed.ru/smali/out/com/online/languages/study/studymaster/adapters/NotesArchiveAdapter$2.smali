.class Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$2;
.super Ljava/lang/Object;
.source "NotesArchiveAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;I)V
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

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$2;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$2;->val$dataObject:Lcom/online/languages/study/studymaster/data/DataObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f090202

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$2;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$2;->val$dataObject:Lcom/online/languages/study/studymaster/data/DataObject;

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->access$200(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Lcom/online/languages/study/studymaster/data/DataObject;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->access$102(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$2;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->access$100(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$2;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->countPos()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$2;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->access$302(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Z)Z

    return-void
.end method
