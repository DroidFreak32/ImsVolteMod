.class Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsServiceSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeocoderTask"
.end annotation


# instance fields
.field final MAX_RESULTS:I

.field private latitude:D

.field private longitude:D

.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;DD)V
    .locals 0
    .param p2, "lat"    # D
    .param p4, "lon"    # D

    .line 1974
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1972
    const/4 p1, 0x1

    iput p1, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->MAX_RESULTS:I

    .line 1975
    iput-wide p2, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->latitude:D

    .line 1976
    iput-wide p4, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->longitude:D

    .line 1977
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1986
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$800(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1987
    const/4 v0, 0x0

    .line 1988
    .local v0, "address":Landroid/location/Address;
    const/4 v1, 0x0

    .line 1989
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1990
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const-string v3, "handleGeolocationRequest :: Geocoder not present!"

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsServiceSub;->access$400(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_2

    .line 1992
    :cond_0
    new-instance v4, Landroid/location/Geocoder;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$4300(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 1994
    .local v4, "gc":Landroid/location/Geocoder;
    :try_start_0
    iget-wide v5, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->latitude:D

    iget-wide v7, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->longitude:D

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1999
    :goto_0
    goto :goto_1

    .line 1997
    :catch_0
    move-exception v2

    .line 1998
    .local v2, "iox":Ljava/io/IOException;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " :: Error getting Addresses from GeoCoder!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/codeaurora/ims/ImsServiceSub;->access$400(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .end local v2    # "iox":Ljava/io/IOException;
    goto :goto_1

    .line 1995
    :catch_1
    move-exception v2

    .line 1996
    .local v2, "iex":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " :: Invalid latitude or longitude value!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/codeaurora/ims/ImsServiceSub;->access$400(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .end local v2    # "iex":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 2000
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2006
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/location/Address;

    goto :goto_2

    .line 2008
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " :: Error getting Addresses from GeoCoder!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsServiceSub;->access$400(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2011
    .end local v4    # "gc":Landroid/location/Geocoder;
    :goto_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v5, v2, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-wide v6, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->latitude:D

    iget-wide v8, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->longitude:D

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    .line 2012
    invoke-static {v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$900(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 2011
    move-object v10, v0

    invoke-virtual/range {v5 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->sendGeolocationInfo(DDLandroid/location/Address;Landroid/os/Message;)V

    .line 2013
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeocoderTask [lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " | long="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
