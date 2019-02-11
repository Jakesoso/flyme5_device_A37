.class public interface abstract Landroid/widget/SearchView$OnSearchViewClickListener;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "Suying.You@Plf.SDK : Add for SearchView animation"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSearchViewClickListener"
.end annotation


# virtual methods
.method public abstract onSearchViewClick()V
.end method
