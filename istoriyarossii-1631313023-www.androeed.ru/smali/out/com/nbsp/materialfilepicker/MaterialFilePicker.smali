.class public Lcom/nbsp/materialfilepicker/MaterialFilePicker;
.super Ljava/lang/Object;
.source "MaterialFilePicker.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCloseable:Ljava/lang/Boolean;

.field private mCurrentPath:Ljava/lang/String;

.field private mDirectoriesFilter:Ljava/lang/Boolean;

.field private mFileFilter:Ljava/util/regex/Pattern;

.field private mFilePickerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field private mRequestCode:Ljava/lang/Integer;

.field private mRootPath:Ljava/lang/String;

.field private mShowHidden:Ljava/lang/Boolean;

.field private mSupportFragment:Landroidx/fragment/app/Fragment;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;

    iput-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mFilePickerClass:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mDirectoriesFilter:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mShowHidden:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mCloseable:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getFilter()Lcom/nbsp/materialfilepicker/filter/CompositeFilter;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mShowHidden:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_15

    new-instance v1, Lcom/nbsp/materialfilepicker/filter/HiddenFilter;

    invoke-direct {v1}, Lcom/nbsp/materialfilepicker/filter/HiddenFilter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mFileFilter:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_27

    new-instance v2, Lcom/nbsp/materialfilepicker/filter/PatternFilter;

    iget-object v3, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mDirectoriesFilter:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/nbsp/materialfilepicker/filter/PatternFilter;-><init>(Ljava/util/regex/Pattern;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    new-instance v1, Lcom/nbsp/materialfilepicker/filter/CompositeFilter;

    invoke-direct {v1, v0}, Lcom/nbsp/materialfilepicker/filter/CompositeFilter;-><init>(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 5

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->getFilter()Lcom/nbsp/materialfilepicker/filter/CompositeFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_9

    goto :goto_1c

    :cond_9
    iget-object v1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    goto :goto_1c

    :cond_12
    iget-object v1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mSupportFragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mFilePickerClass:Ljava/lang/Class;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "arg_filter"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mCloseable:Ljava/lang/Boolean;

    const-string v1, "arg_closeable"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mRootPath:Ljava/lang/String;

    if-eqz v0, :cond_38

    const-string v1, "arg_start_path"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_38
    iget-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_41

    const-string v1, "arg_current_path"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_41
    iget-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4a

    const-string v1, "arg_title"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_4a
    return-object v2
.end method

.method public start()V
    .registers 4

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mFragment:Landroid/app/Fragment;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mSupportFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_d

    goto :goto_15

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must pass Activity/Fragment by calling withActivity/withFragment/withSupportFragment method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mRequestCode:Ljava/lang/Integer;

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2b

    iget-object v2, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mRequestCode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_44

    :cond_2b
    iget-object v1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_39

    iget-object v2, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mRequestCode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_44

    :cond_39
    iget-object v1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mSupportFragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mRequestCode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_44
    return-void

    :cond_45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must pass request code by calling withRequestCode method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withActivity(Landroid/app/Activity;)Lcom/nbsp/materialfilepicker/MaterialFilePicker;
    .registers 3

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mSupportFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mFragment:Landroid/app/Fragment;

    if-nez v0, :cond_b

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mActivity:Landroid/app/Activity;

    return-object p0

    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You must pass either Activity, Fragment or SupportFragment"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withCloseMenu(Z)Lcom/nbsp/materialfilepicker/MaterialFilePicker;
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mCloseable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withCustomActivity(Ljava/lang/Class;)Lcom/nbsp/materialfilepicker/MaterialFilePicker;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;",
            ">;)",
            "Lcom/nbsp/materialfilepicker/MaterialFilePicker;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mFilePickerClass:Ljava/lang/Class;

    return-object p0
.end method

.method public withFilter(Ljava/util/regex/Pattern;)Lcom/nbsp/materialfilepicker/MaterialFilePicker;
    .registers 2

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mFileFilter:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method public withFilterDirectories(Z)Lcom/nbsp/materialfilepicker/MaterialFilePicker;
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mDirectoriesFilter:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withFragment(Landroid/app/Fragment;)Lcom/nbsp/materialfilepicker/MaterialFilePicker;
    .registers 3

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mSupportFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_b

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mFragment:Landroid/app/Fragment;

    return-object p0

    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You must pass either Activity, Fragment or SupportFragment"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withHiddenFiles(Z)Lcom/nbsp/materialfilepicker/MaterialFilePicker;
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mShowHidden:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withPath(Ljava/lang/String;)Lcom/nbsp/materialfilepicker/MaterialFilePicker;
    .registers 2

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mCurrentPath:Ljava/lang/String;

    return-object p0
.end method

.method public withRequestCode(I)Lcom/nbsp/materialfilepicker/MaterialFilePicker;
    .registers 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mRequestCode:Ljava/lang/Integer;

    return-object p0
.end method

.method public withRootPath(Ljava/lang/String;)Lcom/nbsp/materialfilepicker/MaterialFilePicker;
    .registers 2

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mRootPath:Ljava/lang/String;

    return-object p0
.end method

.method public withSupportFragment(Landroidx/fragment/app/Fragment;)Lcom/nbsp/materialfilepicker/MaterialFilePicker;
    .registers 3

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mFragment:Landroid/app/Fragment;

    if-nez v0, :cond_b

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mSupportFragment:Landroidx/fragment/app/Fragment;

    return-object p0

    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You must pass either Activity, Fragment or SupportFragment"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withTitle(Ljava/lang/CharSequence;)Lcom/nbsp/materialfilepicker/MaterialFilePicker;
    .registers 2

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
