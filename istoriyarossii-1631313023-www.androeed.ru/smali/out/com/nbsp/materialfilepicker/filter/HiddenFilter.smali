.class public Lcom/nbsp/materialfilepicker/filter/HiddenFilter;
.super Ljava/lang/Object;
.source "HiddenFilter.java"

# interfaces
.implements Ljava/io/FileFilter;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 2

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
