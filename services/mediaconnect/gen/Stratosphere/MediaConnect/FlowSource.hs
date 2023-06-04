module Stratosphere.MediaConnect.FlowSource (
        module Exports, FlowSource(..), mkFlowSource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.FlowSource.EncryptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowSource
  = FlowSource {decryption :: (Prelude.Maybe EncryptionProperty),
                description :: (Value Prelude.Text),
                entitlementArn :: (Prelude.Maybe (Value Prelude.Text)),
                flowArn :: (Prelude.Maybe (Value Prelude.Text)),
                ingestPort :: (Prelude.Maybe (Value Prelude.Integer)),
                maxBitrate :: (Prelude.Maybe (Value Prelude.Integer)),
                maxLatency :: (Prelude.Maybe (Value Prelude.Integer)),
                minLatency :: (Prelude.Maybe (Value Prelude.Integer)),
                name :: (Value Prelude.Text),
                protocol :: (Prelude.Maybe (Value Prelude.Text)),
                senderControlPort :: (Prelude.Maybe (Value Prelude.Integer)),
                senderIpAddress :: (Prelude.Maybe (Value Prelude.Text)),
                sourceListenerAddress :: (Prelude.Maybe (Value Prelude.Text)),
                sourceListenerPort :: (Prelude.Maybe (Value Prelude.Integer)),
                streamId :: (Prelude.Maybe (Value Prelude.Text)),
                vpcInterfaceName :: (Prelude.Maybe (Value Prelude.Text)),
                whitelistCidr :: (Prelude.Maybe (Value Prelude.Text))}
mkFlowSource ::
  Value Prelude.Text -> Value Prelude.Text -> FlowSource
mkFlowSource description name
  = FlowSource
      {description = description, name = name,
       decryption = Prelude.Nothing, entitlementArn = Prelude.Nothing,
       flowArn = Prelude.Nothing, ingestPort = Prelude.Nothing,
       maxBitrate = Prelude.Nothing, maxLatency = Prelude.Nothing,
       minLatency = Prelude.Nothing, protocol = Prelude.Nothing,
       senderControlPort = Prelude.Nothing,
       senderIpAddress = Prelude.Nothing,
       sourceListenerAddress = Prelude.Nothing,
       sourceListenerPort = Prelude.Nothing, streamId = Prelude.Nothing,
       vpcInterfaceName = Prelude.Nothing,
       whitelistCidr = Prelude.Nothing}
instance ToResourceProperties FlowSource where
  toResourceProperties FlowSource {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::FlowSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Description" JSON..= description, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Decryption" Prelude.<$> decryption,
                               (JSON..=) "EntitlementArn" Prelude.<$> entitlementArn,
                               (JSON..=) "FlowArn" Prelude.<$> flowArn,
                               (JSON..=) "IngestPort" Prelude.<$> ingestPort,
                               (JSON..=) "MaxBitrate" Prelude.<$> maxBitrate,
                               (JSON..=) "MaxLatency" Prelude.<$> maxLatency,
                               (JSON..=) "MinLatency" Prelude.<$> minLatency,
                               (JSON..=) "Protocol" Prelude.<$> protocol,
                               (JSON..=) "SenderControlPort" Prelude.<$> senderControlPort,
                               (JSON..=) "SenderIpAddress" Prelude.<$> senderIpAddress,
                               (JSON..=) "SourceListenerAddress"
                                 Prelude.<$> sourceListenerAddress,
                               (JSON..=) "SourceListenerPort" Prelude.<$> sourceListenerPort,
                               (JSON..=) "StreamId" Prelude.<$> streamId,
                               (JSON..=) "VpcInterfaceName" Prelude.<$> vpcInterfaceName,
                               (JSON..=) "WhitelistCidr" Prelude.<$> whitelistCidr]))}
instance JSON.ToJSON FlowSource where
  toJSON FlowSource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Description" JSON..= description, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Decryption" Prelude.<$> decryption,
                  (JSON..=) "EntitlementArn" Prelude.<$> entitlementArn,
                  (JSON..=) "FlowArn" Prelude.<$> flowArn,
                  (JSON..=) "IngestPort" Prelude.<$> ingestPort,
                  (JSON..=) "MaxBitrate" Prelude.<$> maxBitrate,
                  (JSON..=) "MaxLatency" Prelude.<$> maxLatency,
                  (JSON..=) "MinLatency" Prelude.<$> minLatency,
                  (JSON..=) "Protocol" Prelude.<$> protocol,
                  (JSON..=) "SenderControlPort" Prelude.<$> senderControlPort,
                  (JSON..=) "SenderIpAddress" Prelude.<$> senderIpAddress,
                  (JSON..=) "SourceListenerAddress"
                    Prelude.<$> sourceListenerAddress,
                  (JSON..=) "SourceListenerPort" Prelude.<$> sourceListenerPort,
                  (JSON..=) "StreamId" Prelude.<$> streamId,
                  (JSON..=) "VpcInterfaceName" Prelude.<$> vpcInterfaceName,
                  (JSON..=) "WhitelistCidr" Prelude.<$> whitelistCidr])))
