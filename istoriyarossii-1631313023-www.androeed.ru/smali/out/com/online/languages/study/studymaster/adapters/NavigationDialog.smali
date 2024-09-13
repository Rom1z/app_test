.class public Lcom/online/languages/study/studymaster/adapters/NavigationDialog;
.super Ljava/lang/Object;
.source "NavigationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/NavigationDialog$TextType;
    }
.end annotation


# instance fields
.field act:Lcom/online/languages/study/studymaster/MainActivity;

.field alert:Landroidx/appcompat/app/AlertDialog;

.field context:Landroid/content/Context;

.field setMaxHeight:Ljava/lang/Boolean;

.field small_height:Ljava/lang/Boolean;

.field textType:Lcom/online/languages/study/studymaster/adapters/NavigationDialog$TextType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/online/languages/study/studymaster/MainActivity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->context:Landroid/content/Context;

    sget-object p1, Lcom/online/languages/study/studymaster/adapters/NavigationDialog$TextType;->TEXT:Lcom/online/languages/study/studymaster/adapters/NavigationDialog$TextType;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->textType:Lcom/online/languages/study/studymaster/adapters/NavigationDialog$TextType;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050011

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->small_height:Ljava/lang/Boolean;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->setMaxHeight:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->act:Lcom/online/languages/study/studymaster/MainActivity;

    return-void
.end method

.method private createDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->context:Landroid/content/Context;

    const v0, 0x7f120109

    invoke-direct {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0c00bd

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0901c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901be

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901bf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901c0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/online/languages/study/studymaster/adapters/NavigationDialog$1;

    invoke-direct {v4, p0}, Lcom/online/languages/study/studymaster/adapters/NavigationDialog$1;-><init>(Lcom/online/languages/study/studymaster/adapters/NavigationDialog;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog$2;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/NavigationDialog$2;-><init>(Lcom/online/languages/study/studymaster/adapters/NavigationDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog$3;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/NavigationDialog$3;-><init>(Lcom/online/languages/study/studymaster/adapters/NavigationDialog;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog$4;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/NavigationDialog$4;-><init>(Lcom/online/languages/study/studymaster/adapters/NavigationDialog;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    const p2, 0x102000b

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method private static dpToPixels(Landroid/content/Context;F)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public dismissDialog(I)V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->act:Lcom/online/languages/study/studymaster/MainActivity;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/MainActivity;->onMenuItemClicker(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog$5;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/NavigationDialog$5;-><init>(Lcom/online/languages/study/studymaster/adapters/NavigationDialog;)V

    const-wide/16 v1, 0xb4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public openInfoDialog(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openInfoHtmlDialog(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    sget-object v0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog$TextType;->HTML:Lcom/online/languages/study/studymaster/adapters/NavigationDialog$TextType;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->textType:Lcom/online/languages/study/studymaster/adapters/NavigationDialog$TextType;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->setMaxHeight:Ljava/lang/Boolean;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1100b5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
