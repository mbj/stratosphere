module Stratosphere.IoTFleetWise.Vehicle (
        Vehicle(..), mkVehicle
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Vehicle
  = Vehicle {associationBehavior :: (Prelude.Maybe (Value Prelude.Text)),
             attributes :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
             decoderManifestArn :: (Value Prelude.Text),
             modelManifestArn :: (Value Prelude.Text),
             name :: (Value Prelude.Text),
             tags :: (Prelude.Maybe [Tag])}
mkVehicle ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Vehicle
mkVehicle decoderManifestArn modelManifestArn name
  = Vehicle
      {decoderManifestArn = decoderManifestArn,
       modelManifestArn = modelManifestArn, name = name,
       associationBehavior = Prelude.Nothing,
       attributes = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Vehicle where
  toResourceProperties Vehicle {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Vehicle",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DecoderManifestArn" JSON..= decoderManifestArn,
                            "ModelManifestArn" JSON..= modelManifestArn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AssociationBehavior" Prelude.<$> associationBehavior,
                               (JSON..=) "Attributes" Prelude.<$> attributes,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Vehicle where
  toJSON Vehicle {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DecoderManifestArn" JSON..= decoderManifestArn,
               "ModelManifestArn" JSON..= modelManifestArn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AssociationBehavior" Prelude.<$> associationBehavior,
                  (JSON..=) "Attributes" Prelude.<$> attributes,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AssociationBehavior" Vehicle where
  type PropertyType "AssociationBehavior" Vehicle = Value Prelude.Text
  set newValue Vehicle {..}
    = Vehicle {associationBehavior = Prelude.pure newValue, ..}
instance Property "Attributes" Vehicle where
  type PropertyType "Attributes" Vehicle = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Vehicle {..}
    = Vehicle {attributes = Prelude.pure newValue, ..}
instance Property "DecoderManifestArn" Vehicle where
  type PropertyType "DecoderManifestArn" Vehicle = Value Prelude.Text
  set newValue Vehicle {..}
    = Vehicle {decoderManifestArn = newValue, ..}
instance Property "ModelManifestArn" Vehicle where
  type PropertyType "ModelManifestArn" Vehicle = Value Prelude.Text
  set newValue Vehicle {..}
    = Vehicle {modelManifestArn = newValue, ..}
instance Property "Name" Vehicle where
  type PropertyType "Name" Vehicle = Value Prelude.Text
  set newValue Vehicle {..} = Vehicle {name = newValue, ..}
instance Property "Tags" Vehicle where
  type PropertyType "Tags" Vehicle = [Tag]
  set newValue Vehicle {..}
    = Vehicle {tags = Prelude.pure newValue, ..}