module Stratosphere.IoT.ThingType.ThingTypePropertiesProperty (
        module Exports, ThingTypePropertiesProperty(..),
        mkThingTypePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.ThingType.Mqtt5ConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThingTypePropertiesProperty
  = ThingTypePropertiesProperty {mqtt5Configuration :: (Prelude.Maybe Mqtt5ConfigurationProperty),
                                 searchableAttributes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 thingTypeDescription :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThingTypePropertiesProperty :: ThingTypePropertiesProperty
mkThingTypePropertiesProperty
  = ThingTypePropertiesProperty
      {mqtt5Configuration = Prelude.Nothing,
       searchableAttributes = Prelude.Nothing,
       thingTypeDescription = Prelude.Nothing}
instance ToResourceProperties ThingTypePropertiesProperty where
  toResourceProperties ThingTypePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::ThingType.ThingTypeProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Mqtt5Configuration" Prelude.<$> mqtt5Configuration,
                            (JSON..=) "SearchableAttributes" Prelude.<$> searchableAttributes,
                            (JSON..=) "ThingTypeDescription"
                              Prelude.<$> thingTypeDescription])}
instance JSON.ToJSON ThingTypePropertiesProperty where
  toJSON ThingTypePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Mqtt5Configuration" Prelude.<$> mqtt5Configuration,
               (JSON..=) "SearchableAttributes" Prelude.<$> searchableAttributes,
               (JSON..=) "ThingTypeDescription"
                 Prelude.<$> thingTypeDescription]))
instance Property "Mqtt5Configuration" ThingTypePropertiesProperty where
  type PropertyType "Mqtt5Configuration" ThingTypePropertiesProperty = Mqtt5ConfigurationProperty
  set newValue ThingTypePropertiesProperty {..}
    = ThingTypePropertiesProperty
        {mqtt5Configuration = Prelude.pure newValue, ..}
instance Property "SearchableAttributes" ThingTypePropertiesProperty where
  type PropertyType "SearchableAttributes" ThingTypePropertiesProperty = ValueList Prelude.Text
  set newValue ThingTypePropertiesProperty {..}
    = ThingTypePropertiesProperty
        {searchableAttributes = Prelude.pure newValue, ..}
instance Property "ThingTypeDescription" ThingTypePropertiesProperty where
  type PropertyType "ThingTypeDescription" ThingTypePropertiesProperty = Value Prelude.Text
  set newValue ThingTypePropertiesProperty {..}
    = ThingTypePropertiesProperty
        {thingTypeDescription = Prelude.pure newValue, ..}