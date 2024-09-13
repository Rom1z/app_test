.class public Lcom/online/languages/study/studymaster/adapters/InfoDialog;
.super Ljava/lang/Object;
.source "InfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field setMaxHeight:Ljava/lang/Boolean;

.field small_height:Ljava/lang/Boolean;

.field textType:Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->context:Landroid/content/Context;

    sget-object p1, Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;->TEXT:Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->textType:Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050011

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->small_height:Ljava/lang/Boolean;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->setMaxHeight:Ljava/lang/Boolean;

    return-void
.end method

.method private createDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/InfoDialog$1;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/adapters/InfoDialog$1;-><init>(Lcom/online/languages/study/studymaster/adapters/InfoDialog;)V

    const v2, 0x7f110053

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->textType:Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;->HTML:Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    if-ne p1, v1, :cond_29

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_2c

    :cond_29
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_2c
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    const p2, 0x102000b

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->setMaxHeight:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_72

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->small_height:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_72

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->context:Landroid/content/Context;

    const/high16 v1, 0x43fa0000    # 500.0f

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->dpToPixels(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_72
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

.method private showCustomDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0077

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->textType:Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    sget-object v3, Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;->HTML:Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    if-ne v2, v3, :cond_29

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    :cond_29
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2c
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->context:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f110053

    new-instance v2, Lcom/online/languages/study/studymaster/adapters/InfoDialog$2;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/adapters/InfoDialog$2;-><init>(Lcom/online/languages/study/studymaster/adapters/InfoDialog;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public modeInfoDialog()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11021f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openEasyModeDialog()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openInfoDialog(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openInfoHtmlDialog(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    sget-object v0, Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;->HTML:Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->textType:Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->setMaxHeight:Ljava/lang/Boolean;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1100b5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public simpleDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/InfoDialog$3;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/adapters/InfoDialog$3;-><init>(Lcom/online/languages/study/studymaster/adapters/InfoDialog;)V

    const v2, 0x7f110053

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
