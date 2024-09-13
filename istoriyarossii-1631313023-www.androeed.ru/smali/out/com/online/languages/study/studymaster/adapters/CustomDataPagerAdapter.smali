.class public Lcom/online/languages/study/studymaster/adapters/CustomDataPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "CustomDataPagerAdapter.java"


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


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CustomDataPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    iput p2, p0, Lcom/online/languages/study/studymaster/adapters/CustomDataPagerAdapter;->mNumOfTabs:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CustomDataPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/CustomDataPagerAdapter;->mNumOfTabs:I

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .registers 3

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    new-instance p1, Lcom/online/languages/study/studymaster/fragments/CustomTabFragment3;

    invoke-direct {p1}, Lcom/online/languages/study/studymaster/fragments/CustomTabFragment3;-><init>()V

    return-object p1

    :cond_10
    new-instance p1, Lcom/online/languages/study/studymaster/fragments/CustomTabFragment2;

    invoke-direct {p1}, Lcom/online/languages/study/studymaster/fragments/CustomTabFragment2;-><init>()V

    return-object p1

    :cond_16
    new-instance p1, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;

    invoke-direct {p1}, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;-><init>()V

    return-object p1
.end method

.method public getRegisteredFragment(I)Landroidx/fragment/app/Fragment;
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CustomDataPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/CustomDataPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method
