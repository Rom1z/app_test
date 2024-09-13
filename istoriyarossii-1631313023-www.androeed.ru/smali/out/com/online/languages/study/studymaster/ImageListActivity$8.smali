.class Lcom/online/languages/study/studymaster/ImageListActivity$8;
.super Ljava/lang/Object;
.source "ImageListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/ImageListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/ImageListActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/ImageListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity$8;->this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity$8;->this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

    iget v1, v0, Lcom/online/languages/study/studymaster/ImageListActivity;->listType:I

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/ImageListActivity;->access$300(Lcom/online/languages/study/studymaster/ImageListActivity;I)V

    return-void
.end method
