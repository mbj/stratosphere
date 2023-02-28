module Stratosphere.SageMaker.ModelCard.MetricDataItemsProperty (
        MetricDataItemsProperty(..), mkMetricDataItemsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricDataItemsProperty
  = MetricDataItemsProperty {name :: (Value Prelude.Text),
                             notes :: (Prelude.Maybe (Value Prelude.Text)),
                             type' :: (Value Prelude.Text),
                             value :: JSON.Object,
                             xAxisName :: (Prelude.Maybe (ValueList Prelude.Text)),
                             yAxisName :: (Prelude.Maybe (ValueList Prelude.Text))}
mkMetricDataItemsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> JSON.Object -> MetricDataItemsProperty
mkMetricDataItemsProperty name type' value
  = MetricDataItemsProperty
      {name = name, type' = type', value = value,
       notes = Prelude.Nothing, xAxisName = Prelude.Nothing,
       yAxisName = Prelude.Nothing}
instance ToResourceProperties MetricDataItemsProperty where
  toResourceProperties MetricDataItemsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.MetricDataItems",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type', "Value" JSON..= value]
                           (Prelude.catMaybes
                              [(JSON..=) "Notes" Prelude.<$> notes,
                               (JSON..=) "XAxisName" Prelude.<$> xAxisName,
                               (JSON..=) "YAxisName" Prelude.<$> yAxisName]))}
instance JSON.ToJSON MetricDataItemsProperty where
  toJSON MetricDataItemsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type', "Value" JSON..= value]
              (Prelude.catMaybes
                 [(JSON..=) "Notes" Prelude.<$> notes,
                  (JSON..=) "XAxisName" Prelude.<$> xAxisName,
                  (JSON..=) "YAxisName" Prelude.<$> yAxisName])))
instance Property "Name" MetricDataItemsProperty where
  type PropertyType "Name" MetricDataItemsProperty = Value Prelude.Text
  set newValue MetricDataItemsProperty {..}
    = MetricDataItemsProperty {name = newValue, ..}
instance Property "Notes" MetricDataItemsProperty where
  type PropertyType "Notes" MetricDataItemsProperty = Value Prelude.Text
  set newValue MetricDataItemsProperty {..}
    = MetricDataItemsProperty {notes = Prelude.pure newValue, ..}
instance Property "Type" MetricDataItemsProperty where
  type PropertyType "Type" MetricDataItemsProperty = Value Prelude.Text
  set newValue MetricDataItemsProperty {..}
    = MetricDataItemsProperty {type' = newValue, ..}
instance Property "Value" MetricDataItemsProperty where
  type PropertyType "Value" MetricDataItemsProperty = JSON.Object
  set newValue MetricDataItemsProperty {..}
    = MetricDataItemsProperty {value = newValue, ..}
instance Property "XAxisName" MetricDataItemsProperty where
  type PropertyType "XAxisName" MetricDataItemsProperty = ValueList Prelude.Text
  set newValue MetricDataItemsProperty {..}
    = MetricDataItemsProperty {xAxisName = Prelude.pure newValue, ..}
instance Property "YAxisName" MetricDataItemsProperty where
  type PropertyType "YAxisName" MetricDataItemsProperty = ValueList Prelude.Text
  set newValue MetricDataItemsProperty {..}
    = MetricDataItemsProperty {yAxisName = Prelude.pure newValue, ..}