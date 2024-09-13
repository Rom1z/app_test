.class public Lcom/online/languages/study/studymaster/fragments/StatsFragment;
.super Landroidx/fragment/app/Fragment;
.source "StatsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/fragments/StatsFragment$RecyclerTouchListener;,
        Lcom/online/languages/study/studymaster/fragments/StatsFragment$ClickListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field adapter:Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;

.field dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

.field easy_mode:Ljava/lang/Boolean;

.field errorsCard:Landroid/view/View;

.field errorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field knownCount:Landroid/widget/TextView;

.field knownProgress:Landroid/widget/ProgressBar;

.field knownTxt:Landroid/widget/TextView;

.field knownTxtProgress:Landroid/widget/TextView;

.field navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field recentErrorsTxt:Landroid/widget/TextView;

.field recentErrorsTxt2:Landroid/widget/TextView;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field studiedCount:Landroid/widget/TextView;

.field studiedProgress:Landroid/widget/ProgressBar;

.field studiedTxt:Landroid/widget/TextView;

.field studiedTxtProgress:Landroid/widget/TextView;

.field unknownTxt:Landroid/widget/TextView;

.field unknownTxtProgress:Landroid/widget/TextView;

.field userStats:Lcom/online/languages/study/studymaster/data/UserStats;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/fragments/StatsFragment;Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->onGridClick(Landroid/view/View;I)V

    return-void
.end method

.method private checkErrors()V
    .registers 7

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->errorsWords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_86

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->errorsCard:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->errorsWords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x6

    if-le v0, v3, :cond_22

    goto :goto_2c

    :cond_22
    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->errorsWords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2c
    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->errorsWords:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v2, v1

    const/4 v3, 0x0

    :goto_38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7b

    const/4 v4, 0x3

    const-string v5, "\n"

    if-ge v3, v4, :cond_5e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_78

    :cond_5e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_7b
    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->recentErrorsTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->recentErrorsTxt2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_97

    :cond_86
    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->errorsCard:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->recentErrorsTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->recentErrorsTxt2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_97
    return-void
.end method

.method private onGridClick(Landroid/view/View;I)V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/fragments/StatsFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/online/languages/study/studymaster/fragments/StatsFragment$3;-><init>(Lcom/online/languages/study/studymaster/fragments/StatsFragment;Landroid/view/View;I)V

    const-wide/16 p1, 0x50

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setContent()V
    .registers 9

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->updateData()V

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/UserStatsData;->sectionsDataList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->adapter:Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->checkErrors()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->studiedTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget v1, v1, Lcom/online/languages/study/studymaster/data/UserStatsData;->studiedDataCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->knownTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget v1, v1, Lcom/online/languages/study/studymaster/data/UserStatsData;->familiarDataCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->unknownTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget v1, v1, Lcom/online/languages/study/studymaster/data/UserStatsData;->unknownDataCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->studiedCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget v1, v1, Lcom/online/languages/study/studymaster/data/UserStatsData;->studiedDataCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->knownCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget v1, v1, Lcom/online/languages/study/studymaster/data/UserStatsData;->familiarDataCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->studiedDataCount:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget v1, v1, Lcom/online/languages/study/studymaster/data/UserStatsData;->allDataCount:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget v1, v1, Lcom/online/languages/study/studymaster/data/UserStatsData;->familiarDataCount:I

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget v2, v2, Lcom/online/languages/study/studymaster/data/UserStatsData;->allDataCount:I

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->studiedTxtProgress:Landroid/widget/TextView;

    const v3, 0x7f1101ef

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->knownTxtProgress:Landroid/widget/TextView;

    const v3, 0x7f1101e0

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->unknownTxtProgress:Landroid/widget/TextView;

    const v3, 0x7f1101f5

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    rsub-int/lit8 v5, v1, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->knownProgress:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setAlpha(F)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->studiedProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setAlpha(F)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->knownProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->studiedProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/online/languages/study/studymaster/fragments/StatsFragment$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/online/languages/study/studymaster/fragments/StatsFragment$2;-><init>(Lcom/online/languages/study/studymaster/fragments/StatsFragment;II)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateData()V
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/data/UserStats;->updateData()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/data/UserStats;->getAllDataFromJson()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/online/languages/study/studymaster/MainActivity;->allDataList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/data/UserStats;->getOldestLIst()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/online/languages/study/studymaster/MainActivity;->oldestDataList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->errorsWords:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->errorsList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->errorsWords:Ljava/util/ArrayList;

    sput-object v0, Lcom/online/languages/study/studymaster/MainActivity;->errorsList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d001f

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const p3, 0x7f0c008f

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "data_mode"

    const-string v1, "2"

    invoke-interface {p2, p3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "1"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->easy_mode:Ljava/lang/Boolean;

    new-instance p2, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "structure"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/online/languages/study/studymaster/data/NavStructure;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    new-instance p2, Lcom/online/languages/study/studymaster/data/UserStats;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-direct {p2, p3, v1}, Lcom/online/languages/study/studymaster/data/UserStats;-><init>(Landroid/content/Context;Lcom/online/languages/study/studymaster/data/NavStructure;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->userStats:Lcom/online/languages/study/studymaster/data/UserStats;

    const p2, 0x7f090221

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0900f0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->errorsCard:Landroid/view/View;

    const p2, 0x7f09021d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->recentErrorsTxt:Landroid/widget/TextView;

    const p2, 0x7f09021e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->recentErrorsTxt2:Landroid/widget/TextView;

    const p2, 0x7f09029d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->studiedTxt:Landroid/widget/TextView;

    const p2, 0x7f090178

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->knownTxt:Landroid/widget/TextView;

    const p2, 0x7f0902fa

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->unknownTxt:Landroid/widget/TextView;

    const p2, 0x7f090179

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->knownProgress:Landroid/widget/ProgressBar;

    const p2, 0x7f09029f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->studiedProgress:Landroid/widget/ProgressBar;

    const p2, 0x7f0902a3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->studiedTxtProgress:Landroid/widget/TextView;

    const p2, 0x7f09017b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->knownTxtProgress:Landroid/widget/TextView;

    const p2, 0x7f0902fb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->unknownTxtProgress:Landroid/widget/TextView;

    const p2, 0x7f090295

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->studiedCount:Landroid/widget/TextView;

    const p2, 0x7f090294

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->knownCount:Landroid/widget/TextView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/online/languages/study/studymaster/fragments/StatsFragment$RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/online/languages/study/studymaster/fragments/StatsFragment$1;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/fragments/StatsFragment$1;-><init>(Lcom/online/languages/study/studymaster/fragments/StatsFragment;)V

    invoke-direct {p3, p0, v0, v1, v2}, Lcom/online/languages/study/studymaster/fragments/StatsFragment$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/fragments/StatsFragment;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/fragments/StatsFragment$ClickListener;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0900e3

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->openDialog()V

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f0900e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->easy_mode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_16
    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->setContent()V

    return-void
.end method

.method public returnErrors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->errorsList:Ljava/util/ArrayList;

    return-object v0
.end method
