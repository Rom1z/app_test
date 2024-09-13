.class Lcom/online/languages/study/studymaster/NoteActivity$1;
.super Ljava/lang/Object;
.source "NoteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/NoteActivity;->deleteConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/NoteActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/NoteActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity$1;->this$0:Lcom/online/languages/study/studymaster/NoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity$1;->this$0:Lcom/online/languages/study/studymaster/NoteActivity;

    invoke-static {p1}, Lcom/online/languages/study/studymaster/NoteActivity;->access$000(Lcom/online/languages/study/studymaster/NoteActivity;)V

    return-void
.end method
