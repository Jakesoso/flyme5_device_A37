.class public Lcom/android/server/storage/OppoDeviceStorageMonitorService;
.super Lcom/android/server/storage/DeviceStorageMonitorService;
.source "OppoDeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;
    }
.end annotation


# static fields
.field private static final ACT_A_KEY_MOVE:Ljava/lang/String; = "act_a_key_move"

.field private static final ACT_CLEAN_UP_FILE:Ljava/lang/String; = "act_clean_up_file"

.field private static final ACT_POP_UP:Ljava/lang/String; = "act_pop_up"

.field private static final ACT_UNINSTALL_APP:Ljava/lang/String; = "act_uninstall_app"

.field private static final ALLOW_UPLOAD_DCS:Z = true

.field private static final CLEAR_SCAN_MODE:Ljava/lang/String; = "DEEP_CLEAN"

.field private static final DEBUG_DEBUG_LOGV_MASK:I = 0x2

.field private static final DEBUG_LOCAL_LOGV_MASK:I = 0x1

.field private static final ID_DATA_FULL:Ljava/lang/String; = "dialog_data_full"

.field private static final ID_DATA_LOW:Ljava/lang/String; = "dialog_data_low_no_AKeyMove"

.field private static final ID_DATA_LOW_WITH_AKEYMOVE:Ljava/lang/String; = "dialog_data_low_with_AKeyMove"

.field private static final ID_DATA_SD_LOW_STATE:Ljava/lang/String; = "data_sd_low"

.field private static final ID_SD_LOW:Ljava/lang/String; = "dialog_sd_low"

.field private static final ID_SD_MOUNT_STATE:Ljava/lang/String; = "sd_mounted"

.field private static final MODE_DEEP:I = 0x2

.field private static final OPPO_DATA_CRITICAL_LOW:I = 0x2

.field private static final OPPO_DEFAULT_CHECK_INTERVAL:J = 0x7530L

.field private static final OPPO_DEVICE_SD_MONITOR:I = 0x1

.field private static final OPPO_LOW_SD_NOTIFICATION_ID:I = 0x3

.field private static final OPPO_MONITOR_INTERVAL:I = 0x1e

.field private static final OPPO_SHORT_CHECK_INTERVAL:J = 0x2710L

.field private static final OPPO_SHORT_INTERVAL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "OppoDeviceStorageMonitorService"

.field private static final TIMESTAMP_BOOT_COMPLETE:J = 0x1d4c0L

.field private static debugLOGV:Z

.field private static localLOGV:Z

.field private static mLogFlag:J


# instance fields
.field private final ACTION_OPPO_SDCARD_STORAGE_LOW:Ljava/lang/String;

.field private final ACTION_OPPO_SDCARD_STORAGE_OK:Ljava/lang/String;

.field private final ACTION_OPPO_STORAGE_MONITOR_DCS_UPLOADE:Ljava/lang/String;

.field private final DEFAULT_THRESHOLD_PERCENTAGE:I

.field private final GB_BYTES:J

.field private final MB_BYTES:J

.field private final OPPO_ACTION_FILE_CLEANUP:Ljava/lang/String;

.field private final OPPO_ACTION_ONE_KEY_MOVE:Ljava/lang/String;

.field private final OPPO_ACTION_SHOW_LOW_STORAGE_ALERT:Ljava/lang/String;

.field private final OPPO_FULL_THRESHOLD_MB:J

.field private final OPPO_SD_NOT_ENOUGH_MB:J

.field private final OPPO_SD_NOT_ENOUGH_TRIM_MB:J

.field private final REMINDER_INTERVAL:J

.field private firstboot:Z

.field private mBootStage:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCriticalLowDataFlag:Z

.field private mDialogData:Landroid/app/AlertDialog;

.field private mDialogDataCritical:Landroid/app/AlertDialog;

.field private mDialogSd:Landroid/app/AlertDialog;

.field private mExternalSdFileStats:Landroid/os/StatFs;

.field private mExternalSdPath:Ljava/lang/String;

.field private mFreeExternalSd:J

.field private mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIntentDcs:Landroid/content/Intent;

.field private mIntentFileCleanUP:Landroid/content/Intent;

.field private mIntentOneKeyMove:Landroid/content/Intent;

.field private mIntentPackageStorage:Landroid/content/Intent;

.field private mIsSdMounted:Z

.field private mLocaleChanged:Z

