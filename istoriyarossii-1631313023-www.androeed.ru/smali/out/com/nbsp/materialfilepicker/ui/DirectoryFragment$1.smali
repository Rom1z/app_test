.class Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$1;
.super Ljava/lang/Object;
.source "DirectoryFragment.java"

# interfaces
.implements Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->initFilesList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;


# direct methods
.method constructor <init>(Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$1;->this$0:Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 4

    iget-object p1, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$1;->this$0:Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;

    invoke-static {p1}, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->access$000(Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;)Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$FileClickListener;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$1;->this$0:Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;

    invoke-static {p1}, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->access$000(Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;)Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$FileClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$1;->this$0:Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;

    invoke-static {v0}, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->access$100(Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;)Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;->getModel(I)Ljava/io/File;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$FileClickListener;->onFileClicked(Ljava/io/File;)V

    :cond_1b
    return-void
.end method
