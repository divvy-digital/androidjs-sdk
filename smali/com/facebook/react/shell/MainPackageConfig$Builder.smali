.class public Lcom/facebook/react/shell/MainPackageConfig$Builder;
.super Ljava/lang/Object;
.source "MainPackageConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/shell/MainPackageConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFrescoConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/shell/MainPackageConfig$Builder;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/shell/MainPackageConfig$Builder;

    .line 27
    iget-object v0, p0, Lcom/facebook/react/shell/MainPackageConfig$Builder;->mFrescoConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/react/shell/MainPackageConfig;
    .locals 2

    .line 37
    new-instance v0, Lcom/facebook/react/shell/MainPackageConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/shell/MainPackageConfig;-><init>(Lcom/facebook/react/shell/MainPackageConfig$Builder;Lcom/facebook/react/shell/MainPackageConfig$1;)V

    return-object v0
.end method

.method public setFrescoConfig(Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)Lcom/facebook/react/shell/MainPackageConfig$Builder;
    .locals 0
    .param p1, "frescoConfig"    # Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 32
    iput-object p1, p0, Lcom/facebook/react/shell/MainPackageConfig$Builder;->mFrescoConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 33
    return-object p0
.end method
