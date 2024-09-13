.class Lcom/online/languages/study/studymaster/adapters/RateDialog$1;
.super Ljava/lang/Object;
.source "RateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/adapters/RateDialog;->dismissDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/RateDialog;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/RateDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog$1;->this$0:Lcom/online/languages/study/studymaster/adapters/RateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog$1;->this$0:Lcom/online/languages/study/studymaster/adapters/RateDialog;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/RateDialog$1;->this$0:Lcom/online/languages/study/studymaster/adapters/RateDialog;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/adapters/RateDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :cond_d
    return-void
.end method
