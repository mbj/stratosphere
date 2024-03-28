module Stratosphere.FSx.Volume.RetentionPeriodProperty (
        RetentionPeriodProperty(..), mkRetentionPeriodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetentionPeriodProperty
  = RetentionPeriodProperty {type' :: (Value Prelude.Text),
                             value :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetentionPeriodProperty ::
  Value Prelude.Text -> RetentionPeriodProperty
mkRetentionPeriodProperty type'
  = RetentionPeriodProperty {type' = type', value = Prelude.Nothing}
instance ToResourceProperties RetentionPeriodProperty where
  toResourceProperties RetentionPeriodProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Volume.RetentionPeriod",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON RetentionPeriodProperty where
  toJSON RetentionPeriodProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])))
instance Property "Type" RetentionPeriodProperty where
  type PropertyType "Type" RetentionPeriodProperty = Value Prelude.Text
  set newValue RetentionPeriodProperty {..}
    = RetentionPeriodProperty {type' = newValue, ..}
instance Property "Value" RetentionPeriodProperty where
  type PropertyType "Value" RetentionPeriodProperty = Value Prelude.Integer
  set newValue RetentionPeriodProperty {..}
    = RetentionPeriodProperty {value = Prelude.pure newValue, ..}