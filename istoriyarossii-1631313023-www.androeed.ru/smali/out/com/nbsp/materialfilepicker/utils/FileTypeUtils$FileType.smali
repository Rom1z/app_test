.class public final enum Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;
.super Ljava/lang/Enum;
.source "FileTypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nbsp/materialfilepicker/utils/FileTypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

.field public static final enum APK:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

.field public static final enum ARCHIVE:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

.field public static final enum CERTIFICATE:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

.field public static final enum DIRECTORY:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

.field public static final enum DOCUMENT:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

.field public static final enum DRAWING:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

.field public static final enum EXCEL:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

.field public static final enum IMAGE:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

.field public static final enum MUSIC:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

.field public static final enum PDF:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

.field public static final enum POWER_POINT:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

.field public static final enum VIDEO:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

.field public static final enum WORD:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;


# instance fields
.field private description:I

.field private extensions:[Ljava/lang/String;

.field private icon:I


# direct methods
.method static constructor <clinit>()V
    .registers 43

    new-instance v6, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    sget v3, Lcom/nbsp/materialfilepicker/R$drawable;->ic_folder_48dp:I

    sget v4, Lcom/nbsp/materialfilepicker/R$string;->type_directory:I

    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/String;

    const-string v1, "DIRECTORY"

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;-><init>(Ljava/lang/String;III[Ljava/lang/String;)V

    sput-object v6, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->DIRECTORY:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    new-instance v0, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    sget v11, Lcom/nbsp/materialfilepicker/R$drawable;->ic_document_box:I

    sget v12, Lcom/nbsp/materialfilepicker/R$string;->type_document:I

    new-array v13, v7, [Ljava/lang/String;

    const-string v9, "DOCUMENT"

    const/4 v10, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;-><init>(Ljava/lang/String;III[Ljava/lang/String;)V

    sput-object v0, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->DOCUMENT:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    new-instance v1, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    sget v17, Lcom/nbsp/materialfilepicker/R$drawable;->ic_certificate_box:I

    sget v18, Lcom/nbsp/materialfilepicker/R$string;->type_certificate:I

    const-string v8, "cer"

    const-string v9, "der"

    const-string v10, "pfx"

    const-string v11, "p12"

    const-string v12, "arm"

    const-string v13, "pem"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v19

    const-string v15, "CERTIFICATE"

    const/16 v16, 0x2

    move-object v14, v1

    invoke-direct/range {v14 .. v19}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;-><init>(Ljava/lang/String;III[Ljava/lang/String;)V

    sput-object v1, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->CERTIFICATE:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    new-instance v2, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    sget v11, Lcom/nbsp/materialfilepicker/R$drawable;->ic_drawing_box:I

    sget v12, Lcom/nbsp/materialfilepicker/R$string;->type_drawing:I

    const-string v13, "ai"

    const-string v14, "cdr"

    const-string v15, "dfx"

    const-string v16, "eps"

    const-string v17, "svg"

    const-string v18, "stl"

    const-string v19, "wmf"

    const-string v20, "emf"

    const-string v21, "art"

    const-string v22, "xar"

    filled-new-array/range {v13 .. v22}, [Ljava/lang/String;

    move-result-object v13

    const-string v9, "DRAWING"

    const/4 v10, 0x3

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;-><init>(Ljava/lang/String;III[Ljava/lang/String;)V

    sput-object v2, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->DRAWING:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    new-instance v3, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    sget v17, Lcom/nbsp/materialfilepicker/R$drawable;->ic_excel_box:I

    sget v18, Lcom/nbsp/materialfilepicker/R$string;->type_excel:I

    const-string v19, "xls"

    const-string v20, "xlk"

    const-string v21, "xlsb"

    const-string v22, "xlsm"

    const-string v23, "xlsx"

    const-string v24, "xlr"

    const-string v25, "xltm"

    const-string v26, "xlw"

    const-string v27, "numbers"

    const-string v28, "ods"

    const-string v29, "ots"

    filled-new-array/range {v19 .. v29}, [Ljava/lang/String;

    move-result-object v19

    const-string v15, "EXCEL"

    const/16 v16, 0x4

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;-><init>(Ljava/lang/String;III[Ljava/lang/String;)V

    sput-object v3, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->EXCEL:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    new-instance v4, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    sget v11, Lcom/nbsp/materialfilepicker/R$drawable;->ic_image_box:I

    sget v12, Lcom/nbsp/materialfilepicker/R$string;->type_image:I

    const-string v13, "bmp"

    const-string v14, "gif"

    const-string v15, "ico"

    const-string v16, "jpeg"

    const-string v17, "jpg"

    const-string v18, "pcx"

    const-string v19, "png"

    const-string v20, "psd"

    const-string v21, "tga"

    const-string v22, "tiff"

    const-string v23, "tif"

    const-string v24, "xcf"

    filled-new-array/range {v13 .. v24}, [Ljava/lang/String;

    move-result-object v13

    const-string v9, "IMAGE"

    const/4 v10, 0x5

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;-><init>(Ljava/lang/String;III[Ljava/lang/String;)V

    sput-object v4, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->IMAGE:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    new-instance v5, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    sget v17, Lcom/nbsp/materialfilepicker/R$drawable;->ic_music_box:I

    sget v18, Lcom/nbsp/materialfilepicker/R$string;->type_music:I

    const-string v19, "aiff"

    const-string v20, "aif"

    const-string v21, "wav"

    const-string v22, "flac"

    const-string v23, "m4a"

    const-string v24, "wma"

    const-string v25, "amr"

    const-string v26, "mp2"

    const-string v27, "mp3"

    const-string v28, "wma"

    const-string v29, "aac"

    const-string v30, "mid"

    const-string v31, "m3u"

    filled-new-array/range {v19 .. v31}, [Ljava/lang/String;

    move-result-object v19

    const-string v15, "MUSIC"

    const/16 v16, 0x6

    move-object v14, v5

    invoke-direct/range {v14 .. v19}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;-><init>(Ljava/lang/String;III[Ljava/lang/String;)V

    sput-object v5, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->MUSIC:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    new-instance v14, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    sget v11, Lcom/nbsp/materialfilepicker/R$drawable;->ic_video_box:I

    sget v12, Lcom/nbsp/materialfilepicker/R$string;->type_video:I

    const-string v15, "avi"

    const-string v16, "mov"

    const-string v17, "wmv"

    const-string v18, "mkv"

    const-string v19, "3gp"

    const-string v20, "f4v"

    const-string v21, "flv"

    const-string v22, "mp4"

    const-string v23, "mpeg"

    const-string v24, "webm"

    filled-new-array/range {v15 .. v24}, [Ljava/lang/String;

    move-result-object v13

    const-string v9, "VIDEO"

    const/4 v10, 0x7

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;-><init>(Ljava/lang/String;III[Ljava/lang/String;)V

    sput-object v14, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->VIDEO:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    new-instance v8, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    sget v18, Lcom/nbsp/materialfilepicker/R$drawable;->ic_pdf_box:I

    sget v19, Lcom/nbsp/materialfilepicker/R$string;->type_pdf:I

    const-string v9, "pdf"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v20

    const-string v16, "PDF"

    const/16 v17, 0x8

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;-><init>(Ljava/lang/String;III[Ljava/lang/String;)V

    sput-object v8, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->PDF:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    new-instance v9, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    sget v24, Lcom/nbsp/materialfilepicker/R$drawable;->ic_powerpoint_box:I

    sget v25, Lcom/nbsp/materialfilepicker/R$string;->type_power_point:I

    const-string v15, "pptx"

    const-string v16, "keynote"

    const-string v17, "ppt"

    const-string v18, "pps"

    const-string v19, "pot"

    const-string v20, "odp"

    const-string v21, "otp"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v26

    const-string v22, "POWER_POINT"

    const/16 v23, 0x9

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;-><init>(Ljava/lang/String;III[Ljava/lang/String;)V

    sput-object v9, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->POWER_POINT:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    new-instance v10, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    sget v18, Lcom/nbsp/materialfilepicker/R$drawable;->ic_word_box:I

    sget v19, Lcom/nbsp/materialfilepicker/R$string;->type_word:I

    const-string v20, "doc"

    const-string v21, "docm"

    const-string v22, "docx"

    const-string v23, "dot"

    const-string v24, "mcw"

    const-string v25, "rtf"

    const-string v26, "pages"

    const-string v27, "odt"

    const-string v28, "ott"

    filled-new-array/range {v20 .. v28}, [Ljava/lang/String;

    move-result-object v20

    const-string v16, "WORD"

    const/16 v17, 0xa

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;-><init>(Ljava/lang/String;III[Ljava/lang/String;)V

    sput-object v10, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->WORD:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    new-instance v11, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    sget v24, Lcom/nbsp/materialfilepicker/R$drawable;->ic_zip_box:I

    sget v25, Lcom/nbsp/materialfilepicker/R$string;->type_archive:I

    const-string v26, "cab"

    const-string v27, "7z"

    const-string v28, "alz"

    const-string v29, "arj"

    const-string v30, "bzip2"

    const-string v31, "bz2"

    const-string v32, "dmg"

    const-string v33, "gzip"

    const-string v34, "gz"

    const-string v35, "jar"

    const-string v36, "lz"

    const-string v37, "lzip"

    const-string v38, "lzma"

    const-string v39, "zip"

    const-string v40, "rar"

    const-string v41, "tar"

    const-string v42, "tgz"

    filled-new-array/range {v26 .. v42}, [Ljava/lang/String;

    move-result-object v26

    const-string v22, "ARCHIVE"

    const/16 v23, 0xb

    move-object/from16 v21, v11

    invoke-direct/range {v21 .. v26}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;-><init>(Ljava/lang/String;III[Ljava/lang/String;)V

    sput-object v11, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->ARCHIVE:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    new-instance v12, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    sget v18, Lcom/nbsp/materialfilepicker/R$drawable;->ic_apk_box:I

    sget v19, Lcom/nbsp/materialfilepicker/R$string;->type_apk:I

    const-string v13, "apk"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v20

    const-string v16, "APK"

    const/16 v17, 0xc

    move-object v15, v12

    invoke-direct/range {v15 .. v20}, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;-><init>(Ljava/lang/String;III[Ljava/lang/String;)V

    sput-object v12, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->APK:Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    const/16 v13, 0xd

    new-array v13, v13, [Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    aput-object v6, v13, v7

    const/4 v6, 0x1

    aput-object v0, v13, v6

    const/4 v0, 0x2

    aput-object v1, v13, v0

    const/4 v0, 0x3

    aput-object v2, v13, v0

    const/4 v0, 0x4

    aput-object v3, v13, v0

    const/4 v0, 0x5

    aput-object v4, v13, v0

    const/4 v0, 0x6

    aput-object v5, v13, v0

    const/4 v0, 0x7

    aput-object v14, v13, v0

    const/16 v0, 0x8

    aput-object v8, v13, v0

    const/16 v0, 0x9

    aput-object v9, v13, v0

    const/16 v0, 0xa

    aput-object v10, v13, v0

    const/16 v0, 0xb

    aput-object v11, v13, v0

    const/16 v0, 0xc

    aput-object v12, v13, v0

    sput-object v13, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->$VALUES:[Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;III[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->icon:I

    iput p4, p0, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->description:I

    iput-object p5, p0, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->extensions:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;
    .registers 2

    const-class v0, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    return-object p0
.end method

.method public static values()[Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;
    .registers 1

    sget-object v0, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->$VALUES:[Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    invoke-virtual {v0}, [Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;

    return-object v0
.end method


# virtual methods
.method public getDescription()I
    .registers 2

    iget v0, p0, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->description:I

    return v0
.end method

.method public getExtensions()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->extensions:[Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    iget v0, p0, Lcom/nbsp/materialfilepicker/utils/FileTypeUtils$FileType;->icon:I

    return v0
.end method
