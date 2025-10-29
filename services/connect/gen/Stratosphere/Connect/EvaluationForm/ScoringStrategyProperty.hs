module Stratosphere.Connect.EvaluationForm.ScoringStrategyProperty (
        ScoringStrategyProperty(..), mkScoringStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScoringStrategyProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-scoringstrategy.html>
    ScoringStrategyProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-scoringstrategy.html#cfn-connect-evaluationform-scoringstrategy-mode>
                             mode :: (Value Prelude.Text),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-scoringstrategy.html#cfn-connect-evaluationform-scoringstrategy-status>
                             status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScoringStrategyProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ScoringStrategyProperty
mkScoringStrategyProperty mode status
  = ScoringStrategyProperty {mode = mode, status = status}
instance ToResourceProperties ScoringStrategyProperty where
  toResourceProperties ScoringStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.ScoringStrategy",
         supportsTags = Prelude.False,
         properties = ["Mode" JSON..= mode, "Status" JSON..= status]}
instance JSON.ToJSON ScoringStrategyProperty where
  toJSON ScoringStrategyProperty {..}
    = JSON.object ["Mode" JSON..= mode, "Status" JSON..= status]
instance Property "Mode" ScoringStrategyProperty where
  type PropertyType "Mode" ScoringStrategyProperty = Value Prelude.Text
  set newValue ScoringStrategyProperty {..}
    = ScoringStrategyProperty {mode = newValue, ..}
instance Property "Status" ScoringStrategyProperty where
  type PropertyType "Status" ScoringStrategyProperty = Value Prelude.Text
  set newValue ScoringStrategyProperty {..}
    = ScoringStrategyProperty {status = newValue, ..}