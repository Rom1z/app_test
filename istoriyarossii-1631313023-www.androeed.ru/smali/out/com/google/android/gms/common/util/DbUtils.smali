.class public final Lcom/google/android/gms/common/util/DbUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const-string v0, "sqlite_sequence"

    const-string v1, "android_metadata"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "table"

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/common/util/DbUtils;->zza(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "trigger"

    invoke-static {p0, v2, v1}, Lcom/google/android/gms/common/util/DbUtils;->zza(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "view"

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/common/util/DbUtils;->zza(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static countCurrentRowBytes(Landroid/database/Cursor;)J
    .registers 3

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/DbUtils;->countCurrentRowBytes(Landroid/database/Cursor;Ljava/nio/charset/Charset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static countCurrentRowBytes(Landroid/database/Cursor;Ljava/nio/charset/Charset;)J
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ge v2, v3, :cond_33

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    if-eqz v3, :cond_2d

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2d

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2d

    const/4 v4, 0x3

    if-eq v3, v4, :cond_22

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1c

    goto :goto_30

    :cond_1c
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    array-length v3, v3

    goto :goto_2b

    :cond_22
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    :goto_2b
    int-to-long v3, v3

    goto :goto_2f

    :cond_2d
    const-wide/16 v3, 0x4

    :goto_2f
    add-long/2addr v0, v3

    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_33
    return-wide v0
.end method

.method public static getDatabaseSize(Landroid/content/Context;Ljava/lang/String;)J
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_a} :catch_b

    return-wide p0

    :catch_b
    nop

    const-string p0, "Failed to get db size for "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_23

    :cond_1d
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_23
    const-string p1, "DbUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getIntegerFromCursor(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/util/DbUtils;->getIntegerFromCursor(Landroid/database/Cursor;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getIntegerFromCursor(Landroid/database/Cursor;ILjava/lang/Integer;)Ljava/lang/Integer;
    .registers 4
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_12

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    :cond_9
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_12
    return-object p2
.end method

.method public static getLongFromCursor(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/util/DbUtils;->getLongFromCursor(Landroid/database/Cursor;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static getLongFromCursor(Landroid/database/Cursor;ILjava/lang/Long;)Ljava/lang/Long;
    .registers 4
    .param p2    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_12

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    :cond_9
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_12
    return-object p2
.end method

.method public static getStringFromCursor(Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/util/DbUtils;->getStringFromCursor(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringFromCursor(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_e

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    :goto_e
    return-object p2
.end method

.method public static putIntegerIntoContentValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    return-void
.end method

.method public static putLongIntoContentValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 3
    .param p2    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    return-void
.end method

.method public static putStringIntoContentValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    return-void
.end method

.method private static varargs zza(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 14

    const-string v0, "table"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1d

    const-string v0, "view"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "trigger"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    const-string v0, "name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    new-array v7, v1, [Ljava/lang/String;

    aput-object p1, v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "SQLITE_MASTER"

    const-string v6, "type == ?"

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_37
    invoke-static {p2}, Lcom/google/android/gms/common/util/CollectionUtils;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    :cond_3b
    :goto_3b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "DROP "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_37 .. :try_end_7f} :catchall_86

    goto :goto_3b

    :cond_80
    if-eqz v0, :cond_85

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_85
    return-void

    :catchall_86
    move-exception p0

    :try_start_87
    throw p0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_88

    :catchall_88
    move-exception p1

    if-eqz v0, :cond_93

    :try_start_8b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8f

    goto :goto_93

    :catchall_8f
    move-exception p2

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/stable/zzk;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_93
    :goto_93
    throw p1
.end method
