module Stratosphere.IoT.MitigationAction.AddThingsToThingGroupParamsProperty (
        AddThingsToThingGroupParamsProperty(..),
        mkAddThingsToThingGroupParamsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AddThingsToThingGroupParamsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-addthingstothinggroupparams.html>
    AddThingsToThingGroupParamsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-addthingstothinggroupparams.html#cfn-iot-mitigationaction-addthingstothinggroupparams-overridedynamicgroups>
                                         overrideDynamicGroups :: (Prelude.Maybe (Value Prelude.Bool)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-addthingstothinggroupparams.html#cfn-iot-mitigationaction-addthingstothinggroupparams-thinggroupnames>
                                         thingGroupNames :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAddThingsToThingGroupParamsProperty ::
  ValueList Prelude.Text -> AddThingsToThingGroupParamsProperty
mkAddThingsToThingGroupParamsProperty thingGroupNames
  = AddThingsToThingGroupParamsProperty
      {haddock_workaround_ = (), thingGroupNames = thingGroupNames,
       overrideDynamicGroups = Prelude.Nothing}
instance ToResourceProperties AddThingsToThingGroupParamsProperty where
  toResourceProperties AddThingsToThingGroupParamsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::MitigationAction.AddThingsToThingGroupParams",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ThingGroupNames" JSON..= thingGroupNames]
                           (Prelude.catMaybes
                              [(JSON..=) "OverrideDynamicGroups"
                                 Prelude.<$> overrideDynamicGroups]))}
instance JSON.ToJSON AddThingsToThingGroupParamsProperty where
  toJSON AddThingsToThingGroupParamsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ThingGroupNames" JSON..= thingGroupNames]
              (Prelude.catMaybes
                 [(JSON..=) "OverrideDynamicGroups"
                    Prelude.<$> overrideDynamicGroups])))
instance Property "OverrideDynamicGroups" AddThingsToThingGroupParamsProperty where
  type PropertyType "OverrideDynamicGroups" AddThingsToThingGroupParamsProperty = Value Prelude.Bool
  set newValue AddThingsToThingGroupParamsProperty {..}
    = AddThingsToThingGroupParamsProperty
        {overrideDynamicGroups = Prelude.pure newValue, ..}
instance Property "ThingGroupNames" AddThingsToThingGroupParamsProperty where
  type PropertyType "ThingGroupNames" AddThingsToThingGroupParamsProperty = ValueList Prelude.Text
  set newValue AddThingsToThingGroupParamsProperty {..}
    = AddThingsToThingGroupParamsProperty
        {thingGroupNames = newValue, ..}