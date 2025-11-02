module Stratosphere.IoTFleetWise.DecoderManifest (
        module Exports, DecoderManifest(..), mkDecoderManifest
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.DecoderManifest.NetworkInterfacesItemsProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.DecoderManifest.SignalDecodersItemsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DecoderManifest
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-decodermanifest.html>
    DecoderManifest {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-decodermanifest.html#cfn-iotfleetwise-decodermanifest-defaultforunmappedsignals>
                     defaultForUnmappedSignals :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-decodermanifest.html#cfn-iotfleetwise-decodermanifest-description>
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-decodermanifest.html#cfn-iotfleetwise-decodermanifest-modelmanifestarn>
                     modelManifestArn :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-decodermanifest.html#cfn-iotfleetwise-decodermanifest-name>
                     name :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-decodermanifest.html#cfn-iotfleetwise-decodermanifest-networkinterfaces>
                     networkInterfaces :: (Prelude.Maybe [NetworkInterfacesItemsProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-decodermanifest.html#cfn-iotfleetwise-decodermanifest-signaldecoders>
                     signalDecoders :: (Prelude.Maybe [SignalDecodersItemsProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-decodermanifest.html#cfn-iotfleetwise-decodermanifest-status>
                     status :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-decodermanifest.html#cfn-iotfleetwise-decodermanifest-tags>
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDecoderManifest ::
  Value Prelude.Text -> Value Prelude.Text -> DecoderManifest
mkDecoderManifest modelManifestArn name
  = DecoderManifest
      {haddock_workaround_ = (), modelManifestArn = modelManifestArn,
       name = name, defaultForUnmappedSignals = Prelude.Nothing,
       description = Prelude.Nothing, networkInterfaces = Prelude.Nothing,
       signalDecoders = Prelude.Nothing, status = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DecoderManifest where
  toResourceProperties DecoderManifest {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::DecoderManifest",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ModelManifestArn" JSON..= modelManifestArn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultForUnmappedSignals"
                                 Prelude.<$> defaultForUnmappedSignals,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "NetworkInterfaces" Prelude.<$> networkInterfaces,
                               (JSON..=) "SignalDecoders" Prelude.<$> signalDecoders,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DecoderManifest where
  toJSON DecoderManifest {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ModelManifestArn" JSON..= modelManifestArn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultForUnmappedSignals"
                    Prelude.<$> defaultForUnmappedSignals,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "NetworkInterfaces" Prelude.<$> networkInterfaces,
                  (JSON..=) "SignalDecoders" Prelude.<$> signalDecoders,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DefaultForUnmappedSignals" DecoderManifest where
  type PropertyType "DefaultForUnmappedSignals" DecoderManifest = Value Prelude.Text
  set newValue DecoderManifest {..}
    = DecoderManifest
        {defaultForUnmappedSignals = Prelude.pure newValue, ..}
instance Property "Description" DecoderManifest where
  type PropertyType "Description" DecoderManifest = Value Prelude.Text
  set newValue DecoderManifest {..}
    = DecoderManifest {description = Prelude.pure newValue, ..}
instance Property "ModelManifestArn" DecoderManifest where
  type PropertyType "ModelManifestArn" DecoderManifest = Value Prelude.Text
  set newValue DecoderManifest {..}
    = DecoderManifest {modelManifestArn = newValue, ..}
instance Property "Name" DecoderManifest where
  type PropertyType "Name" DecoderManifest = Value Prelude.Text
  set newValue DecoderManifest {..}
    = DecoderManifest {name = newValue, ..}
instance Property "NetworkInterfaces" DecoderManifest where
  type PropertyType "NetworkInterfaces" DecoderManifest = [NetworkInterfacesItemsProperty]
  set newValue DecoderManifest {..}
    = DecoderManifest {networkInterfaces = Prelude.pure newValue, ..}
instance Property "SignalDecoders" DecoderManifest where
  type PropertyType "SignalDecoders" DecoderManifest = [SignalDecodersItemsProperty]
  set newValue DecoderManifest {..}
    = DecoderManifest {signalDecoders = Prelude.pure newValue, ..}
instance Property "Status" DecoderManifest where
  type PropertyType "Status" DecoderManifest = Value Prelude.Text
  set newValue DecoderManifest {..}
    = DecoderManifest {status = Prelude.pure newValue, ..}
instance Property "Tags" DecoderManifest where
  type PropertyType "Tags" DecoderManifest = [Tag]
  set newValue DecoderManifest {..}
    = DecoderManifest {tags = Prelude.pure newValue, ..}