.field private mLowDataFlag:Z

.field private mLowSdFlag:Z

.field private mMountService:Landroid/os/storage/IMountService;

.field private mSdStartTrimThreshold:J

.field private mSdStorageLowIntent:Landroid/content/Intent;

.field private mSdStorageOkIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 66
    sput-boolean v0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->localLOGV:Z

    .line 67
    sput-boolean v0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->debugLOGV:Z

    .line 70
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLogFlag:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v7, 0x4000000

    const/high16 v6, 0x14000000

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 359
    invoke-direct {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    .line 97
    iput-boolean v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataFlag:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mCriticalLowDataFlag:Z

    .line 102
    iput-boolean v5, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->firstboot:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIsSdMounted:Z

    .line 104
    iput-boolean v5, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mBootStage:Z

    .line 105
    iput-boolean v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLocaleChanged:Z

    .line 120
    iput-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentDcs:Landroid/content/Intent;

    .line 121
    iput-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogData:Landroid/app/AlertDialog;

    .line 122
    iput-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogSd:Landroid/app/AlertDialog;

    .line 123
    iput-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogDataCritical:Landroid/app/AlertDialog;

    .line 125
    iput-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mMountService:Landroid/os/storage/IMountService;

    .line 128
    const-wide/32 v2, 0x100000

    iput-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->MB_BYTES:J

    .line 129
    const-wide/32 v2, 0x40000000

    iput-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->GB_BYTES:J

    .line 130
    const-wide/32 v2, 0x6400000

    iput-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OPPO_SD_NOT_ENOUGH_MB:J

    .line 131
    const-wide/32 v2, 0x3200000

    iput-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OPPO_SD_NOT_ENOUGH_TRIM_MB:J

    .line 132
    const-wide/32 v2, 0xa00000

    iput-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OPPO_FULL_THRESHOLD_MB:J

    .line 133
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->DEFAULT_THRESHOLD_PERCENTAGE:I

    .line 135
    const-wide/32 v2, 0xf731400

    iput-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->REMINDER_INTERVAL:J

    .line 138
    const-string v1, "com.oppo.cleandroid.ui.ClearMainActivity"

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OPPO_ACTION_FILE_CLEANUP:Ljava/lang/String;

    .line 139
    const-string v1, "com.oppo.showLowStorageAlert"

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OPPO_ACTION_SHOW_LOW_STORAGE_ALERT:Ljava/lang/String;

    .line 140
    const-string v1, "com.oppo.filemanager.akeytomove.AKeyToMoveActivity"

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OPPO_ACTION_ONE_KEY_MOVE:Ljava/lang/String;

    .line 141
    const-string v1, "android.intent.action.OPPO_STORAGE_MONITOR_DCS_UPLOADE"

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->ACTION_OPPO_STORAGE_MONITOR_DCS_UPLOADE:Ljava/lang/String;

    .line 143
    const-string v1, "android.intent.action.OPPO_SDCARD_STORAGE_LOW"

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->ACTION_OPPO_SDCARD_STORAGE_LOW:Ljava/lang/String;

    .line 144
    const-string v1, "android.intent.action.OPPO_SDCARD_STORAGE_OK"

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->ACTION_OPPO_SDCARD_STORAGE_OK:Ljava/lang/String;

    .line 317
    new-instance v1, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;-><init>(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 360
    iput-object p1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    .line 361
    sget-boolean v1, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->debugLOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoDeviceStorageMonitorService"

    const-string v2, "init!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "OppoDeviceStorageMonitor"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 363
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 364
    new-instance v1, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;-><init>(Lcom/android/server/storage/OppoDeviceStorageMonitorService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    .line 366
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 367
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v1, "com.oppo.showLowStorageAlert"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 372
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oppo.cleandroid.ui.ClearMainActivity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    .line 373
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    const-string v2, "enter_from"

    const-string v3, "StorageMonitor"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    const-string v2, "DEEP_CLEAN"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 378
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oppo.filemanager.akeytomove.AKeyToMoveActivity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentOneKeyMove:Landroid/content/Intent;

    .line 379
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentOneKeyMove:Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 382
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentPackageStorage:Landroid/content/Intent;

    .line 383
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentPackageStorage:Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 386
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPPO_SDCARD_STORAGE_LOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mSdStorageLowIntent:Landroid/content/Intent;

    .line 387
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mSdStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 388
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPPO_SDCARD_STORAGE_OK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mSdStorageOkIntent:Landroid/content/Intent;

    .line 389
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mSdStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 391
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mMountService:Landroid/os/storage/IMountService;

    .line 393
    invoke-static {p1}, Lcom/oppo/os/OppoUsbEnvironment;->getExternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    .line 394
    const-string v1, "OppoDeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mExternalSdPath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 396
    return-void
.end method

.method private OppoAlertDialogData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 557
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogData:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogData:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogData:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 559
    const-string v1, "OppoDeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OppoAlertDialogData: cancel old OppoAlertDialogData. mIsSdMounted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIsSdMounted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLowSdFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 565
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0xc04052c

    new-instance v2, Lcom/android/server/storage/OppoDeviceStorageMonitorService$4;

    invoke-direct {v2, p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$4;-><init>(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 579
    iget-boolean v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIsSdMounted:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    if-nez v1, :cond_1

    .line 580
    const v1, 0xc040548

    new-instance v2, Lcom/android/server/storage/OppoDeviceStorageMonitorService$5;

    invoke-direct {v2, p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$5;-><init>(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 589
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc040549

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 590
    const-string v1, "dialog_data_low_with_AKeyMove"

    const-string v2, "act_pop_up"

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->uploadDcsKvEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 615
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogData:Landroid/app/AlertDialog;

    .line 616
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogData:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 617
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogData:Landroid/app/AlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 618
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogData:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 619
    return-void

    .line 592
    :cond_1
    const v1, 0xc04052d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 593
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc040532

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 594
    const-string v1, "dialog_data_low_no_AKeyMove"

    const-string v2, "act_pop_up"

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->uploadDcsKvEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private OppoAlertDialogSd()V
    .locals 4

    .prologue
    .line 622
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogSd:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogSd:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogSd:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 624
    const-string v1, "OppoDeviceStorageMonitorService"

    const-string v2, "OppoAlertDialogSd: cacel old OppoAlertDialogSd"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 629
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc04052f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 630
    const v1, 0xc04052b

    new-instance v2, Lcom/android/server/storage/OppoDeviceStorageMonitorService$6;

    invoke-direct {v2, p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$6;-><init>(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 639
    const v1, 0xc04052d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 640
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogSd:Landroid/app/AlertDialog;

    .line 641
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogSd:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 642
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogSd:Landroid/app/AlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 643
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogSd:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 644
    const-string v1, "dialog_sd_low"

    const-string v2, "act_pop_up"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->uploadDcsKvEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 645
    return-void
.end method

.method private OppoCancelNotification(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 465
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 466
    .local v0, "mNotificationMgr":Landroid/app/NotificationManager;
    const/4 v1, 0x0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 467
    return-void
.end method

.method private final OppoCheckSD()V
    .locals 12

    .prologue
    const-wide/32 v10, 0x100000

    const/4 v8, 0x0

    .line 232
    const-wide/16 v0, 0x2710

    .line 234
    .local v0, "checkInterval":J
    iget-boolean v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mBootStage:Z

    if-eqz v3, :cond_0

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 236
    .local v4, "now":J
    const-wide/32 v6, 0x1d4c0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 237
    iput-boolean v8, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mBootStage:Z

    .line 238
    const-string v3, "OppoDeviceStorageMonitorService"

    const-string v6, "OppoCheckSD: now > TIMESTAMP_BOOT_COMPLETE"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentDcs:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 240
    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentDcs:Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 241
    const-string v3, "OppoDeviceStorageMonitorService"

    const-string v6, "OppoCheckSD: removeStickyBroadcastAsUser"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v4    # "now":J
    :cond_0
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoCheckSdMounted()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->restatSdDir()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 247
    const-wide/16 v0, 0x7530

    .line 249
    sget-boolean v3, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->localLOGV:Z

    if-eqz v3, :cond_1

    const-string v3, "OppoDeviceStorageMonitorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mFreeExternalSd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mFreeExternalSd:J

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1
    sget-boolean v3, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->localLOGV:Z

    if-eqz v3, :cond_2

    const-string v3, "OppoDeviceStorageMonitorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSdStartTrimThreshold = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mSdStartTrimThreshold:J

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_2
    const/4 v2, 0x0

    .line 252
    .local v2, "lowSdChanged":Z
    iget-wide v6, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mFreeExternalSd:J

    iget-wide v8, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mSdStartTrimThreshold:J

    cmp-long v3, v6, v8

    if-gez v3, :cond_6

    .line 253
    iget-boolean v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    if-nez v3, :cond_3

    .line 254
    const-string v3, "OppoDeviceStorageMonitorService"

    const-string v6, "OppoCheckSD: Running low on SDCARD. Sending notification"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->sdsendNotification()V

    .line 256
    const/4 v2, 0x1

    .line 265
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 266
    iget-boolean v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataFlag:Z

    if-eqz v3, :cond_4

    .line 267
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoCancelNotification(I)V

    .line 268
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoNotificationData()V

    .line 269
    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogData:Landroid/app/AlertDialog;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogData:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 270
    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogData:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 271
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoAlertDialogData()V

    .line 286
    .end local v2    # "lowSdChanged":Z
    :cond_4
    :goto_1
    sget-boolean v3, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->localLOGV:Z

    if-eqz v3, :cond_5

    const-string v3, "OppoDeviceStorageMonitorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Posting Message again. checkInterval="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoPostCheckSdMsg(J)V

    .line 288
    return-void

    .line 259
    .restart local v2    # "lowSdChanged":Z
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    if-eqz v3, :cond_3

    .line 260
    const-string v3, "OppoDeviceStorageMonitorService"

    const-string v6, "OppoCheckSD: SDCARD available. Cancelling notification"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->sdcancelNotification()V

    .line 262
    const/4 v2, 0x1

    goto :goto_0

    .line 276
    .end local v2    # "lowSdChanged":Z
    :cond_7
    iget-boolean v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    if-eqz v3, :cond_4

    .line 277
    iput-boolean v8, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    .line 278
    const-string v3, "OppoDeviceStorageMonitorService"

    const-string v6, "OppoCheckSD: SDCARD is removed. Cancelling notification"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->sdcancelNotification()V

    .line 280
    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogSd:Landroid/app/AlertDialog;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogSd:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 281
    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogSd:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_1
.end method

.method private OppoCheckSdMounted()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mMountService:Landroid/os/storage/IMountService;

    if-nez v4, :cond_0

    .line 191
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mMountService:Landroid/os/storage/IMountService;

    .line 192
    iget-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mMountService:Landroid/os/storage/IMountService;

    if-nez v4, :cond_0

    .line 193
    const-string v4, "OppoDeviceStorageMonitorService"

    const-string v5, "OppoCheckSdMounted: Unable to connect to mount service!!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return v3

    .line 198
    :cond_0
    iget-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 199
    iget-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oppo/os/OppoUsbEnvironment;->getExternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    .line 200
    iget-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 201
    const-string v4, "OppoDeviceStorageMonitorService"

    const-string v5, "OppoCheckSdMounted: mExternalSdPath is null!!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mMountService:Landroid/os/storage/IMountService;

    iget-object v5, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 213
    .local v1, "mountState":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->localLOGV:Z

    if-eqz v3, :cond_2

    const-string v3, "OppoDeviceStorageMonitorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OppoCheckSdMounted: mountState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_2
    const-string v3, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 215
    .local v2, "mounted":Z
    iget-boolean v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIsSdMounted:Z

    if-eq v2, v3, :cond_3

    .line 216
    iput-boolean v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIsSdMounted:Z

    .line 217
    const-string v3, "OppoDeviceStorageMonitorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OppoCheckSdMounted: mIsSdMounted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIsSdMounted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-boolean v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataFlag:Z

    if-eqz v3, :cond_3

    .line 219
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoCancelNotification(I)V

    .line 220
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoNotificationData()V

    .line 221
    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogData:Landroid/app/AlertDialog;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogData:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogData:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 223
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoAlertDialogData()V

    .line 228
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIsSdMounted:Z

    goto/16 :goto_0

    .line 209
    .end local v1    # "mountState":Ljava/lang/String;
    .end local v2    # "mounted":Z
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "OppoDeviceStorageMonitorService"

    const-string v5, "OppoCheckSdMounted: Failed to get volume state"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private OppoNotificationData()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 422
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 425
    .local v8, "mNotificationMgr":Landroid/app/NotificationManager;
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v2, 0xc040531

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 427
    .local v10, "title":Ljava/lang/CharSequence;
    iget-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIsSdMounted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.oppo.showLowStorageAlert"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v0, v1, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 430
    .local v7, "intent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v1, 0xc040533

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 437
    .local v6, "details":Ljava/lang/CharSequence;
    :goto_0
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    .line 438
    .local v9, "notification":Landroid/app/Notification;
    const v0, 0xc0804f4

    iput v0, v9, Landroid/app/Notification;->icon:I

    .line 439
    iput-object v10, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 440
    iget v0, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 441
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0, v10, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 442
    const/4 v0, 0x1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v0, v9, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 443
    return-void

    .line 432
    .end local v6    # "details":Ljava/lang/CharSequence;
    .end local v7    # "intent":Landroid/app/PendingIntent;
    .end local v9    # "notification":Landroid/app/Notification;
    :cond_0
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 434
    .restart local v7    # "intent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v1, 0xc040530

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "details":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private OppoNotificationSd()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 447
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 450
    .local v8, "mNotificationMgr":Landroid/app/NotificationManager;
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v2, 0xc04052e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 451
    .local v10, "title":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v2, 0xc040530

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 453
    .local v6, "details":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 456
    .local v7, "intent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    .line 457
    .local v9, "notification":Landroid/app/Notification;
    const v0, 0xc0804f4

    iput v0, v9, Landroid/app/Notification;->icon:I

    .line 458
    iput-object v10, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 459
    iget v0, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 460
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0, v10, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 461
    const/4 v0, 0x3

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v0, v9, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 462
    return-void
.end method

.method private OppoPostCheckSdMsg(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/4 v2, 0x1

    .line 291
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->removeMessages(I)V

    .line 292
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 293
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoCheckSD()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->dataCriticalLowAlert()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIsSdMounted:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentPackageStorage:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentOneKeyMove:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/storage/OppoDeviceStorageMonitorService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoCancelNotification(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoNotificationSd()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataFlag:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoNotificationData()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/storage/OppoDeviceStorageMonitorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLocaleChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoAlertDialogData()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/storage/OppoDeviceStorageMonitorService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->uploadDcsKvEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private dataCriticalLowAlert()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 490
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogDataCritical:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLocaleChanged:Z

    if-eqz v1, :cond_2

    .line 491
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLocaleChanged:Z

    if-eqz v1, :cond_1

    .line 492
    iput-boolean v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLocaleChanged:Z

    .line 495
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 497
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc04054b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 499
    const v1, 0xc04054c

    new-instance v2, Lcom/android/server/storage/OppoDeviceStorageMonitorService$2;

    invoke-direct {v2, p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$2;-><init>(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 510
    const v1, 0xc04052c

    new-instance v2, Lcom/android/server/storage/OppoDeviceStorageMonitorService$3;

    invoke-direct {v2, p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$3;-><init>(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 520
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogDataCritical:Landroid/app/AlertDialog;

    .line 521
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogDataCritical:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 522
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogDataCritical:Landroid/app/AlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 526
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogDataCritical:Landroid/app/AlertDialog;

    if-nez v1, :cond_4

    .line 527
    const-string v1, "OppoDeviceStorageMonitorService"

    const-string v2, "mDialogDataCritical is NULL"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_3
    :goto_0
    return-void

    .line 531
    :cond_4
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogDataCritical:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 533
    const-string v1, "ctsrunning"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_5

    .line 534
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogDataCritical:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 537
    :cond_5
    const-string v1, "OppoDeviceStorageMonitorService"

    const-string v2, "In CTS Running, do not show the no space dailog"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseLogMask([Ljava/lang/String;J)J
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 672
    move-wide v2, p2

    .line 674
    .local v2, "flag":J
    :try_start_0
    array-length v1, p1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 675
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "0x"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 676
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 684
    :cond_0
    :goto_0
    return-wide v2

    .line 678
    :cond_1
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private final restatSdDir()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 165
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->firstboot:Z

    if-eqz v4, :cond_1

    .line 166
    new-instance v4, Landroid/os/StatFs;

    iget-object v5, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdFileStats:Landroid/os/StatFs;

    .line 167
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->firstboot:Z

    .line 172
    :goto_0
    iget-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdFileStats:Landroid/os/StatFs;

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdFileStats:Landroid/os/StatFs;

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mFreeExternalSd:J

    .line 173
    const-wide/32 v4, 0x3200000

    iput-wide v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mSdStartTrimThreshold:J

    .line 175
    iget-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdFileStats:Landroid/os/StatFs;

    invoke-virtual {v4}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v2

    .line 176
    .local v2, "totalBytes":J
    sget-boolean v4, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->localLOGV:Z

    if-eqz v4, :cond_0

    const-string v4, "OppoDeviceStorageMonitorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restatSdDir: sd totalBytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    .line 178
    const-string v4, "OppoDeviceStorageMonitorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restatSdDir: sd totalBytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", stop check!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v2    # "totalBytes":J
    :goto_1
    return v1

    .line 169
    :cond_1
    iget-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdFileStats:Landroid/os/StatFs;

    iget-object v5, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "OppoDeviceStorageMonitorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restatSdDir: stop check!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 185
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "totalBytes":J
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private sdcancelNotification()V
    .locals 3

    .prologue
    .line 478
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoCancelNotification(I)V

    .line 479
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogSd:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogSd:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogSd:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 482
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    .line 484
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mSdStorageLowIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 485
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mSdStorageOkIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 487
    return-void
.end method

.method private sdsendNotification()V
    .locals 3

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoNotificationSd()V

    .line 471
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoAlertDialogSd()V

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    .line 473
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mSdStorageLowIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 475
    return-void
.end method

.method private updateLogMask(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 688
    sget-wide v4, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLogFlag:J

    invoke-direct {p0, p2, v4, v5}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->parseLogMask([Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLogFlag:J

    .line 690
    sget-wide v4, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLogFlag:J

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    cmp-long v0, v4, v10

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->localLOGV:Z

    .line 691
    sget-wide v4, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLogFlag:J

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    cmp-long v0, v4, v10

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->debugLOGV:Z

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLogFlag=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLogFlag:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 693
    const-string v0, "  localLOGV(0x%1$h)=%2$b"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    sget-boolean v4, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->localLOGV:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 694
    const-string v0, "  debugLOGV(0x%1$h)=%2$b"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    sget-boolean v2, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->debugLOGV:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 695
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    return-void

    :cond_0
    move v0, v2

    .line 690
    goto :goto_0

    :cond_1
    move v0, v2

    .line 691
    goto :goto_1
.end method

.method private uploadDcsKvEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "act"    # Ljava/lang/String;
    .param p3, "force"    # Z

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mCriticalLowDataFlag:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 649
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPPO_STORAGE_MONITOR_DCS_UPLOADE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentDcs:Landroid/content/Intent;

    .line 650
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentDcs:Landroid/content/Intent;

    const-string v1, "eventId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentDcs:Landroid/content/Intent;

    const-string v1, "act"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentDcs:Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 653
    iget-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mBootStage:Z

    if-eqz v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentDcs:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 663
    :cond_1
    :goto_0
    return-void

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentDcs:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method


# virtual methods
.method cancelDataCriticalLow()V
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mCriticalLowDataFlag:Z

    .line 554
    return-void
.end method

.method cancelNotification()V
    .locals 2

    .prologue
    .line 411
    invoke-super {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelNotification()V

    .line 412
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogData:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogData:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialogData:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 415
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataFlag:Z

    .line 417
    const-string v0, "OppoDeviceStorageMonitorService"

    const-string v1, "Canceling low data notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 700
    invoke-super {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->dumpImpl(Ljava/io/PrintWriter;)V

    .line 702
    const-string v0, "Current OppoDeviceStorageMonitor state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    const-string v0, "  mFreeExternalSd="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mFreeExternalSd:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    const-string v0, "  mSdStartTrimThreshold="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mSdStartTrimThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    const-string v0, "  mLowSdFlag="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 708
    return-void
.end method

.method sendDataCriticalLow()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 543
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->removeMessages(I)V

    .line 545
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 549
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mCriticalLowDataFlag:Z

    .line 550
    return-void

    .line 547
    :cond_0
    const-string v0, "OppoDeviceStorageMonitorService"

    const-string v1, "sendDataCriticalLow: mHandler is null!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sendNotification()V
    .locals 4

    .prologue
    .line 400
    const/16 v0, 0xab9

    iget-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v0, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 401
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoNotificationData()V

    .line 402
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoAlertDialogData()V

    .line 403
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataFlag:Z

    .line 406
    const-string v0, "OppoDeviceStorageMonitorService"

    const-string v1, "Sending low data notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void
.end method
