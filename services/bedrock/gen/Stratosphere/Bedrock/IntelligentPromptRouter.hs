module Stratosphere.Bedrock.IntelligentPromptRouter (
        module Exports, IntelligentPromptRouter(..),
        mkIntelligentPromptRouter
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.IntelligentPromptRouter.PromptRouterTargetModelProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.IntelligentPromptRouter.RoutingCriteriaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IntelligentPromptRouter
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-intelligentpromptrouter.html>
    IntelligentPromptRouter {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-intelligentpromptrouter.html#cfn-bedrock-intelligentpromptrouter-description>
                             description :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-intelligentpromptrouter.html#cfn-bedrock-intelligentpromptrouter-fallbackmodel>
                             fallbackModel :: PromptRouterTargetModelProperty,
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-intelligentpromptrouter.html#cfn-bedrock-intelligentpromptrouter-models>
                             models :: [PromptRouterTargetModelProperty],
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-intelligentpromptrouter.html#cfn-bedrock-intelligentpromptrouter-promptroutername>
                             promptRouterName :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-intelligentpromptrouter.html#cfn-bedrock-intelligentpromptrouter-routingcriteria>
                             routingCriteria :: RoutingCriteriaProperty,
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-intelligentpromptrouter.html#cfn-bedrock-intelligentpromptrouter-tags>
                             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntelligentPromptRouter ::
  PromptRouterTargetModelProperty
  -> [PromptRouterTargetModelProperty]
     -> Value Prelude.Text
        -> RoutingCriteriaProperty -> IntelligentPromptRouter
mkIntelligentPromptRouter
  fallbackModel
  models
  promptRouterName
  routingCriteria
  = IntelligentPromptRouter
      {haddock_workaround_ = (), fallbackModel = fallbackModel,
       models = models, promptRouterName = promptRouterName,
       routingCriteria = routingCriteria, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties IntelligentPromptRouter where
  toResourceProperties IntelligentPromptRouter {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::IntelligentPromptRouter",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FallbackModel" JSON..= fallbackModel, "Models" JSON..= models,
                            "PromptRouterName" JSON..= promptRouterName,
                            "RoutingCriteria" JSON..= routingCriteria]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IntelligentPromptRouter where
  toJSON IntelligentPromptRouter {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FallbackModel" JSON..= fallbackModel, "Models" JSON..= models,
               "PromptRouterName" JSON..= promptRouterName,
               "RoutingCriteria" JSON..= routingCriteria]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" IntelligentPromptRouter where
  type PropertyType "Description" IntelligentPromptRouter = Value Prelude.Text
  set newValue IntelligentPromptRouter {..}
    = IntelligentPromptRouter {description = Prelude.pure newValue, ..}
instance Property "FallbackModel" IntelligentPromptRouter where
  type PropertyType "FallbackModel" IntelligentPromptRouter = PromptRouterTargetModelProperty
  set newValue IntelligentPromptRouter {..}
    = IntelligentPromptRouter {fallbackModel = newValue, ..}
instance Property "Models" IntelligentPromptRouter where
  type PropertyType "Models" IntelligentPromptRouter = [PromptRouterTargetModelProperty]
  set newValue IntelligentPromptRouter {..}
    = IntelligentPromptRouter {models = newValue, ..}
instance Property "PromptRouterName" IntelligentPromptRouter where
  type PropertyType "PromptRouterName" IntelligentPromptRouter = Value Prelude.Text
  set newValue IntelligentPromptRouter {..}
    = IntelligentPromptRouter {promptRouterName = newValue, ..}
instance Property "RoutingCriteria" IntelligentPromptRouter where
  type PropertyType "RoutingCriteria" IntelligentPromptRouter = RoutingCriteriaProperty
  set newValue IntelligentPromptRouter {..}
    = IntelligentPromptRouter {routingCriteria = newValue, ..}
instance Property "Tags" IntelligentPromptRouter where
  type PropertyType "Tags" IntelligentPromptRouter = [Tag]
  set newValue IntelligentPromptRouter {..}
    = IntelligentPromptRouter {tags = Prelude.pure newValue, ..}