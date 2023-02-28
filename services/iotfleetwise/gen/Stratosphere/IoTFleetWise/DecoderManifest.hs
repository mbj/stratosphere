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
  = DecoderManifest {description :: (Prelude.Maybe (Value Prelude.Text)),
                     modelManifestArn :: (Value Prelude.Text),
                     name :: (Value Prelude.Text),
                     networkInterfaces :: (Prelude.Maybe [NetworkInterfacesItemsProperty]),
                     signalDecoders :: (Prelude.Maybe [SignalDecodersItemsProperty]),
                     status :: (Prelude.Maybe (Value Prelude.Text)),
                     tags :: (Prelude.Maybe [Tag])}
mkDecoderManifest ::
  Value Prelude.Text -> Value Prelude.Text -> DecoderManifest
mkDecoderManifest modelManifestArn name
  = DecoderManifest
      {modelManifestArn = modelManifestArn, name = name,
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
                              [(JSON..=) "Description" Prelude.<$> description,
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
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "NetworkInterfaces" Prelude.<$> networkInterfaces,
                  (JSON..=) "SignalDecoders" Prelude.<$> signalDecoders,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags])))
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