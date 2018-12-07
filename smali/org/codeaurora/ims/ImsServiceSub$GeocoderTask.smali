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

    .line 1891
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1889
    const/4 p1, 0x1

    iput p1, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->MAX_RESULTS:I

    .line 1892
    iput-wide p2, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->latitude:D

    .line 1893
    iput-wide p4, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->longitude:D

    .line 1894
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1904
    const/4 v0, 0x0

    .line 1905
    .local v0, "address":Landroid/location/Address;
    const/4 v1, 0x0

    .line 1906
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1907
    const-string v2, "handleGeolocationRequest :: Geocoder not present!"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1909
    :cond_0
    new-instance v3, Landroid/location/Geocoder;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$3900(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 1911
    .local v3, "gc":Landroid/location/Geocoder;
    :try_start_0
    iget-wide v4, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->latitude:D

    iget-wide v6, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->longitude:D

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1916
    :goto_0
    goto :goto_1

    .line 1914
    :catch_0
    move-exception v2

    .line 1915
    .local v2, "iox":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " :: Error getting Addresses from GeoCoder!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v2    # "iox":Ljava/io/IOException;
    goto :goto_1

    .line 1912
    :catch_1
    move-exception v2

    .line 1913
    .local v2, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " :: Invalid latitude or longitude value!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v2    # "iex":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 1917
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1923
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/location/Address;

    goto :goto_2

    .line 1925
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " :: Error getting Addresses from GeoCoder!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1928
    .end local v3    # "gc":Landroid/location/Geocoder;
    :goto_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v4, v2, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-wide v5, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->latitude:D

    iget-wide v7, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->longitude:D

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    .line 1929
    invoke-static {v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$600(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1928
    move-object v9, v0

    invoke-virtual/range {v4 .. v10}, Lorg/codeaurora/ims/ImsSenderRxr;->sendGeolocationInfo(DDLandroid/location/Address;Landroid/os/Message;)V

    .line 1930
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1898
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
