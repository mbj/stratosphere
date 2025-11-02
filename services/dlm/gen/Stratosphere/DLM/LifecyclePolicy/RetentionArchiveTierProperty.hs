module Stratosphere.DLM.LifecyclePolicy.RetentionArchiveTierProperty (
        RetentionArchiveTierProperty(..), mkRetentionArchiveTierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetentionArchiveTierProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-retentionarchivetier.html>
    RetentionArchiveTierProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-retentionarchivetier.html#cfn-dlm-lifecyclepolicy-retentionarchivetier-count>
                                  count :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-retentionarchivetier.html#cfn-dlm-lifecyclepolicy-retentionarchivetier-interval>
                                  interval :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-retentionarchivetier.html#cfn-dlm-lifecyclepolicy-retentionarchivetier-intervalunit>
                                  intervalUnit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetentionArchiveTierProperty :: RetentionArchiveTierProperty
mkRetentionArchiveTierProperty
  = RetentionArchiveTierProperty
      {haddock_workaround_ = (), count = Prelude.Nothing,
       interval = Prelude.Nothing, intervalUnit = Prelude.Nothing}
instance ToResourceProperties RetentionArchiveTierProperty where
  toResourceProperties RetentionArchiveTierProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.RetentionArchiveTier",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Count" Prelude.<$> count,
                            (JSON..=) "Interval" Prelude.<$> interval,
                            (JSON..=) "IntervalUnit" Prelude.<$> intervalUnit])}
instance JSON.ToJSON RetentionArchiveTierProperty where
  toJSON RetentionArchiveTierProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Count" Prelude.<$> count,
               (JSON..=) "Interval" Prelude.<$> interval,
               (JSON..=) "IntervalUnit" Prelude.<$> intervalUnit]))
instance Property "Count" RetentionArchiveTierProperty where
  type PropertyType "Count" RetentionArchiveTierProperty = Value Prelude.Integer
  set newValue RetentionArchiveTierProperty {..}
    = RetentionArchiveTierProperty {count = Prelude.pure newValue, ..}
instance Property "Interval" RetentionArchiveTierProperty where
  type PropertyType "Interval" RetentionArchiveTierProperty = Value Prelude.Integer
  set newValue RetentionArchiveTierProperty {..}
    = RetentionArchiveTierProperty
        {interval = Prelude.pure newValue, ..}
instance Property "IntervalUnit" RetentionArchiveTierProperty where
  type PropertyType "IntervalUnit" RetentionArchiveTierProperty = Value Prelude.Text
  set newValue RetentionArchiveTierProperty {..}
    = RetentionArchiveTierProperty
        {intervalUnit = Prelude.pure newValue, ..}