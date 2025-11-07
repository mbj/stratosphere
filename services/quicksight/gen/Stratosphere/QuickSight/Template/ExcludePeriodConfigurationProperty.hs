module Stratosphere.QuickSight.Template.ExcludePeriodConfigurationProperty (
        ExcludePeriodConfigurationProperty(..),
        mkExcludePeriodConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExcludePeriodConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-excludeperiodconfiguration.html>
    ExcludePeriodConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-excludeperiodconfiguration.html#cfn-quicksight-template-excludeperiodconfiguration-amount>
                                        amount :: (Value Prelude.Double),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-excludeperiodconfiguration.html#cfn-quicksight-template-excludeperiodconfiguration-granularity>
                                        granularity :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-excludeperiodconfiguration.html#cfn-quicksight-template-excludeperiodconfiguration-status>
                                        status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExcludePeriodConfigurationProperty ::
  Value Prelude.Double
  -> Value Prelude.Text -> ExcludePeriodConfigurationProperty
mkExcludePeriodConfigurationProperty amount granularity
  = ExcludePeriodConfigurationProperty
      {haddock_workaround_ = (), amount = amount,
       granularity = granularity, status = Prelude.Nothing}
instance ToResourceProperties ExcludePeriodConfigurationProperty where
  toResourceProperties ExcludePeriodConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ExcludePeriodConfiguration",
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