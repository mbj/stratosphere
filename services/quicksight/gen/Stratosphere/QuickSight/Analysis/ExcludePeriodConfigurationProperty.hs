module Stratosphere.QuickSight.Analysis.ExcludePeriodConfigurationProperty (
        ExcludePeriodConfigurationProperty(..),
        mkExcludePeriodConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExcludePeriodConfigurationProperty
  = ExcludePeriodConfigurationProperty {amount :: (Value Prelude.Double),
                                        granularity :: (Value Prelude.Text),
                                        status :: (Prelude.Maybe (Value Prelude.Text))}
mkExcludePeriodConfigurationProperty ::
  Value Prelude.Double
  -> Value Prelude.Text -> ExcludePeriodConfigurationProperty
mkExcludePeriodConfigurationProperty amount granularity
  = ExcludePeriodConfigurationProperty
      {amount = amount, granularity = granularity,
       status = Prelude.Nothing}
instance ToResourceProperties ExcludePeriodConfigurationProperty where
  toResourceProperties ExcludePeriodConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ExcludePeriodConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Amount" JSON..= amount, "Granularity" JSON..= granularity]
                           (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON ExcludePeriodConfigurationProperty where
  toJSON ExcludePeriodConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Amount" JSON..= amount, "Granularity" JSON..= granularity]
              (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status])))
instance Property "Amount" ExcludePeriodConfigurationProperty where
  type PropertyType "Amount" ExcludePeriodConfigurationProperty = Value Prelude.Double
  set newValue ExcludePeriodConfigurationProperty {..}
    = ExcludePeriodConfigurationProperty {amount = newValue, ..}
instance Property "Granularity" ExcludePeriodConfigurationProperty where
  type PropertyType "Granularity" ExcludePeriodConfigurationProperty = Value Prelude.Text
  set newValue ExcludePeriodConfigurationProperty {..}
    = ExcludePeriodConfigurationProperty {granularity = newValue, ..}
instance Property "Status" ExcludePeriodConfigurationProperty where
  type PropertyType "Status" ExcludePeriodConfigurationProperty = Value Prelude.Text
  set newValue ExcludePeriodConfigurationProperty {..}
    = ExcludePeriodConfigurationProperty
        {status = Prelude.pure newValue, ..}