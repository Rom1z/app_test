.class public Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;
.super Landroid/app/Fragment;
.source "DirectoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$FileClickListener;
    }
.end annotation


# static fields
.field private static final ARG_FILE_PATH:Ljava/lang/String; = "arg_file_path"

.field private static final ARG_FILTER:Ljava/lang/String; = "arg_filter"


# instance fields
.field private mDirectoryAdapter:Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;

.field private mDirectoryRecyclerView:Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;

.field private mEmptyView:Landroid/view/View;

.field private mFileClickListener:Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$FileClickListener;

.field private mFilter:Lcom/nbsp/materialfilepicker/filter/CompositeFilter;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;)Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$FileClickListener;
    .registers 1

    iget-object p0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->mFileClickListener:Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$FileClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;)Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;
    .registers 1

    iget-object p0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->mDirectoryAdapter:Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;Lcom/nbsp/materialfilepicker/filter/CompositeFilter;)Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;
    .registers 5

    new-instance v0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;

    invoke-direct {v0}, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg_file_path"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "arg_filter"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private initArgs()V
    .registers 3

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_file_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->mPath:Ljava/lang/String;

    :cond_16
    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_filter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/nbsp/materialfilepicker/filter/CompositeFilter;

    iput-object v0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->mFilter:Lcom/nbsp/materialfilepicker/filter/CompositeFilter;

    return-void
.end method

.method private initFilesList()V
    .registers 5

    new-instance v0, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->mPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->mFilter:Lcom/nbsp/materialfilepicker/filter/CompositeFilter;

    invoke-static {v2, v3}, Lcom/nbsp/materialfilepicker/utils/FileUtils;->getFileListByDirPath(Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->mDirectoryAdapter:Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;

    new-instance v1, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$1;

    invoke-direct {v1, p0}, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$1;-><init>(Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;->setOnItemClickListener(Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->mDirectoryRecyclerView:Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->mDirectoryRecyclerView:Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;

    iget-object v1, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->mDirectoryAdapter:Lcom/nbsp/materialfilepicker/ui/DirectoryAdapter;

    invoke-virtual {v0, v1}, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->mDirectoryRecyclerView:Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;

    iget-object v1, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$FileClickListener;

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->mFileClickListener:Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$FileClickListener;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    sget p3, Lcom/nbsp/materialfilepicker/R$layout;->fragment_directory:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/nbsp/materialfilepicker/R$id;->directory_recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;

    iput-object p2, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->mDirectoryRecyclerView:Lcom/nbsp/materialfilepicker/widget/EmptyRecyclerView;

    sget p2, Lcom/nbsp/materialfilepicker/R$id;->directory_empty_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->mEmptyView:Landroid/view/View;

    return-object p1
.end method

.method public onDetach()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->mFileClickListener:Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$FileClickListener;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->initArgs()V

    invoke-direct {p0}, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->initFilesList()V

    return-void
.end method
