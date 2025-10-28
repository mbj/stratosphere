module Stratosphere.CodePipeline.Pipeline.RetryConfigurationProperty (
        RetryConfigurationProperty(..), mkRetryConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetryConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-retryconfiguration.html>
    RetryConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-retryconfiguration.html#cfn-codepipeline-pipeline-retryconfiguration-retrymode>
                                retryMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetryConfigurationProperty :: RetryConfigurationProperty
mkRetryConfigurationProperty
  = RetryConfigurationProperty
      {haddock_workaround_ = (), retryMode = Prelude.Nothing}
instance ToResourceProperties RetryConfigurationProperty where
  toResourceProperties RetryConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.RetryConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "RetryMode" Prelude.<$> retryMode])}
instance JSON.ToJSON RetryConfigurationProperty where
  toJSON RetryConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "RetryMode" Prelude.<$> retryMode]))
instance Property "RetryMode" RetryConfigurationProperty where
  type PropertyType "RetryMode" RetryConfigurationProperty = Value Prelude.Text
  set newValue RetryConfigurationProperty {..}
    = RetryConfigurationProperty
        {retryMode = Prelude.pure newValue, ..}