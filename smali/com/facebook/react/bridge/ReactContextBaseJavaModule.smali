.class public abstract Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.super Lcom/facebook/react/bridge/BaseJavaModule;
.source "ReactContextBaseJavaModule.java"


# instance fields
.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Lcom/facebook/react/bridge/BaseJavaModule;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 25
    return-void
.end method


# virtual methods
.method protected final getCurrentActivity()Landroid/app/Activity;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected final getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method
