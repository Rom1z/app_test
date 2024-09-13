.class public Lcom/online/languages/study/studymaster/FinderDialogActivity;
.super Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;
.source "FinderDialogActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/nbsp/materialfilepicker/ui/FilePickerActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0900ab

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/FinderDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/FinderDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
