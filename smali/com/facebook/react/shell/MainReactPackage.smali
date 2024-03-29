.class public Lcom/facebook/react/shell/MainReactPackage;
.super Lcom/facebook/react/LazyReactPackage;
.source "MainReactPackage.java"


# instance fields
.field private mConfig:Lcom/facebook/react/shell/MainPackageConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/facebook/react/LazyReactPackage;-><init>()V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/shell/MainPackageConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/facebook/react/shell/MainPackageConfig;

    .line 114
    invoke-direct {p0}, Lcom/facebook/react/LazyReactPackage;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/facebook/react/shell/MainReactPackage;->mConfig:Lcom/facebook/react/shell/MainPackageConfig;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/shell/MainReactPackage;)Lcom/facebook/react/shell/MainPackageConfig;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/shell/MainReactPackage;

    .line 104
    iget-object v0, p0, Lcom/facebook/react/shell/MainReactPackage;->mConfig:Lcom/facebook/react/shell/MainPackageConfig;

    return-object v0
.end method


# virtual methods
.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v0, "viewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    invoke-static {}, Lcom/facebook/react/views/art/ARTRenderableViewManager;->createARTGroupViewManager()Lcom/facebook/react/views/art/ARTRenderableViewManager;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-static {}, Lcom/facebook/react/views/art/ARTRenderableViewManager;->createARTShapeViewManager()Lcom/facebook/react/views/art/ARTRenderableViewManager;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-static {}, Lcom/facebook/react/views/art/ARTRenderableViewManager;->createARTTextViewManager()Lcom/facebook/react/views/art/ARTRenderableViewManager;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v1, Lcom/facebook/react/views/checkbox/ReactCheckBoxManager;

    invoke-direct {v1}, Lcom/facebook/react/views/checkbox/ReactCheckBoxManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v1, Lcom/facebook/react/views/picker/ReactDialogPickerManager;

    invoke-direct {v1}, Lcom/facebook/react/views/picker/ReactDialogPickerManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v1, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;

    invoke-direct {v1}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v1, Lcom/facebook/react/views/picker/ReactDropdownPickerManager;

    invoke-direct {v1}, Lcom/facebook/react/views/picker/ReactDropdownPickerManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v1, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v1, Lcom/facebook/react/views/scroll/ReactScrollViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/scroll/ReactScrollViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v1, Lcom/facebook/react/views/slider/ReactSliderManager;

    invoke-direct {v1}, Lcom/facebook/react/views/slider/ReactSliderManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v1, Lcom/facebook/react/views/switchview/ReactSwitchManager;

    invoke-direct {v1}, Lcom/facebook/react/views/switchview/ReactSwitchManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v1, Lcom/facebook/react/views/toolbar/ReactToolbarManager;

    invoke-direct {v1}, Lcom/facebook/react/views/toolbar/ReactToolbarManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    new-instance v1, Lcom/facebook/react/views/webview/ReactWebViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/webview/ReactWebViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v1, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;

    invoke-direct {v1}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v1, Lcom/facebook/react/views/art/ARTSurfaceViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/art/ARTSurfaceViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v1, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v1, Lcom/facebook/react/views/image/ReactImageManager;

    invoke-direct {v1}, Lcom/facebook/react/views/image/ReactImageManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v1, Lcom/facebook/react/views/modal/ReactModalHostManager;

    invoke-direct {v1}, Lcom/facebook/react/views/modal/ReactModalHostManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v1, Lcom/facebook/react/views/text/ReactRawTextManager;

    invoke-direct {v1}, Lcom/facebook/react/views/text/ReactRawTextManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v1, Lcom/facebook/react/views/textinput/ReactTextInputManager;

    invoke-direct {v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v1, Lcom/facebook/react/views/text/ReactTextViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/text/ReactTextViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v1, Lcom/facebook/react/views/view/ReactViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/view/ReactViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    new-instance v1, Lcom/facebook/react/views/viewpager/ReactViewPagerManager;

    invoke-direct {v1}, Lcom/facebook/react/views/viewpager/ReactViewPagerManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v1, Lcom/facebook/react/views/text/ReactVirtualTextViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/text/ReactVirtualTextViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    return-object v0
.end method

.method public getNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/ModuleSpec;",
            ">;"
        }
    .end annotation

    .line 120
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/facebook/react/bridge/ModuleSpec;

    const-class v1, Lcom/facebook/react/modules/accessibilityinfo/AccessibilityInfoModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$1;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$1;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 121
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/appstate/AppStateModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$2;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$2;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 129
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/blob/BlobModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$3;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$3;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 137
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/blob/FileReaderModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$4;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$4;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 145
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/storage/AsyncStorageModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$5;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$5;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 153
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/camera/CameraRollManager;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$6;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$6;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 161
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/clipboard/ClipboardModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$7;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$7;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 169
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/datepicker/DatePickerDialogModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$8;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$8;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 177
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/dialog/DialogModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$9;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$9;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 185
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/fresco/FrescoModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$10;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$10;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 193
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$11;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$11;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 202
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/camera/ImageEditingManager;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$12;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$12;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 210
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/image/ImageLoaderModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$13;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$13;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 218
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/camera/ImageStoreManager;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$14;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$14;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 226
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/intent/IntentModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$15;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$15;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 234
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/location/LocationModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$16;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$16;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 242
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/animated/NativeAnimatedModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$17;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$17;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 250
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/network/NetworkingModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$18;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$18;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 258
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/netinfo/NetInfoModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$19;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$19;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 266
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/permissions/PermissionsModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$20;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$20;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 274
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/share/ShareModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$21;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$21;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 282
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/statusbar/StatusBarModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$22;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$22;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 290
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/timepicker/TimePickerDialogModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$23;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$23;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 298
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/toast/ToastModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$24;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$24;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 306
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/vibration/VibrationModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$25;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$25;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 314
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-class v1, Lcom/facebook/react/modules/websocket/WebSocketModule;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$26;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/shell/MainReactPackage$26;-><init>(Lcom/facebook/react/shell/MainReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 322
    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ModuleSpec;->nativeModuleSpec(Ljava/lang/Class;Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 120
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    .locals 1

    .line 371
    invoke-static {p0}, Lcom/facebook/react/LazyReactPackage;->getReactModuleInfoProviderViaReflection(Lcom/facebook/react/LazyReactPackage;)Lcom/facebook/react/module/model/ReactModuleInfoProvider;

    move-result-object v0

    return-object v0
.end method
