module Stratosphere.CustomerProfiles.CalculatedAttributeDefinition.ConditionsProperty (
        module Exports, ConditionsProperty(..), mkConditionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.CalculatedAttributeDefinition.RangeProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.CalculatedAttributeDefinition.ThresholdProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionsProperty
  = ConditionsProperty {objectCount :: (Prelude.Maybe (Value Prelude.Integer)),
                        range :: (Prelude.Maybe RangeProperty),
                        threshold :: (Prelude.Maybe ThresholdProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionsProperty :: ConditionsProperty
mkConditionsProperty
  = ConditionsProperty
      {objectCount = Prelude.Nothing, range = Prelude.Nothing,
       threshold = Prelude.Nothing}
instance ToResourceProperties ConditionsProperty where
  toResourceProperties ConditionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::CalculatedAttributeDefinition.Conditions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ObjectCount" Prelude.<$> objectCount,
                            (JSON..=) "Range" Prelude.<$> range,
                            (JSON..=) "Threshold" Prelude.<$> threshold])}
instance JSON.ToJSON ConditionsProperty where
  toJSON ConditionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ObjectCount" Prelude.<$> objectCount,
               (JSON..=) "Range" Prelude.<$> range,
               (JSON..=) "Threshold" Prelude.<$> threshold]))
instance Property "ObjectCount" ConditionsProperty where
  type PropertyType "ObjectCount" ConditionsProperty = Value Prelude.Integer
  set newValue ConditionsProperty {..}
    = ConditionsProperty {objectCount = Prelude.pure newValue, ..}
instance Property "Range" ConditionsProperty where
  type PropertyType "Range" ConditionsProperty = RangeProperty
  set newValue ConditionsProperty {..}
    = ConditionsProperty {range = Prelude.pure newValue, ..}
instance Property "Threshold" ConditionsProperty where
  type PropertyType "Threshold" ConditionsProperty = ThresholdProperty
  set newValue ConditionsProperty {..}
    = ConditionsProperty {threshold = Prelude.pure newValue, ..}