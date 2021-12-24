.class public Lcom/android/js/webview/AndroidJSActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AndroidJSActivity.java"


# static fields
.field public static _startedNodeAlready:Z


# instance fields
.field public myWebView:Landroid/webkit/WebView;

.field private nodeThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-lib"

    .line 26
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "node"

    .line 27
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/android/js/webview/AndroidJSActivity;->_startedNodeAlready:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public configureWebview(I)V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/js/common/JavaWebviewBridge;

    const-string v2, "com.android.js.webview.MainActivity"

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/android/js/common/JavaWebviewBridge;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;ILjava/lang/String;)V

    const-string p1, "android"

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 72
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 73
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 74
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 75
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 76
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 77
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 78
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 79
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 80
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 81
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    const-string v0, "file:///android_asset/myapp/views/index.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/android/js/webview/AndroidJSActivity$2;

    invoke-direct {v0, p0}, Lcom/android/js/webview/AndroidJSActivity$2;-><init>(Lcom/android/js/webview/AndroidJSActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "AndroidJSActivity"

    const-string v1, "onPause"

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 114
    iget-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->nodeThread:Ljava/lang/Thread;

    .line 118
    invoke-virtual {p0}, Lcom/android/js/webview/AndroidJSActivity;->finishAndRemoveTask()V

    const/4 v0, 0x0

    .line 119
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "AndroidJSActivity"

    const-string v1, "onStop"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public native startNodeWithArguments([Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public start_node(Landroid/app/Activity;)V
    .locals 2

    .line 40
    sget-boolean v0, Lcom/android/js/webview/AndroidJSActivity;->_startedNodeAlready:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 41
    sput-boolean v0, Lcom/android/js/webview/AndroidJSActivity;->_startedNodeAlready:Z

    .line 42
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/js/webview/AndroidJSActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/android/js/webview/AndroidJSActivity$1;-><init>(Lcom/android/js/webview/AndroidJSActivity;Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/js/webview/AndroidJSActivity;->nodeThread:Ljava/lang/Thread;

    .line 64
    iget-object p1, p0, Lcom/android/js/webview/AndroidJSActivity;->nodeThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
