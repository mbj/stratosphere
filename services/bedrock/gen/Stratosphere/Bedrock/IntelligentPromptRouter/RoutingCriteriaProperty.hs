module Stratosphere.Bedrock.IntelligentPromptRouter.RoutingCriteriaProperty (
        RoutingCriteriaProperty(..), mkRoutingCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RoutingCriteriaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-intelligentpromptrouter-routingcriteria.html>
    RoutingCriteriaProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-intelligentpromptrouter-routingcriteria.html#cfn-bedrock-intelligentpromptrouter-routingcriteria-responsequalitydifference>
                             responseQualityDifference :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoutingCriteriaProperty ::
  Value Prelude.Double -> RoutingCriteriaProperty
mkRoutingCriteriaProperty responseQualityDifference
  = RoutingCriteriaProperty
      {haddock_workaround_ = (),
       responseQualityDifference = responseQualityDifference}
instance ToResourceProperties RoutingCriteriaProperty where
  toResourceProperties RoutingCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::IntelligentPromptRouter.RoutingCriteria",
         supportsTags = Prelude.False,
         properties = ["ResponseQualityDifference"
                         JSON..= responseQualityDifference]}
instance JSON.ToJSON RoutingCriteriaProperty where
  toJSON RoutingCriteriaProperty {..}
    = JSON.object
        ["ResponseQualityDifference" JSON..= responseQualityDifference]
instance Property "ResponseQualityDifference" RoutingCriteriaProperty where
  type PropertyType "ResponseQualityDifference" RoutingCriteriaProperty = Value Prelude.Double
  set newValue RoutingCriteriaProperty {..}
    = RoutingCriteriaProperty
        {responseQualityDifference = newValue, ..}