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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-vehicle.html>
    Vehicle {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-vehicle.html#cfn-iotfleetwise-vehicle-associationbehavior>
             associationBehavior :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-vehicle.html#cfn-iotfleetwise-vehicle-attributes>
             attributes :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-vehicle.html#cfn-iotfleetwise-vehicle-decodermanifestarn>
             decoderManifestArn :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-vehicle.html#cfn-iotfleetwise-vehicle-modelmanifestarn>
             modelManifestArn :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-vehicle.html#cfn-iotfleetwise-vehicle-name>
             name :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-vehicle.html#cfn-iotfleetwise-vehicle-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVehicle ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Vehicle
mkVehicle decoderManifestArn modelManifestArn name
  = Vehicle
      {haddock_workaround_ = (), decoderManifestArn = decoderManifestArn,
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