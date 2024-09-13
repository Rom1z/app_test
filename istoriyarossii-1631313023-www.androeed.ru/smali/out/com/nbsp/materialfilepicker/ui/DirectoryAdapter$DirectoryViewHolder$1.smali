.class Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder$1;
.super Ljava/lang/Object;
.source "DirectoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;-><init>(Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;Landroid/view/View;Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;

.field final synthetic val$clickListener:Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$OnItemClickListener;

.field final synthetic val$this$0:Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;


# direct methods
.method constructor <init>(Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$OnItemClickListener;)V
    .registers 4

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder$1;->this$1:Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;

    iput-object p2, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder$1;->val$this$0:Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;

    iput-object p3, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder$1;->val$clickListener:Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder$1;->val$clickListener:Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$OnItemClickListener;

    iget-object v1, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder$1;->this$1:Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;

    invoke-virtual {v1}, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method
