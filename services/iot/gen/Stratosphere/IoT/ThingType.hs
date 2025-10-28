module Stratosphere.IoT.ThingType (
        module Exports, ThingType(..), mkThingType
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.ThingType.ThingTypePropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ThingType
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingtype.html>
    ThingType {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingtype.html#cfn-iot-thingtype-deprecatethingtype>
               deprecateThingType :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingtype.html#cfn-iot-thingtype-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingtype.html#cfn-iot-thingtype-thingtypename>
               thingTypeName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingtype.html#cfn-iot-thingtype-thingtypeproperties>
               thingTypeProperties :: (Prelude.Maybe ThingTypePropertiesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThingType :: ThingType
mkThingType
  = ThingType
      {haddock_workaround_ = (), deprecateThingType = Prelude.Nothing,
       tags = Prelude.Nothing, thingTypeName = Prelude.Nothing,
       thingTypeProperties = Prelude.Nothing}
instance ToResourceProperties ThingType where
  toResourceProperties ThingType {..}
    = ResourceProperties
        {awsType = "AWS::IoT::ThingType", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeprecateThingType" Prelude.<$> deprecateThingType,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "ThingTypeName" Prelude.<$> thingTypeName,
                            (JSON..=) "ThingTypeProperties" Prelude.<$> thingTypeProperties])}
instance JSON.ToJSON ThingType where
  toJSON ThingType {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeprecateThingType" Prelude.<$> deprecateThingType,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "ThingTypeName" Prelude.<$> thingTypeName,
               (JSON..=) "ThingTypeProperties" Prelude.<$> thingTypeProperties]))
instance Property "DeprecateThingType" ThingType where
  type PropertyType "DeprecateThingType" ThingType = Value Prelude.Bool
  set newValue ThingType {..}
    = ThingType {deprecateThingType = Prelude.pure newValue, ..}
instance Property "Tags" ThingType where
  type PropertyType "Tags" ThingType = [Tag]
  set newValue ThingType {..}
    = ThingType {tags = Prelude.pure newValue, ..}
instance Property "ThingTypeName" ThingType where
  type PropertyType "ThingTypeName" ThingType = Value Prelude.Text
  set newValue ThingType {..}
    = ThingType {thingTypeName = Prelude.pure newValue, ..}
instance Property "ThingTypeProperties" ThingType where
  type PropertyType "ThingTypeProperties" ThingType = ThingTypePropertiesProperty
  set newValue ThingType {..}
    = ThingType {thingTypeProperties = Prelude.pure newValue, ..}