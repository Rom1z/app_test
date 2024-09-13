.class Lcom/nbsp/materialfilepicker/ui/FilePickerActivity$1;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->onFileClicked(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;

.field final synthetic val$clickedFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity$1;->this$0:Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;

    iput-object p2, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity$1;->val$clickedFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity$1;->this$0:Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;

    iget-object v1, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity$1;->val$clickedFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->access$000(Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;Ljava/io/File;)V

    return-void
.end method
