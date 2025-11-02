module Stratosphere.CodePipeline.Pipeline.ConditionProperty (
        module Exports, ConditionProperty(..), mkConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.RuleDeclarationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-condition.html>
    ConditionProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-condition.html#cfn-codepipeline-pipeline-condition-result>
                       result :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-condition.html#cfn-codepipeline-pipeline-condition-rules>
                       rules :: (Prelude.Maybe [RuleDeclarationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionProperty :: ConditionProperty
mkConditionProperty
  = ConditionProperty
      {haddock_workaround_ = (), result = Prelude.Nothing,
       rules = Prelude.Nothing}
instance ToResourceProperties ConditionProperty where
  toResourceProperties ConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.Condition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Result" Prelude.<$> result,
                            (JSON..=) "Rules" Prelude.<$> rules])}
instance JSON.ToJSON ConditionProperty where
  toJSON ConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Result" Prelude.<$> result,
               (JSON..=) "Rules" Prelude.<$> rules]))
instance Property "Result" ConditionProperty where
  type PropertyType "Result" ConditionProperty = Value Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {result = Prelude.pure newValue, ..}
instance Property "Rules" ConditionProperty where
  type PropertyType "Rules" ConditionProperty = [RuleDeclarationProperty]
  set newValue ConditionProperty {..}
    = ConditionProperty {rules = Prelude.pure newValue, ..}