module Stratosphere.MediaConnect.Flow.SourceProperty (
        module Exports, SourceProperty(..), mkSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.EncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.GatewayBridgeSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.MediaStreamSourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html>
    SourceProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-decryption>
                    decryption :: (Prelude.Maybe EncryptionProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-entitlementarn>
                    entitlementArn :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-gatewaybridgesource>
                    gatewayBridgeSource :: (Prelude.Maybe GatewayBridgeSourceProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-ingestip>
                    ingestIp :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-ingestport>
                    ingestPort :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-maxbitrate>
                    maxBitrate :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-maxlatency>
                    maxLatency :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-maxsyncbuffer>
                    maxSyncBuffer :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-mediastreamsourceconfigurations>
                    mediaStreamSourceConfigurations :: (Prelude.Maybe [MediaStreamSourceConfigurationProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-minlatency>
                    minLatency :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-name>
                    name :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-protocol>
                    protocol :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-sendercontrolport>
                    senderControlPort :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-senderipaddress>
                    senderIpAddress :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-sourcearn>
                    sourceArn :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-sourceingestport>
                    sourceIngestPort :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-sourcelisteneraddress>
                    sourceListenerAddress :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-sourcelistenerport>
                    sourceListenerPort :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-streamid>
                    streamId :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-vpcinterfacename>
                    vpcInterfaceName :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-source.html#cfn-mediaconnect-flow-source-whitelistcidr>
                    whitelistCidr :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceProperty :: SourceProperty
mkSourceProperty
  = SourceProperty
      {haddock_workaround_ = (), decryption = Prelude.Nothing,
       description = Prelude.Nothing, entitlementArn = Prelude.Nothing,
       gatewayBridgeSource = Prelude.Nothing, ingestIp = Prelude.Nothing,
       ingestPort = Prelude.Nothing, maxBitrate = Prelude.Nothing,
       maxLatency = Prelude.Nothing, maxSyncBuffer = Prelude.Nothing,
       mediaStreamSourceConfigurations = Prelude.Nothing,
       minLatency = Prelude.Nothing, name = Prelude.Nothing,
       protocol = Prelude.Nothing, senderControlPort = Prelude.Nothing,
       senderIpAddress = Prelude.Nothing, sourceArn = Prelude.Nothing,
       sourceIngestPort = Prelude.Nothing,
       sourceListenerAddress = Prelude.Nothing,
       sourceListenerPort = Prelude.Nothing, streamId = Prelude.Nothing,
       vpcInterfaceName = Prelude.Nothing,
       whitelistCidr = Prelude.Nothing}
instance ToResourceProperties SourceProperty where
  toResourceProperties SourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.Source",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Decryption" Prelude.<$> decryption,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "EntitlementArn" Prelude.<$> entitlementArn,
                            (JSON..=) "GatewayBridgeSource" Prelude.<$> gatewayBridgeSource,
                            (JSON..=) "IngestIp" Prelude.<$> ingestIp,
                            (JSON..=) "IngestPort" Prelude.<$> ingestPort,
                            (JSON..=) "MaxBitrate" Prelude.<$> maxBitrate,
                            (JSON..=) "MaxLatency" Prelude.<$> maxLatency,
                            (JSON..=) "MaxSyncBuffer" Prelude.<$> maxSyncBuffer,
                            (JSON..=) "MediaStreamSourceConfigurations"
                              Prelude.<$> mediaStreamSourceConfigurations,
                            (JSON..=) "MinLatency" Prelude.<$> minLatency,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Protocol" Prelude.<$> protocol,
                            (JSON..=) "SenderControlPort" Prelude.<$> senderControlPort,
                            (JSON..=) "SenderIpAddress" Prelude.<$> senderIpAddress,
                            (JSON..=) "SourceArn" Prelude.<$> sourceArn,
                            (JSON..=) "SourceIngestPort" Prelude.<$> sourceIngestPort,
                            (JSON..=) "SourceListenerAddress"
                              Prelude.<$> sourceListenerAddress,
                            (JSON..=) "SourceListenerPort" Prelude.<$> sourceListenerPort,
                            (JSON..=) "StreamId" Prelude.<$> streamId,
                            (JSON..=) "VpcInterfaceName" Prelude.<$> vpcInterfaceName,
                            (JSON..=) "WhitelistCidr" Prelude.<$> whitelistCidr])}
instance JSON.ToJSON SourceProperty where
  toJSON SourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Decryption" Prelude.<$> decryption,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "EntitlementArn" Prelude.<$> entitlementArn,
               (JSON..=) "GatewayBridgeSource" Prelude.<$> gatewayBridgeSource,
               (JSON..=) "IngestIp" Prelude.<$> ingestIp,
               (JSON..=) "IngestPort" Prelude.<$> ingestPort,
               (JSON..=) "MaxBitrate" Prelude.<$> maxBitrate,
               (JSON..=) "MaxLatency" Prelude.<$> maxLatency,
               (JSON..=) "MaxSyncBuffer" Prelude.<$> maxSyncBuffer,
               (JSON..=) "MediaStreamSourceConfigurations"
                 Prelude.<$> mediaStreamSourceConfigurations,
               (JSON..=) "MinLatency" Prelude.<$> minLatency,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Protocol" Prelude.<$> protocol,
               (JSON..=) "SenderControlPort" Prelude.<$> senderControlPort,
               (JSON..=) "SenderIpAddress" Prelude.<$> senderIpAddress,
               (JSON..=) "SourceArn" Prelude.<$> sourceArn,
               (JSON..=) "SourceIngestPort" Prelude.<$> sourceIngestPort,
               (JSON..=) "SourceListenerAddress"
                 Prelude.<$> sourceListenerAddress,
               (JSON..=) "SourceListenerPort" Prelude.<$> sourceListenerPort,
               (JSON..=) "StreamId" Prelude.<$> streamId,
               (JSON..=) "VpcInterfaceName" Prelude.<$> vpcInterfaceName,
               (JSON..=) "WhitelistCidr" Prelude.<$> whitelistCidr]))
