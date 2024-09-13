.class Lcom/online/languages/study/studymaster/NoteEditActivity$1;
.super Ljava/lang/Object;
.source "NoteEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/NoteEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/NoteEditActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/NoteEditActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity$1;->this$0:Lcom/online/languages/study/studymaster/NoteEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity$1;->this$0:Lcom/online/languages/study/studymaster/NoteEditActivity;

    iget p1, p1, Lcom/online/languages/study/studymaster/NoteEditActivity;->titleCharMax:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/online/languages/study/studymaster/NoteEditActivity$1;->this$0:Lcom/online/languages/study/studymaster/NoteEditActivity;

    invoke-static {p2}, Lcom/online/languages/study/studymaster/NoteEditActivity;->access$000(Lcom/online/languages/study/studymaster/NoteEditActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
