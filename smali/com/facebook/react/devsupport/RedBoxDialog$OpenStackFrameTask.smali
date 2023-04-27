.class Lcom/facebook/react/devsupport/RedBoxDialog$OpenStackFrameTask;
.super Landroid/os/AsyncTask;
.source "RedBoxDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/RedBoxDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenStackFrameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/facebook/react/devsupport/interfaces/StackFrame;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final JSON:Lokhttp3/MediaType;


# instance fields
.field private final mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 191
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/devsupport/RedBoxDialog$OpenStackFrameTask;->JSON:Lokhttp3/MediaType;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 0
    .param p1, "devSupportManager"    # Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 195
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/facebook/react/devsupport/RedBoxDialog$OpenStackFrameTask;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 197
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Lcom/facebook/react/devsupport/RedBoxDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .param p2, "x1"    # Lcom/facebook/react/devsupport/RedBoxDialog$1;

    .line 190
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/RedBoxDialog$OpenStackFrameTask;-><init>(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    return-void
.end method

.method private static stackFrameToJson(Lcom/facebook/react/devsupport/interfaces/StackFrame;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "frame"    # Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 222
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "file"

    .line 224
    invoke-interface {p0}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getFile()Ljava/lang/String;

    move-result-object v2

    const-string v3, "methodName"

    .line 225
    invoke-interface {p0}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lineNumber"

    .line 226
    invoke-interface {p0}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getLine()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "column"

    .line 227
    invoke-interface {p0}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getColumn()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 223
    invoke-static/range {v1 .. v8}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 222
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 190
    check-cast p1, [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    invoke-virtual {p0, p1}, Lcom/facebook/react/devsupport/RedBoxDialog$OpenStackFrameTask;->doInBackground([Lcom/facebook/react/devsupport/interfaces/StackFrame;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/facebook/react/devsupport/interfaces/StackFrame;)Ljava/lang/Void;
    .locals 10
    .param p1, "stackFrames"    # [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 202
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog$OpenStackFrameTask;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 203
    invoke-interface {v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getSourceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/open-stack-frame"

    .line 204
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 205
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "openStackFrameUrl":Ljava/lang/String;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 209
    .local v2, "client":Lokhttp3/OkHttpClient;
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p1, v4

    .line 210
    .local v5, "frame":Lcom/facebook/react/devsupport/interfaces/StackFrame;
    invoke-static {v5}, Lcom/facebook/react/devsupport/RedBoxDialog$OpenStackFrameTask;->stackFrameToJson(Lcom/facebook/react/devsupport/interfaces/StackFrame;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 211
    .local v6, "payload":Ljava/lang/String;
    sget-object v7, Lcom/facebook/react/devsupport/RedBoxDialog$OpenStackFrameTask;->JSON:Lokhttp3/MediaType;

    invoke-static {v7, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 212
    .local v7, "body":Lokhttp3/RequestBody;
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v8, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v8

    .line 213
    .local v8, "request":Lokhttp3/Request;
    invoke-virtual {v2, v8}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    invoke-interface {v9}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    nop

    .end local v5    # "frame":Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .end local v6    # "payload":Ljava/lang/String;
    .end local v7    # "body":Lokhttp3/RequestBody;
    .end local v8    # "request":Lokhttp3/Request;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "openStackFrameUrl":Ljava/lang/String;
    .end local v2    # "client":Lokhttp3/OkHttpClient;
    :cond_0
    goto :goto_1

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ReactNative"

    const-string v3, "Could not open stack frame"

    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method
