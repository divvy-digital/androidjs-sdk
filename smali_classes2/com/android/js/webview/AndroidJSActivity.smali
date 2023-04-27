.class public Lcom/android/js/webview/AndroidJSActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AndroidJSActivity.java"


# static fields
.field public static _startedNodeAlready:Z


# instance fields
.field public myWebView:Landroid/webkit/WebView;

.field private nodeThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    const-string v0, "node"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/js/webview/AndroidJSActivity;->_startedNodeAlready:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public configureWebview(I)V
    .locals 3
    .param p1, "iconId"    # I

    .line 71
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/js/common/JavaWebviewBridge;

    const-string v2, "com.android.js.webview.MainActivity"

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/android/js/common/JavaWebviewBridge;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;ILjava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 76
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 78
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 81
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/myapp/views/index.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/js/webview/AndroidJSActivity$2;

    invoke-direct {v1, p0}, Lcom/android/js/webview/AndroidJSActivity$2;-><init>(Lcom/android/js/webview/AndroidJSActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 114
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 118
    const-string v0, "AndroidJSActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 121
    nop

    .line 125
    invoke-virtual {p0}, Lcom/android/js/webview/AndroidJSActivity;->finishAndRemoveTask()V

    .line 126
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 127
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 131
    const-string v0, "AndroidJSActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 133
    return-void
.end method

.method public native startNodeWithArguments([Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public start_node(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 42
    sget-boolean v0, Lcom/android/js/webview/AndroidJSActivity;->_startedNodeAlready:Z

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/js/webview/AndroidJSActivity;->_startedNodeAlready:Z

    .line 44
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/js/webview/AndroidJSActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/android/js/webview/AndroidJSActivity$1;-><init>(Lcom/android/js/webview/AndroidJSActivity;Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->nodeThread:Ljava/lang/Thread;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 68
    :cond_0
    return-void
.end method
