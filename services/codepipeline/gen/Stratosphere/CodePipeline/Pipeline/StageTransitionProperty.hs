module Stratosphere.CodePipeline.Pipeline.StageTransitionProperty (
        StageTransitionProperty(..), mkStageTransitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StageTransitionProperty
  = StageTransitionProperty {reason :: (Value Prelude.Text),
                             stageName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStageTransitionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> StageTransitionProperty
mkStageTransitionProperty reason stageName
  = StageTransitionProperty {reason = reason, stageName = stageName}
instance ToResourceProperties StageTransitionProperty where
  toResourceProperties StageTransitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.StageTransition",
         supportsTags = Prelude.False,
         properties = ["Reason" JSON..= reason,
                       "StageName" JSON..= stageName]}
instance JSON.ToJSON StageTransitionProperty where
  toJSON StageTransitionProperty {..}
    = JSON.object
        ["Reason" JSON..= reason, "StageName" JSON..= stageName]
instance Property "Reason" StageTransitionProperty where
  type PropertyType "Reason" StageTransitionProperty = Value Prelude.Text
  set newValue StageTransitionProperty {..}
    = StageTransitionProperty {reason = newValue, ..}
instance Property "StageName" StageTransitionProperty where
  type PropertyType "StageName" StageTransitionProperty = Value Prelude.Text
  set newValue StageTransitionProperty {..}
    = StageTransitionProperty {stageName = newValue, ..}