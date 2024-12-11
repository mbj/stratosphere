module Stratosphere.CodePipeline.Pipeline.RetryConfigurationProperty (
        RetryConfigurationProperty(..), mkRetryConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetryConfigurationProperty
  = RetryConfigurationProperty {retryMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetryConfigurationProperty :: RetryConfigurationProperty
mkRetryConfigurationProperty
  = RetryConfigurationProperty {retryMode = Prelude.Nothing}
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
  set newValue RetryConfigurationProperty {}
    = RetryConfigurationProperty
        {retryMode = Prelude.pure newValue, ..}