instance Property "Decryption" FlowSource where
  type PropertyType "Decryption" FlowSource = EncryptionProperty
  set newValue FlowSource {..}
    = FlowSource {decryption = Prelude.pure newValue, ..}
instance Property "Description" FlowSource where
  type PropertyType "Description" FlowSource = Value Prelude.Text
  set newValue FlowSource {..}
    = FlowSource {description = newValue, ..}
instance Property "EntitlementArn" FlowSource where
  type PropertyType "EntitlementArn" FlowSource = Value Prelude.Text
  set newValue FlowSource {..}
    = FlowSource {entitlementArn = Prelude.pure newValue, ..}
instance Property "FlowArn" FlowSource where
  type PropertyType "FlowArn" FlowSource = Value Prelude.Text
  set newValue FlowSource {..}
    = FlowSource {flowArn = Prelude.pure newValue, ..}
instance Property "IngestPort" FlowSource where
  type PropertyType "IngestPort" FlowSource = Value Prelude.Integer
  set newValue FlowSource {..}
    = FlowSource {ingestPort = Prelude.pure newValue, ..}
instance Property "MaxBitrate" FlowSource where
  type PropertyType "MaxBitrate" FlowSource = Value Prelude.Integer
  set newValue FlowSource {..}
    = FlowSource {maxBitrate = Prelude.pure newValue, ..}
instance Property "MaxLatency" FlowSource where
  type PropertyType "MaxLatency" FlowSource = Value Prelude.Integer
  set newValue FlowSource {..}
    = FlowSource {maxLatency = Prelude.pure newValue, ..}
instance Property "MinLatency" FlowSource where
  type PropertyType "MinLatency" FlowSource = Value Prelude.Integer
  set newValue FlowSource {..}
    = FlowSource {minLatency = Prelude.pure newValue, ..}
instance Property "Name" FlowSource where
  type PropertyType "Name" FlowSource = Value Prelude.Text
  set newValue FlowSource {..} = FlowSource {name = newValue, ..}
instance Property "Protocol" FlowSource where
  type PropertyType "Protocol" FlowSource = Value Prelude.Text
  set newValue FlowSource {..}
    = FlowSource {protocol = Prelude.pure newValue, ..}
instance Property "SenderControlPort" FlowSource where
  type PropertyType "SenderControlPort" FlowSource = Value Prelude.Integer
  set newValue FlowSource {..}
    = FlowSource {senderControlPort = Prelude.pure newValue, ..}
instance Property "SenderIpAddress" FlowSource where
  type PropertyType "SenderIpAddress" FlowSource = Value Prelude.Text
  set newValue FlowSource {..}
    = FlowSource {senderIpAddress = Prelude.pure newValue, ..}
instance Property "SourceListenerAddress" FlowSource where
  type PropertyType "SourceListenerAddress" FlowSource = Value Prelude.Text
  set newValue FlowSource {..}
    = FlowSource {sourceListenerAddress = Prelude.pure newValue, ..}
instance Property "SourceListenerPort" FlowSource where
  type PropertyType "SourceListenerPort" FlowSource = Value Prelude.Integer
  set newValue FlowSource {..}
    = FlowSource {sourceListenerPort = Prelude.pure newValue, ..}
instance Property "StreamId" FlowSource where
  type PropertyType "StreamId" FlowSource = Value Prelude.Text
  set newValue FlowSource {..}
    = FlowSource {streamId = Prelude.pure newValue, ..}
instance Property "VpcInterfaceName" FlowSource where
  type PropertyType "VpcInterfaceName" FlowSource = Value Prelude.Text
  set newValue FlowSource {..}
    = FlowSource {vpcInterfaceName = Prelude.pure newValue, ..}
instance Property "WhitelistCidr" FlowSource where
  type PropertyType "WhitelistCidr" FlowSource = Value Prelude.Text
  set newValue FlowSource {..}
    = FlowSource {whitelistCidr = Prelude.pure newValue, ..}