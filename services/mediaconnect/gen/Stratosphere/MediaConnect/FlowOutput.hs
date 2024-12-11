module Stratosphere.MediaConnect.FlowOutput (
        module Exports, FlowOutput(..), mkFlowOutput
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.FlowOutput.EncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.FlowOutput.MediaStreamOutputConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.FlowOutput.VpcInterfaceAttachmentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowOutput
  = FlowOutput {cidrAllowList :: (Prelude.Maybe (ValueList Prelude.Text)),
                description :: (Prelude.Maybe (Value Prelude.Text)),
                destination :: (Prelude.Maybe (Value Prelude.Text)),
                encryption :: (Prelude.Maybe EncryptionProperty),
                flowArn :: (Value Prelude.Text),
                maxLatency :: (Prelude.Maybe (Value Prelude.Integer)),
                mediaStreamOutputConfigurations :: (Prelude.Maybe [MediaStreamOutputConfigurationProperty]),
                minLatency :: (Prelude.Maybe (Value Prelude.Integer)),
                name :: (Prelude.Maybe (Value Prelude.Text)),
                outputStatus :: (Prelude.Maybe (Value Prelude.Text)),
                port :: (Prelude.Maybe (Value Prelude.Integer)),
                protocol :: (Value Prelude.Text),
                remoteId :: (Prelude.Maybe (Value Prelude.Text)),
                smoothingLatency :: (Prelude.Maybe (Value Prelude.Integer)),
                streamId :: (Prelude.Maybe (Value Prelude.Text)),
                vpcInterfaceAttachment :: (Prelude.Maybe VpcInterfaceAttachmentProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowOutput ::
  Value Prelude.Text -> Value Prelude.Text -> FlowOutput
mkFlowOutput flowArn protocol
  = FlowOutput
      {flowArn = flowArn, protocol = protocol,
       cidrAllowList = Prelude.Nothing, description = Prelude.Nothing,
       destination = Prelude.Nothing, encryption = Prelude.Nothing,
       maxLatency = Prelude.Nothing,
       mediaStreamOutputConfigurations = Prelude.Nothing,
       minLatency = Prelude.Nothing, name = Prelude.Nothing,
       outputStatus = Prelude.Nothing, port = Prelude.Nothing,
       remoteId = Prelude.Nothing, smoothingLatency = Prelude.Nothing,
       streamId = Prelude.Nothing,
       vpcInterfaceAttachment = Prelude.Nothing}
instance ToResourceProperties FlowOutput where
  toResourceProperties FlowOutput {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::FlowOutput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FlowArn" JSON..= flowArn, "Protocol" JSON..= protocol]
                           (Prelude.catMaybes
                              [(JSON..=) "CidrAllowList" Prelude.<$> cidrAllowList,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Destination" Prelude.<$> destination,
                               (JSON..=) "Encryption" Prelude.<$> encryption,
                               (JSON..=) "MaxLatency" Prelude.<$> maxLatency,
                               (JSON..=) "MediaStreamOutputConfigurations"
                                 Prelude.<$> mediaStreamOutputConfigurations,
                               (JSON..=) "MinLatency" Prelude.<$> minLatency,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "OutputStatus" Prelude.<$> outputStatus,
                               (JSON..=) "Port" Prelude.<$> port,
                               (JSON..=) "RemoteId" Prelude.<$> remoteId,
                               (JSON..=) "SmoothingLatency" Prelude.<$> smoothingLatency,
                               (JSON..=) "StreamId" Prelude.<$> streamId,
                               (JSON..=) "VpcInterfaceAttachment"
                                 Prelude.<$> vpcInterfaceAttachment]))}
instance JSON.ToJSON FlowOutput where
  toJSON FlowOutput {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FlowArn" JSON..= flowArn, "Protocol" JSON..= protocol]
              (Prelude.catMaybes
                 [(JSON..=) "CidrAllowList" Prelude.<$> cidrAllowList,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Destination" Prelude.<$> destination,
                  (JSON..=) "Encryption" Prelude.<$> encryption,
                  (JSON..=) "MaxLatency" Prelude.<$> maxLatency,
                  (JSON..=) "MediaStreamOutputConfigurations"
                    Prelude.<$> mediaStreamOutputConfigurations,
                  (JSON..=) "MinLatency" Prelude.<$> minLatency,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "OutputStatus" Prelude.<$> outputStatus,
                  (JSON..=) "Port" Prelude.<$> port,
                  (JSON..=) "RemoteId" Prelude.<$> remoteId,
                  (JSON..=) "SmoothingLatency" Prelude.<$> smoothingLatency,
                  (JSON..=) "StreamId" Prelude.<$> streamId,
                  (JSON..=) "VpcInterfaceAttachment"
                    Prelude.<$> vpcInterfaceAttachment])))
instance Property "CidrAllowList" FlowOutput where
  type PropertyType "CidrAllowList" FlowOutput = ValueList Prelude.Text
  set newValue FlowOutput {..}
    = FlowOutput {cidrAllowList = Prelude.pure newValue, ..}
instance Property "Description" FlowOutput where
  type PropertyType "Description" FlowOutput = Value Prelude.Text
  set newValue FlowOutput {..}
    = FlowOutput {description = Prelude.pure newValue, ..}
instance Property "Destination" FlowOutput where
  type PropertyType "Destination" FlowOutput = Value Prelude.Text
  set newValue FlowOutput {..}
    = FlowOutput {destination = Prelude.pure newValue, ..}
instance Property "Encryption" FlowOutput where
  type PropertyType "Encryption" FlowOutput = EncryptionProperty
  set newValue FlowOutput {..}
    = FlowOutput {encryption = Prelude.pure newValue, ..}
instance Property "FlowArn" FlowOutput where
  type PropertyType "FlowArn" FlowOutput = Value Prelude.Text
  set newValue FlowOutput {..} = FlowOutput {flowArn = newValue, ..}
instance Property "MaxLatency" FlowOutput where
  type PropertyType "MaxLatency" FlowOutput = Value Prelude.Integer
  set newValue FlowOutput {..}
    = FlowOutput {maxLatency = Prelude.pure newValue, ..}
instance Property "MediaStreamOutputConfigurations" FlowOutput where
  type PropertyType "MediaStreamOutputConfigurations" FlowOutput = [MediaStreamOutputConfigurationProperty]
  set newValue FlowOutput {..}
    = FlowOutput
        {mediaStreamOutputConfigurations = Prelude.pure newValue, ..}
instance Property "MinLatency" FlowOutput where
  type PropertyType "MinLatency" FlowOutput = Value Prelude.Integer
  set newValue FlowOutput {..}
    = FlowOutput {minLatency = Prelude.pure newValue, ..}
instance Property "Name" FlowOutput where
  type PropertyType "Name" FlowOutput = Value Prelude.Text
  set newValue FlowOutput {..}
    = FlowOutput {name = Prelude.pure newValue, ..}
instance Property "OutputStatus" FlowOutput where
  type PropertyType "OutputStatus" FlowOutput = Value Prelude.Text
  set newValue FlowOutput {..}
    = FlowOutput {outputStatus = Prelude.pure newValue, ..}
instance Property "Port" FlowOutput where
  type PropertyType "Port" FlowOutput = Value Prelude.Integer
  set newValue FlowOutput {..}
    = FlowOutput {port = Prelude.pure newValue, ..}
instance Property "Protocol" FlowOutput where
  type PropertyType "Protocol" FlowOutput = Value Prelude.Text
  set newValue FlowOutput {..} = FlowOutput {protocol = newValue, ..}
instance Property "RemoteId" FlowOutput where
  type PropertyType "RemoteId" FlowOutput = Value Prelude.Text
  set newValue FlowOutput {..}
    = FlowOutput {remoteId = Prelude.pure newValue, ..}
instance Property "SmoothingLatency" FlowOutput where
  type PropertyType "SmoothingLatency" FlowOutput = Value Prelude.Integer
  set newValue FlowOutput {..}
    = FlowOutput {smoothingLatency = Prelude.pure newValue, ..}
instance Property "StreamId" FlowOutput where
  type PropertyType "StreamId" FlowOutput = Value Prelude.Text
  set newValue FlowOutput {..}
    = FlowOutput {streamId = Prelude.pure newValue, ..}
instance Property "VpcInterfaceAttachment" FlowOutput where
  type PropertyType "VpcInterfaceAttachment" FlowOutput = VpcInterfaceAttachmentProperty
  set newValue FlowOutput {..}
    = FlowOutput {vpcInterfaceAttachment = Prelude.pure newValue, ..}