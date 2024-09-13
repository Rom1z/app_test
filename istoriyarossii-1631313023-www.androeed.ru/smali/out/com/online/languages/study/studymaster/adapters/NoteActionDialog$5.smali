.class Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$5;
.super Ljava/lang/Object;
.source "NoteActionDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->dismissDialog(ILcom/online/languages/study/studymaster/data/NoteData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;

.field final synthetic val$note:Lcom/online/languages/study/studymaster/data/NoteData;

.field final synthetic val$order:I


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;ILcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 4

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$5;->this$0:Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;

    iput p2, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$5;->val$order:I

    iput-object p3, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$5;->val$note:Lcom/online/languages/study/studymaster/data/NoteData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$5;->this$0:Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->notesFragment:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$5;->val$order:I

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$5;->val$note:Lcom/online/languages/study/studymaster/data/NoteData;

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->performAction(ILcom/online/languages/study/studymaster/data/NoteData;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$5;->this$0:Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$5;->this$0:Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :cond_18
    return-void
.end method
