.class public Lcom/nbsp/materialfilepicker/utils/FileTypeUtils;
.super Ljava/lang/Object;
.source "FileTypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;
    }
.end annotation


# static fields
.field private static fileTypeExtensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils;->fileTypeExtensions:Ljava/util/Map;

    invoke-static {}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->values()[Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_27

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->getExtensions()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v6, :cond_24

    aget-object v8, v5, v7

    sget-object v9, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils;->fileTypeExtensions:Ljava/util/Map;

    invoke-interface {v9, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileType(Ljava/io/File;)Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->DIRECTORY:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    return-object p0

    :cond_9
    sget-object v0, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils;->fileTypeExtensions:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    if-eqz p0, :cond_1c

    return-object p0

    :cond_1c
    sget-object p0, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->DOCUMENT:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    return-object p0
.end method
