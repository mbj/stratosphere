module Stratosphere.IoT.ThingGroup (
        module Exports, ThingGroup(..), mkThingGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.ThingGroup.ThingGroupPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ThingGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thinggroup.html>
    ThingGroup {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thinggroup.html#cfn-iot-thinggroup-parentgroupname>
                parentGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thinggroup.html#cfn-iot-thinggroup-querystring>
                queryString :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thinggroup.html#cfn-iot-thinggroup-tags>
                tags :: (Prelude.Maybe [Tag]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thinggroup.html#cfn-iot-thinggroup-thinggroupname>
                thingGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thinggroup.html#cfn-iot-thinggroup-thinggroupproperties>
                thingGroupProperties :: (Prelude.Maybe ThingGroupPropertiesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThingGroup :: ThingGroup
mkThingGroup
  = ThingGroup
      {haddock_workaround_ = (), parentGroupName = Prelude.Nothing,
       queryString = Prelude.Nothing, tags = Prelude.Nothing,
       thingGroupName = Prelude.Nothing,
       thingGroupProperties = Prelude.Nothing}
instance ToResourceProperties ThingGroup where
  toResourceProperties ThingGroup {..}
    = ResourceProperties
        {awsType = "AWS::IoT::ThingGroup", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ParentGroupName" Prelude.<$> parentGroupName,
                            (JSON..=) "QueryString" Prelude.<$> queryString,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "ThingGroupName" Prelude.<$> thingGroupName,
                            (JSON..=) "ThingGroupProperties"
                              Prelude.<$> thingGroupProperties])}
instance JSON.ToJSON ThingGroup where
  toJSON ThingGroup {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ParentGroupName" Prelude.<$> parentGroupName,
               (JSON..=) "QueryString" Prelude.<$> queryString,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "ThingGroupName" Prelude.<$> thingGroupName,
               (JSON..=) "ThingGroupProperties"
                 Prelude.<$> thingGroupProperties]))
instance Property "ParentGroupName" ThingGroup where
  type PropertyType "ParentGroupName" ThingGroup = Value Prelude.Text
  set newValue ThingGroup {..}
    = ThingGroup {parentGroupName = Prelude.pure newValue, ..}
instance Property "QueryString" ThingGroup where
  type PropertyType "QueryString" ThingGroup = Value Prelude.Text
  set newValue ThingGroup {..}
    = ThingGroup {queryString = Prelude.pure newValue, ..}
instance Property "Tags" ThingGroup where
  type PropertyType "Tags" ThingGroup = [Tag]
  set newValue ThingGroup {..}
    = ThingGroup {tags = Prelude.pure newValue, ..}
instance Property "ThingGroupName" ThingGroup where
  type PropertyType "ThingGroupName" ThingGroup = Value Prelude.Text
  set newValue ThingGroup {..}
    = ThingGroup {thingGroupName = Prelude.pure newValue, ..}
instance Property "ThingGroupProperties" ThingGroup where
  type PropertyType "ThingGroupProperties" ThingGroup = ThingGroupPropertiesProperty
  set newValue ThingGroup {..}
    = ThingGroup {thingGroupProperties = Prelude.pure newValue, ..}