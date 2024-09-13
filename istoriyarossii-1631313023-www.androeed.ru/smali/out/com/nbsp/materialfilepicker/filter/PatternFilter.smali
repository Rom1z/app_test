.class public Lcom/nbsp/materialfilepicker/filter/PatternFilter;
.super Ljava/lang/Object;
.source "PatternFilter.java"

# interfaces
.implements Ljava/io/FileFilter;
.implements Ljava/io/Serializable;


# instance fields
.field private mDirectoriesFilter:Z

.field private mPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/util/regex/Pattern;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/filter/PatternFilter;->mPattern:Ljava/util/regex/Pattern;

    iput-boolean p2, p0, Lcom/nbsp/materialfilepicker/filter/PatternFilter;->mDirectoriesFilter:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/nbsp/materialfilepicker/filter/PatternFilter;->mDirectoriesFilter:Z

    if-eqz v0, :cond_1a

    :cond_a
    iget-object v0, p0, Lcom/nbsp/materialfilepicker/filter/PatternFilter;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_1c

    :cond_1a
    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method
