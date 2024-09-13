.class Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$3;
.super Ljava/lang/Object;
.source "NoteActionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->createDialog(Lcom/online/languages/study/studymaster/data/NoteData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;

.field final synthetic val$note:Lcom/online/languages/study/studymaster/data/NoteData;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;Lcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$3;->this$0:Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$3;->val$note:Lcom/online/languages/study/studymaster/data/NoteData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$3;->this$0:Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$3;->val$note:Lcom/online/languages/study/studymaster/data/NoteData;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->dismissDialog(ILcom/online/languages/study/studymaster/data/NoteData;)V

    return-void
.end method
