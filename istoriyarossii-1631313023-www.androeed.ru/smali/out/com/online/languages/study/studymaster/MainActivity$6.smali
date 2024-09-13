.class Lcom/online/languages/study/studymaster/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/MainActivity;->manageNoteFab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/MainActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity$6;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity$6;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/MainActivity;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    return-void
.end method
