.class public Lcom/online/languages/study/studymaster/ProgressStatsActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "ProgressStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/ProgressStatsActivity$RecyclerTouchListener;,
        Lcom/online/languages/study/studymaster/ProgressStatsActivity$ClickListener;
    }
.end annotation


# instance fields
.field adapter:Lcom/online/languages/study/studymaster/adapters/ProgressDataAdapter;

.field appSettings:Landroid/content/SharedPreferences;

.field dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

.field easy_mode:Ljava/lang/Boolean;

.field knownProgress:Landroid/widget/ProgressBar;

.field knownProgressTxt:Landroid/widget/TextView;

.field navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field studiedProgress:Landroid/widget/ProgressBar;

.field studiedProgressTxt:Landroid/widget/TextView;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;

.field userStats:Lcom/online/languages/study/studymaster/data/UserStats;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/ProgressStatsActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->onGridClick(I)V

    return-void
.end method

.method private onGridClick(I)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/ProgressStatsActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/ProgressStatsActivity$2;-><init>(Lcom/online/languages/study/studymaster/ProgressStatsActivity;I)V

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->updateContent()V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->themeTitle:Ljava/lang/String;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v0, v3}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0032

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->setContentView(I)V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "data_mode"

    const-string v1, "2"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->easy_mode:Ljava/lang/Boolean;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f1101eb

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "nav_structure"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/NavStructure;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    new-instance v1, Lcom/online/languages/study/studymaster/data/UserStats;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/data/UserStats;-><init>(Landroid/content/Context;Lcom/online/languages/study/studymaster/data/NavStructure;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    const p1, 0x7f090179

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->knownProgress:Landroid/widget/ProgressBar;

    const p1, 0x7f09029f

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->studiedProgress:Landroid/widget/ProgressBar;

    const p1, 0x7f090177

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->knownProgressTxt:Landroid/widget/TextView;

    const p1, 0x7f0902a0

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->studiedProgressTxt:Landroid/widget/TextView;

    const p1, 0x7f090222

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setSelected(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->updateContent()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/online/languages/study/studymaster/ProgressStatsActivity$RecyclerTouchListener;

    new-instance v1, Lcom/online/languages/study/studymaster/ProgressStatsActivity$1;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/ProgressStatsActivity$1;-><init>(Lcom/online/languages/study/studymaster/ProgressStatsActivity;)V

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/online/languages/study/studymaster/ProgressStatsActivity$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/ProgressStatsActivity;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/ProgressStatsActivity$ClickListener;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d001a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0900e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f090293

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->easy_mode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    :cond_28
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_23

    const v1, 0x7f0900e3

    if-eq v0, v1, :cond_1d

    const v1, 0x7f090293

    if-eq v0, v1, :cond_19

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_19
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->showInfoDialog()V

    return v2

    :cond_1d
    iget-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->openDialog()V

    return v2

    :cond_23
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v2
.end method

.method public openSectionStats(I)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/SectionStatsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    const-string v2, "nav_structure"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/NavStructure;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/NavSection;->id:Ljava/lang/String;

    const-string v2, "section_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "section_num"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public showInfoDialog()V
    .registers 5

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1101eb

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/online/languages/study/studymaster/ProgressStatsActivity$3;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/ProgressStatsActivity$3;-><init>(Lcom/online/languages/study/studymaster/ProgressStatsActivity;)V

    const v3, 0x7f110053

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110135

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public updateContent()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/data/UserStats;->updateData()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->studiedDataCount:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget v1, v1, Lcom/online/languages/study/studymaster/data/UserStatsData;->allDataCount:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget v1, v1, Lcom/online/languages/study/studymaster/data/UserStatsData;->familiarDataCount:I

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget v2, v2, Lcom/online/languages/study/studymaster/data/UserStatsData;->allDataCount:I

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->knownProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->studiedProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->knownProgressTxt:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->studiedProgressTxt:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ProgressDataAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/UserStatsData;->sectionsDataList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/online/languages/study/studymaster/adapters/ProgressDataAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/ProgressDataAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ProgressStatsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
