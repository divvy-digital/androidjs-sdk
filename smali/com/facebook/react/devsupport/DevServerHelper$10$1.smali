.class Lcom/facebook/react/devsupport/DevServerHelper$10$1;
.super Ljava/lang/Object;
.source "DevServerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevServerHelper$10;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/react/devsupport/DevServerHelper$10;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevServerHelper$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/facebook/react/devsupport/DevServerHelper$10;

    .line 576
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper$10$1;->this$1:Lcom/facebook/react/devsupport/DevServerHelper$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper$10$1;->this$1:Lcom/facebook/react/devsupport/DevServerHelper$10;

    iget-object v0, v0, Lcom/facebook/react/devsupport/DevServerHelper$10;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/react/devsupport/DevServerHelper;->access$900(Lcom/facebook/react/devsupport/DevServerHelper;Z)V

    .line 580
    return-void
.end method
