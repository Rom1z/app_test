.class public final Landroidx/preference/PreferenceScreen;
.super Landroidx/preference/PreferenceGroup;
.source "PreferenceScreen.java"


# instance fields
.field private mShouldUseGeneratedIds:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    sget v0, Landroidx/preference/R$attr;->preferenceScreenStyle:I

    const v1, 0x101008b

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    return-void
.end method


# virtual methods
.method protected isOnSameScreenAsChildren()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .registers 2

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_20

    :cond_13
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getOnNavigateToScreenListener()Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v0, p0}, Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;->onNavigateToScreen(Landroidx/preference/PreferenceScreen;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public setShouldUseGeneratedIds(Z)V
    .registers 3

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->isAttached()Z

    move-result v0

    if-nez v0, :cond_9

    iput-boolean p1, p0, Landroidx/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change the usage of generated IDs while attached to the preference hierarchy"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldUseGeneratedIds()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    return v0
.end method
