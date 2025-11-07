module Stratosphere.ApplicationSignals.ServiceLevelObjective.RecurrenceRuleProperty (
        RecurrenceRuleProperty(..), mkRecurrenceRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecurrenceRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-recurrencerule.html>
    RecurrenceRuleProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-recurrencerule.html#cfn-applicationsignals-servicelevelobjective-recurrencerule-expression>
                            expression :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecurrenceRuleProperty ::
  Value Prelude.Text -> RecurrenceRuleProperty
mkRecurrenceRuleProperty expression
  = RecurrenceRuleProperty
      {haddock_workaround_ = (), expression = expression}
instance ToResourceProperties RecurrenceRuleProperty where
  toResourceProperties RecurrenceRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::ServiceLevelObjective.RecurrenceRule",
         supportsTags = Prelude.False,
         properties = ["Expression" JSON..= expression]}
instance JSON.ToJSON RecurrenceRuleProperty where
  toJSON RecurrenceRuleProperty {..}
    = JSON.object ["Expression" JSON..= expression]
instance Property "Expression" RecurrenceRuleProperty where
  type PropertyType "Expression" RecurrenceRuleProperty = Value Prelude.Text
  set newValue RecurrenceRuleProperty {..}
    = RecurrenceRuleProperty {expression = newValue, ..}