module Stratosphere.QuickSight.Dashboard.AttributeAggregationFunctionProperty (
        AttributeAggregationFunctionProperty(..),
        mkAttributeAggregationFunctionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeAggregationFunctionProperty
  = AttributeAggregationFunctionProperty {simpleAttributeAggregation :: (Prelude.Maybe (Value Prelude.Text)),
                                          valueForMultipleValues :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAttributeAggregationFunctionProperty ::
  AttributeAggregationFunctionProperty
mkAttributeAggregationFunctionProperty
  = AttributeAggregationFunctionProperty
      {simpleAttributeAggregation = Prelude.Nothing,
       valueForMultipleValues = Prelude.Nothing}
instance ToResourceProperties AttributeAggregationFunctionProperty where
  toResourceProperties AttributeAggregationFunctionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.AttributeAggregationFunction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SimpleAttributeAggregation"
                              Prelude.<$> simpleAttributeAggregation,
                            (JSON..=) "ValueForMultipleValues"
                              Prelude.<$> valueForMultipleValues])}
instance JSON.ToJSON AttributeAggregationFunctionProperty where
  toJSON AttributeAggregationFunctionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SimpleAttributeAggregation"
                 Prelude.<$> simpleAttributeAggregation,
               (JSON..=) "ValueForMultipleValues"
                 Prelude.<$> valueForMultipleValues]))
instance Property "SimpleAttributeAggregation" AttributeAggregationFunctionProperty where
  type PropertyType "SimpleAttributeAggregation" AttributeAggregationFunctionProperty = Value Prelude.Text
  set newValue AttributeAggregationFunctionProperty {..}
    = AttributeAggregationFunctionProperty
        {simpleAttributeAggregation = Prelude.pure newValue, ..}
instance Property "ValueForMultipleValues" AttributeAggregationFunctionProperty where
  type PropertyType "ValueForMultipleValues" AttributeAggregationFunctionProperty = Value Prelude.Text
  set newValue AttributeAggregationFunctionProperty {..}
    = AttributeAggregationFunctionProperty
        {valueForMultipleValues = Prelude.pure newValue, ..}