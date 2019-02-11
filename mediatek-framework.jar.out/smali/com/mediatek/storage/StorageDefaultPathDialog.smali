.class public Lcom/mediatek/storage/StorageDefaultPathDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "StorageDefaultPathDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/storage/StorageDefaultPathDialog$StorageDefaultPathDialogHandler;
    }
.end annotation


# static fields
.field private static final INSERT_OTG:Ljava/lang/String; = "insert_otg"

.field private static final TAG:Ljava/lang/String; = "StorageDefaultPathDialog"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInsertOtg:Ljava/lang/Boolean;

.field private mSDCardStateFilter:Landroid/content/IntentFilter;

.field private final mSDStateReceiver:Landroid/content/BroadcastReceiver;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->path:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mInsertOtg:Ljava/lang/Boolean;

    .line 87
    new-instance v0, Lcom/mediatek/storage/StorageDefaultPathDialog$1;

    invoke-direct {v0, p0}, Lcom/mediatek/storage/StorageDefaultPathDialog$1;-><init>(Lcom/mediatek/storage/StorageDefaultPathDialog;)V

    iput-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDStateReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    return-void
.end method

.method private createDialog()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x5

    .line 144
    iget-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 145
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v1, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mInsertOtg:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x8050083

    invoke-virtual {p0, v1}, Lcom/mediatek/storage/StorageDefaultPathDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 147
    invoke-direct {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 149
    iput v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 150
    iput v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 151
    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 152
    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 153
    const v1, 0x1040013

    invoke-virtual {p0, v1}, Lcom/mediatek/storage/StorageDefaultPathDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 154
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 155
    const v1, 0x1040009

    invoke-virtual {p0, v1}, Lcom/mediatek/storage/StorageDefaultPathDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 156
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 157
    invoke-virtual {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->setupAlert()V

    .line 158
    return-void

    .line 145
    :cond_0
    const v1, 0x8050077

    invoke-virtual {p0, v1}, Lcom/mediatek/storage/StorageDefaultPathDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, "messageView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 163
    const v1, 0x8050078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 164
    return-object v0
.end method

.method private onCancel()V
    .locals 0

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->finish()V

    .line 200
    return-void
.end method

.method private onOK()V
    .locals 3

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const/high16 v1, 0x54000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 191
    const-string v1, "StorageDefaultPathDialog"

    const-string v2, "onOK() start activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0, v0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->startActivity(Landroid/content/Intent;)V

    .line 193
    invoke-virtual {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->finish()V

    .line 194
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 203
    packed-switch p2, :pswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 205
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->onOK()V

    goto :goto_0

    .line 208
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->onCancel()V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const-string v3, "StorageDefaultPathDialog"

    const-string v4, "StorageDefaultPathDialog onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    .line 114
    iget-object v3, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    const-string v4, "file"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 118
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "StorageDefaultPathDialog"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 120
    new-instance v3, Lcom/mediatek/storage/StorageDefaultPathDialog$StorageDefaultPathDialogHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/mediatek/storage/StorageDefaultPathDialog$StorageDefaultPathDialogHandler;-><init>(Lcom/mediatek/storage/StorageDefaultPathDialog;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mHandler:Landroid/os/Handler;

    .line 121
    const-string v3, "StorageDefaultPathDialog"

    const-string v4, "registerReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v3, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/mediatek/storage/StorageDefaultPathDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "insert_otg"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mInsertOtg:Ljava/lang/Boolean;

    .line 124
    const-string v2, ""

    .line 125
    .local v2, "state":Ljava/lang/String;
    const-string v3, "storage"

    invoke-virtual {p0, v3}, Lcom/mediatek/storage/StorageDefaultPathDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 126
    .local v1, "sm":Landroid/os/storage/StorageManager;
    if-nez v1, :cond_0

    .line 127
    const-string v3, "StorageDefaultPathDialog"

    const-string v4, "sm is null, not show dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v3, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mInsertOtg:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    const-string v3, "/storage/usbotg"

    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    :goto_1
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 135
    const-string v3, "StorageDefaultPathDialog"

    const-string v4, "state is not mounted, not show dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->finish()V

    goto :goto_0

    .line 132
    :cond_1
    const-string v3, "/storage/sdcard1"

    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 138
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->createDialog()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "StorageDefaultPathDialog"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 177
    const-string v0, "StorageDefaultPathDialog"

    const-string v1, "unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 184
    const-string v0, "StorageDefaultPathDialog"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "StorageDefaultPathDialog"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 171
    return-void
.end method
