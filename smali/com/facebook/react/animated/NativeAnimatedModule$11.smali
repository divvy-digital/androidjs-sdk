.class Lcom/facebook/react/animated/NativeAnimatedModule$11;
.super Ljava/lang/Object;
.source "NativeAnimatedModule.java"

# interfaces
.implements Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/animated/NativeAnimatedModule;->flattenAnimatedNodeOffset(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

.field final synthetic val$tag:I


# direct methods
.method constructor <init>(Lcom/facebook/react/animated/NativeAnimatedModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/animated/NativeAnimatedModule;

    .line 269
    iput-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$11;->this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

    iput p2, p0, Lcom/facebook/react/animated/NativeAnimatedModule$11;->val$tag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V
    .locals 1
    .param p1, "animatedNodesManager"    # Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 272
    iget v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule$11;->val$tag:I

    invoke-virtual {p1, v0}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->flattenAnimatedNodeOffset(I)V

    .line 273
    return-void
.end method
