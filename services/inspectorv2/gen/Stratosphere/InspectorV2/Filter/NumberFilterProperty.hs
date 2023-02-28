module Stratosphere.InspectorV2.Filter.NumberFilterProperty (
        NumberFilterProperty(..), mkNumberFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NumberFilterProperty
  = NumberFilterProperty {lowerInclusive :: (Prelude.Maybe (Value Prelude.Double)),
                          upperInclusive :: (Prelude.Maybe (Value Prelude.Double))}
mkNumberFilterProperty :: NumberFilterProperty
mkNumberFilterProperty
  = NumberFilterProperty
      {lowerInclusive = Prelude.Nothing,
       upperInclusive = Prelude.Nothing}
instance ToResourceProperties NumberFilterProperty where
  toResourceProperties NumberFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::Filter.NumberFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LowerInclusive" Prelude.<$> lowerInclusive,
                            (JSON..=) "UpperInclusive" Prelude.<$> upperInclusive])}
instance JSON.ToJSON NumberFilterProperty where
  toJSON NumberFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LowerInclusive" Prelude.<$> lowerInclusive,
               (JSON..=) "UpperInclusive" Prelude.<$> upperInclusive]))
instance Property "LowerInclusive" NumberFilterProperty where
  type PropertyType "LowerInclusive" NumberFilterProperty = Value Prelude.Double
  set newValue NumberFilterProperty {..}
    = NumberFilterProperty {lowerInclusive = Prelude.pure newValue, ..}
instance Property "UpperInclusive" NumberFilterProperty where
  type PropertyType "UpperInclusive" NumberFilterProperty = Value Prelude.Double
  set newValue NumberFilterProperty {..}
    = NumberFilterProperty {upperInclusive = Prelude.pure newValue, ..}