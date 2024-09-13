.class public Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DirectoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;,
        Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;->mFiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getModel(I)Ljava/io/File;
    .registers 3

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;->mFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;->onBindViewHolder(Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;I)V
    .registers 6

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;->mFiles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    invoke-static {p2}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils;->getFileType(Ljava/io/File;)Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    move-result-object v0

    invoke-static {p1}, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;->access$000(Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->getIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;->access$100(Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->getDescription()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p1}, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;->access$200(Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;
    .registers 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/nbsp/materialfilepicker/R$layout;->item_file:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;->mOnItemClickListener:Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$OnItemClickListener;

    invoke-direct {p2, p0, p1, v0}, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;-><init>(Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;Landroid/view/View;Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$OnItemClickListener;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;->mOnItemClickListener:Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$OnItemClickListener;

    return-void
.end method