instance Property "Decryption" SourceProperty where
  type PropertyType "Decryption" SourceProperty = EncryptionProperty
  set newValue SourceProperty {..}
    = SourceProperty {decryption = Prelude.pure newValue, ..}
instance Property "Description" SourceProperty where
  type PropertyType "Description" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {description = Prelude.pure newValue, ..}
instance Property "EntitlementArn" SourceProperty where
  type PropertyType "EntitlementArn" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {entitlementArn = Prelude.pure newValue, ..}
instance Property "GatewayBridgeSource" SourceProperty where
  type PropertyType "GatewayBridgeSource" SourceProperty = GatewayBridgeSourceProperty
  set newValue SourceProperty {..}
    = SourceProperty {gatewayBridgeSource = Prelude.pure newValue, ..}
instance Property "IngestIp" SourceProperty where
  type PropertyType "IngestIp" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {ingestIp = Prelude.pure newValue, ..}
instance Property "IngestPort" SourceProperty where
  type PropertyType "IngestPort" SourceProperty = Value Prelude.Integer
  set newValue SourceProperty {..}
    = SourceProperty {ingestPort = Prelude.pure newValue, ..}
instance Property "MaxBitrate" SourceProperty where
  type PropertyType "MaxBitrate" SourceProperty = Value Prelude.Integer
  set newValue SourceProperty {..}
    = SourceProperty {maxBitrate = Prelude.pure newValue, ..}
instance Property "MaxLatency" SourceProperty where
  type PropertyType "MaxLatency" SourceProperty = Value Prelude.Integer
  set newValue SourceProperty {..}
    = SourceProperty {maxLatency = Prelude.pure newValue, ..}
instance Property "MaxSyncBuffer" SourceProperty where
  type PropertyType "MaxSyncBuffer" SourceProperty = Value Prelude.Integer
  set newValue SourceProperty {..}
    = SourceProperty {maxSyncBuffer = Prelude.pure newValue, ..}
instance Property "MediaStreamSourceConfigurations" SourceProperty where
  type PropertyType "MediaStreamSourceConfigurations" SourceProperty = [MediaStreamSourceConfigurationProperty]
  set newValue SourceProperty {..}
    = SourceProperty
        {mediaStreamSourceConfigurations = Prelude.pure newValue, ..}
instance Property "MinLatency" SourceProperty where
  type PropertyType "MinLatency" SourceProperty = Value Prelude.Integer
  set newValue SourceProperty {..}
    = SourceProperty {minLatency = Prelude.pure newValue, ..}
instance Property "Name" SourceProperty where
  type PropertyType "Name" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {name = Prelude.pure newValue, ..}
instance Property "Protocol" SourceProperty where
  type PropertyType "Protocol" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {protocol = Prelude.pure newValue, ..}
instance Property "SenderControlPort" SourceProperty where
  type PropertyType "SenderControlPort" SourceProperty = Value Prelude.Integer
  set newValue SourceProperty {..}
    = SourceProperty {senderControlPort = Prelude.pure newValue, ..}
instance Property "SenderIpAddress" SourceProperty where
  type PropertyType "SenderIpAddress" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {senderIpAddress = Prelude.pure newValue, ..}
instance Property "SourceArn" SourceProperty where
  type PropertyType "SourceArn" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {sourceArn = Prelude.pure newValue, ..}
instance Property "SourceIngestPort" SourceProperty where
  type PropertyType "SourceIngestPort" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {sourceIngestPort = Prelude.pure newValue, ..}
instance Property "SourceListenerAddress" SourceProperty where
  type PropertyType "SourceListenerAddress" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty
        {sourceListenerAddress = Prelude.pure newValue, ..}
instance Property "SourceListenerPort" SourceProperty where
  type PropertyType "SourceListenerPort" SourceProperty = Value Prelude.Integer
  set newValue SourceProperty {..}
    = SourceProperty {sourceListenerPort = Prelude.pure newValue, ..}
instance Property "StreamId" SourceProperty where
  type PropertyType "StreamId" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {streamId = Prelude.pure newValue, ..}
instance Property "VpcInterfaceName" SourceProperty where
  type PropertyType "VpcInterfaceName" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {vpcInterfaceName = Prelude.pure newValue, ..}
instance Property "WhitelistCidr" SourceProperty where
  type PropertyType "WhitelistCidr" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {whitelistCidr = Prelude.pure newValue, ..}