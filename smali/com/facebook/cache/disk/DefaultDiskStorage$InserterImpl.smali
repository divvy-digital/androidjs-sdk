.class Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/cache/disk/DiskStorage$Inserter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InserterImpl"
.end annotation


# instance fields
.field private final mResourceId:Ljava/lang/String;

.field final mTemporaryFile:Ljava/io/File;

.field final synthetic this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;


# direct methods
.method public constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/cache/disk/DefaultDiskStorage;
    .param p2, "resourceId"    # Ljava/lang/String;
    .param p3, "temporaryFile"    # Ljava/io/File;

    .line 650
    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput-object p2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mResourceId:Ljava/lang/String;

    .line 652
    iput-object p3, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    .line 653
    return-void
.end method


# virtual methods
.method public cleanUp()Z
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public commit(Ljava/lang/Object;)Lcom/facebook/binaryresource/BinaryResource;
    .locals 7
    .param p1, "debugInfo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mResourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getContentFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 696
    .local v0, "targetFile":Ljava/io/File;
    :try_start_0
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/facebook/common/file/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$RenameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    nop

    .line 717
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->access$400(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lcom/facebook/common/time/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/common/time/Clock;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 720
    :cond_0
    invoke-static {v0}, Lcom/facebook/binaryresource/FileBinaryResource;->createOrNull(Ljava/io/File;)Lcom/facebook/binaryresource/FileBinaryResource;

    move-result-object v1

    return-object v1

    .line 697
    :catch_0
    move-exception v1

    .line 699
    .local v1, "re":Lcom/facebook/common/file/FileUtils$RenameException;
    invoke-virtual {v1}, Lcom/facebook/common/file/FileUtils$RenameException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 700
    .local v2, "cause":Ljava/lang/Throwable;
    if-eqz v2, :cond_3

    .line 702
    instance-of v3, v2, Lcom/facebook/common/file/FileUtils$ParentDirNotFoundException;

    if-nez v3, :cond_2

    .line 705
    instance-of v3, v2, Ljava/io/FileNotFoundException;

    if-eqz v3, :cond_1

    .line 706
    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .local v3, "category":Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;
    goto :goto_0

    .line 708
    .end local v3    # "category":Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;
    :cond_1
    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_OTHER:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .restart local v3    # "category":Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;
    goto :goto_0

    .line 703
    .end local v3    # "category":Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;
    :cond_2
    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .restart local v3    # "category":Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;
    goto :goto_0

    .line 701
    .end local v3    # "category":Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;
    :cond_3
    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_OTHER:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 710
    .restart local v3    # "category":Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;
    :goto_0
    iget-object v4, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v4}, Lcom/facebook/cache/disk/DefaultDiskStorage;->access$1000(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object v4

    .line 712
    invoke-static {}, Lcom/facebook/cache/disk/DefaultDiskStorage;->access$900()Ljava/lang/Class;

    move-result-object v5

    .line 710
    const-string v6, "commit"

    invoke-interface {v4, v3, v5, v6, v1}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 715
    throw v1
.end method

.method public writeData(Lcom/facebook/cache/common/WriterCallback;Ljava/lang/Object;)V
    .locals 6
    .param p1, "callback"    # Lcom/facebook/cache/common/WriterCallback;
    .param p2, "debugInfo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    .local v0, "fileStream":Ljava/io/FileOutputStream;
    nop

    .line 671
    :try_start_1
    new-instance v1, Lcom/facebook/common/internal/CountingOutputStream;

    invoke-direct {v1, v0}, Lcom/facebook/common/internal/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 672
    .local v1, "countingStream":Lcom/facebook/common/internal/CountingOutputStream;
    invoke-interface {p1, v1}, Lcom/facebook/cache/common/WriterCallback;->write(Ljava/io/OutputStream;)V

    .line 675
    invoke-virtual {v1}, Lcom/facebook/common/internal/CountingOutputStream;->flush()V

    .line 676
    invoke-virtual {v1}, Lcom/facebook/common/internal/CountingOutputStream;->getCount()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v1, v2

    .line 681
    .local v1, "length":J
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 682
    nop

    .line 685
    iget-object v3, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    .line 688
    return-void

    .line 686
    :cond_0
    new-instance v3, Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;

    iget-object v4, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;-><init>(JJ)V

    throw v3

    .line 681
    .end local v1    # "length":J
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 682
    throw v1

    .line 660
    .end local v0    # "fileStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 661
    .local v0, "fne":Ljava/io/FileNotFoundException;
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->access$1000(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object v1

    sget-object v2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_UPDATE_FILE_NOT_FOUND:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 663
    invoke-static {}, Lcom/facebook/cache/disk/DefaultDiskStorage;->access$900()Ljava/lang/Class;

    move-result-object v3

    .line 661
    const-string v4, "updateResource"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 666
    throw v0
.end method
