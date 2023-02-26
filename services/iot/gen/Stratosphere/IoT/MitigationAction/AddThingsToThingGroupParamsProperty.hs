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
  = AddThingsToThingGroupParamsProperty {overrideDynamicGroups :: (Prelude.Maybe (Value Prelude.Bool)),
                                         thingGroupNames :: (ValueList Prelude.Text)}
mkAddThingsToThingGroupParamsProperty ::
  ValueList Prelude.Text -> AddThingsToThingGroupParamsProperty
mkAddThingsToThingGroupParamsProperty thingGroupNames
  = AddThingsToThingGroupParamsProperty
      {thingGroupNames = thingGroupNames,
       overrideDynamicGroups = Prelude.Nothing}
instance ToResourceProperties AddThingsToThingGroupParamsProperty where
  toResourceProperties AddThingsToThingGroupParamsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::MitigationAction.AddThingsToThingGroupParams",
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