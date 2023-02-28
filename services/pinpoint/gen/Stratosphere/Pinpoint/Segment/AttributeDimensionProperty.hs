module Stratosphere.Pinpoint.Segment.AttributeDimensionProperty (
        AttributeDimensionProperty(..), mkAttributeDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeDimensionProperty
  = AttributeDimensionProperty {attributeType :: (Prelude.Maybe (Value Prelude.Text)),
                                values :: (Prelude.Maybe (ValueList Prelude.Text))}
mkAttributeDimensionProperty :: AttributeDimensionProperty
mkAttributeDimensionProperty
  = AttributeDimensionProperty
      {attributeType = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties AttributeDimensionProperty where
  toResourceProperties AttributeDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Segment.AttributeDimension",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AttributeType" Prelude.<$> attributeType,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON AttributeDimensionProperty where
  toJSON AttributeDimensionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AttributeType" Prelude.<$> attributeType,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "AttributeType" AttributeDimensionProperty where
  type PropertyType "AttributeType" AttributeDimensionProperty = Value Prelude.Text
  set newValue AttributeDimensionProperty {..}
    = AttributeDimensionProperty
        {attributeType = Prelude.pure newValue, ..}
instance Property "Values" AttributeDimensionProperty where
  type PropertyType "Values" AttributeDimensionProperty = ValueList Prelude.Text
  set newValue AttributeDimensionProperty {..}
    = AttributeDimensionProperty {values = Prelude.pure newValue, ..}