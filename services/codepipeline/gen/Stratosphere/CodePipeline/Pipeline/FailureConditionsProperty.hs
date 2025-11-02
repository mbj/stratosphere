module Stratosphere.CodePipeline.Pipeline.FailureConditionsProperty (
        module Exports, FailureConditionsProperty(..),
        mkFailureConditionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.ConditionProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.Pipeline.RetryConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FailureConditionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-failureconditions.html>
    FailureConditionsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-failureconditions.html#cfn-codepipeline-pipeline-failureconditions-conditions>
                               conditions :: (Prelude.Maybe [ConditionProperty]),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-failureconditions.html#cfn-codepipeline-pipeline-failureconditions-result>
                               result :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-failureconditions.html#cfn-codepipeline-pipeline-failureconditions-retryconfiguration>
                               retryConfiguration :: (Prelude.Maybe RetryConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFailureConditionsProperty :: FailureConditionsProperty
mkFailureConditionsProperty
  = FailureConditionsProperty
      {haddock_workaround_ = (), conditions = Prelude.Nothing,
       result = Prelude.Nothing, retryConfiguration = Prelude.Nothing}
instance ToResourceProperties FailureConditionsProperty where
  toResourceProperties FailureConditionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.FailureConditions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Conditions" Prelude.<$> conditions,
                            (JSON..=) "Result" Prelude.<$> result,
                            (JSON..=) "RetryConfiguration" Prelude.<$> retryConfiguration])}
instance JSON.ToJSON FailureConditionsProperty where
  toJSON FailureConditionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Conditions" Prelude.<$> conditions,
               (JSON..=) "Result" Prelude.<$> result,
               (JSON..=) "RetryConfiguration" Prelude.<$> retryConfiguration]))
instance Property "Conditions" FailureConditionsProperty where
  type PropertyType "Conditions" FailureConditionsProperty = [ConditionProperty]
  set newValue FailureConditionsProperty {..}
    = FailureConditionsProperty
        {conditions = Prelude.pure newValue, ..}
instance Property "Result" FailureConditionsProperty where
  type PropertyType "Result" FailureConditionsProperty = Value Prelude.Text
  set newValue FailureConditionsProperty {..}
    = FailureConditionsProperty {result = Prelude.pure newValue, ..}
instance Property "RetryConfiguration" FailureConditionsProperty where
  type PropertyType "RetryConfiguration" FailureConditionsProperty = RetryConfigurationProperty
  set newValue FailureConditionsProperty {..}
    = FailureConditionsProperty
        {retryConfiguration = Prelude.pure newValue, ..}