.class public Lcom/online/languages/study/studymaster/adapters/StarredTabsPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "StarredTabsPagerAdapter.java"


# instance fields
.field private mNumOfTabs:I

.field private registeredFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private tabs:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredTabsPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    const-string p1, "normal"

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredTabsPagerAdapter;->tabs:Ljava/lang/String;

    iput p2, p0, Lcom/online/languages/study/studymaster/adapters/StarredTabsPagerAdapter;->mNumOfTabs:I

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredTabsPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    const-string p1, "normal"

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredTabsPagerAdapter;->tabs:Ljava/lang/String;

    iput p2, p0, Lcom/online/languages/study/studymaster/adapters/StarredTabsPagerAdapter;->mNumOfTabs:I

    iput-object p3, p0, Lcom/online/languages/study/studymaster/adapters/StarredTabsPagerAdapter;->tabs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/StarredTabsPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/StarredTabsPagerAdapter;->mNumOfTabs:I

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/StarredTabsPagerAdapter;->tabs:Ljava/lang/String;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1d

    if-eqz p1, :cond_17

    if-eq p1, v2, :cond_11

    return-object v1

    :cond_11
    new-instance p1, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;

    invoke-direct {p1}, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;-><init>()V

    return-object p1

    :cond_17
    new-instance p1, Lcom/online/languages/study/studymaster/fragments/StarredGalleryTab;

    invoke-direct {p1}, Lcom/online/languages/study/studymaster/fragments/StarredGalleryTab;-><init>()V

    return-object p1

    :cond_1d
    if-eqz p1, :cond_28

    if-eq p1, v2, :cond_22

    return-object v1

    :cond_22
    new-instance p1, Lcom/online/languages/study/studymaster/fragments/StarredGalleryTab;

    invoke-direct {p1}, Lcom/online/languages/study/studymaster/fragments/StarredGalleryTab;-><init>()V

    return-object p1

    :cond_28
    new-instance p1, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;

    invoke-direct {p1}, Lcom/online/languages/study/studymaster/fragments/StarredTabOne;-><init>()V

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/StarredTabsPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3

    return-void
.end method
