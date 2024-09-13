.class public Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FilePickerActivity.java"

# interfaces
.implements Lcom/nbsp/materialfilepicker/ui/DirectoryFragment$FileClickListener;


# static fields
.field public static final ARG_CLOSEABLE:Ljava/lang/String; = "arg_closeable"

.field public static final ARG_CURRENT_PATH:Ljava/lang/String; = "arg_current_path"

.field public static final ARG_FILTER:Ljava/lang/String; = "arg_filter"

.field public static final ARG_START_PATH:Ljava/lang/String; = "arg_start_path"

.field public static final ARG_TITLE:Ljava/lang/String; = "arg_title"

.field private static final HANDLE_CLICK_DELAY:I = 0x96

.field public static final RESULT_FILE_PATH:Ljava/lang/String; = "result_file_path"

.field private static final STATE_CURRENT_PATH:Ljava/lang/String; = "state_current_path"

.field public static final STATE_START_PATH:Ljava/lang/String; = "state_start_path"


# instance fields
.field private mCloseable:Ljava/lang/Boolean;

.field private mCurrentPath:Ljava/lang/String;

.field private mFilter:Lcom/nbsp/materialfilepicker/filter/CompositeFilter;

.field private mStartPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/CharSequence;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mStartPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mCurrentPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;Ljava/io/File;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->handleFileClicked(Ljava/io/File;)V

    return-void
.end method

.method private addFragmentToBackStack(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/nbsp/materialfilepicker/R$id;->container:I

    iget-object v2, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mFilter:Lcom/nbsp/materialfilepicker/filter/CompositeFilter;

    invoke-static {p1, v2}, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->getInstance(Ljava/lang/String;Lcom/nbsp/materialfilepicker/filter/CompositeFilter;)Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private handleFileClicked(Ljava/io/File;)V
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mCurrentPath:Ljava/lang/String;

    const-string v0, "/storage/emulated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mCurrentPath:Ljava/lang/String;

    :cond_1e
    iget-object p1, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mCurrentPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->addFragmentToBackStack(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->updateTitle()V

    goto :goto_2e

    :cond_27
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->setResultAndFinish(Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

.method private initArguments(Landroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "arg_filter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Ljava/util/regex/Pattern;

    if-eqz v1, :cond_30

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/nbsp/materialfilepicker/filter/PatternFilter;

    check-cast v0, Ljava/util/regex/Pattern;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/nbsp/materialfilepicker/filter/PatternFilter;-><init>(Ljava/util/regex/Pattern;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/nbsp/materialfilepicker/filter/CompositeFilter;

    invoke-direct {v0, v1}, Lcom/nbsp/materialfilepicker/filter/CompositeFilter;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mFilter:Lcom/nbsp/materialfilepicker/filter/CompositeFilter;

    goto :goto_34

    :cond_30
    check-cast v0, Lcom/nbsp/materialfilepicker/filter/CompositeFilter;

    iput-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mFilter:Lcom/nbsp/materialfilepicker/filter/CompositeFilter;

    :cond_34
    :goto_34
    if-eqz p1, :cond_4a

    const-string v0, "state_start_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mStartPath:Ljava/lang/String;

    const-string v0, "state_current_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mCurrentPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->updateTitle()V

    goto :goto_80

    :cond_4a
    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "arg_start_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_62

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mStartPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mCurrentPath:Ljava/lang/String;

    :cond_62
    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "arg_current_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_80

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mStartPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mCurrentPath:Ljava/lang/String;

    :cond_80
    :goto_80
    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "arg_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_96

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mTitle:Ljava/lang/CharSequence;

    :cond_96
    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "arg_closeable"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b1

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mCloseable:Ljava/lang/Boolean;

    :cond_b1
    return-void
.end method

.method private initBackStackState()V
    .registers 4

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mCurrentPath:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    iget-object v2, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mStartPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {v0}, Lcom/nbsp/materialfilepicker/utils/FileUtils;->cutLastSegmentOfPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_17
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->addFragmentToBackStack(Ljava/lang/String;)V

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method private initFragment()V
    .registers 5

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/nbsp/materialfilepicker/R$id;->container:I

    iget-object v2, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mCurrentPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mFilter:Lcom/nbsp/materialfilepicker/filter/CompositeFilter;

    invoke-static {v2, v3}, Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;->getInstance(Ljava/lang/String;Lcom/nbsp/materialfilepicker/filter/CompositeFilter;)Lcom/nbsp/materialfilepicker/ui/DirectoryFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private initToolbar()V
    .registers 4

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mTitleTextView"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_34

    :cond_28
    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mSubtitleTextView"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_44} :catch_45

    goto :goto_46

    :catch_45
    nop

    :goto_46
    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_53
    invoke-direct {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->updateTitle()V

    return-void
.end method

.method private initViews()V
    .registers 2

    sget v0, Lcom/nbsp/materialfilepicker/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method private setResultAndFinish(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result_file_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->finish()V

    return-void
.end method

.method private updateTitle()V
    .registers 3

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "/"

    goto :goto_13

    :cond_11
    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mCurrentPath:Ljava/lang/String;

    :goto_13
    iget-object v1, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2a

    :cond_23
    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 4

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mCurrentPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mStartPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mCurrentPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/nbsp/materialfilepicker/utils/FileUtils;->cutLastSegmentOfPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mCurrentPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->updateTitle()V

    goto :goto_24

    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->finish()V

    :goto_24
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/nbsp/materialfilepicker/R$layout;->activity_file_picker:I

    invoke-virtual {p0, v0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->initArguments(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->initViews()V

    invoke-direct {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->initToolbar()V

    invoke-direct {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->initBackStackState()V

    invoke-direct {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->initFragment()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/nbsp/materialfilepicker/R$menu;->menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget v0, Lcom/nbsp/materialfilepicker/R$id;->action_close:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mCloseable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onFileClicked(Ljava/io/File;)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity$1;-><init>(Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;Ljava/io/File;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->onBackPressed()V

    goto :goto_18

    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/nbsp/materialfilepicker/R$id;->action_close:I

    if-ne v0, v1, :cond_18

    invoke-virtual {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->finish()V

    :cond_18
    :goto_18
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mCurrentPath:Ljava/lang/String;

    const-string v1, "state_current_path"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->mStartPath:Ljava/lang/String;

    const-string v1, "state_start_path"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
