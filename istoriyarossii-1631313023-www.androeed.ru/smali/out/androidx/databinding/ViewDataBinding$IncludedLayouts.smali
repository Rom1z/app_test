.class public Landroidx/databinding/ViewDataBinding$IncludedLayouts;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "IncludedLayouts"
.end annotation


# instance fields
.field public final indexes:[[I

.field public final layoutIds:[[I

.field public final layouts:[[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [[Ljava/lang/String;

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->layouts:[[Ljava/lang/String;

    new-array v0, p1, [[I

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->indexes:[[I

    new-array p1, p1, [[I

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->layoutIds:[[I

    return-void
.end method


# virtual methods
.method public setIncludes(I[Ljava/lang/String;[I[I)V
    .registers 6

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->layouts:[[Ljava/lang/String;

    aput-object p2, v0, p1

    iget-object p2, p0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->indexes:[[I

    aput-object p3, p2, p1

    iget-object p2, p0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->layoutIds:[[I

    aput-object p4, p2, p1

    return-void
.end method
