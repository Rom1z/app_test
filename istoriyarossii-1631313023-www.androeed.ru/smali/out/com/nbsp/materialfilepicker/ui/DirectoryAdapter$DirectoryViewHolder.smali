.class public Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DirectoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DirectoryViewHolder"
.end annotation


# instance fields
.field private mFileImage:Landroid/widget/ImageView;

.field private mFileSubtitle:Landroid/widget/TextView;

.field private mFileTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;


# direct methods
.method public constructor <init>(Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;Landroid/view/View;Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$OnItemClickListener;)V
    .registers 5

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;->this$0:Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder$1;-><init>(Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$OnItemClickListener;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/nbsp/materialfilepicker/R$id;->item_file_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;->mFileImage:Landroid/widget/ImageView;

    sget p1, Lcom/nbsp/materialfilepicker/R$id;->item_file_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;->mFileTitle:Landroid/widget/TextView;

    sget p1, Lcom/nbsp/materialfilepicker/R$id;->item_file_subtitle:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;->mFileSubtitle:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;->mFileImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;->mFileSubtitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$DirectoryViewHolder;->mFileTitle:Landroid/widget/TextView;

    return-object p0
.end method
