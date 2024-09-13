.class Lcom/online/languages/study/studymaster/adapters/NavigationDialog$5;
.super Ljava/lang/Object;
.source "NavigationDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->dismissDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/NavigationDialog;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/NavigationDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog$5;->this$0:Lcom/online/languages/study/studymaster/adapters/NavigationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog$5;->this$0:Lcom/online/languages/study/studymaster/adapters/NavigationDialog;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog$5;->this$0:Lcom/online/languages/study/studymaster/adapters/NavigationDialog;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :cond_d
    return-void
.end method
