module Stratosphere.Synthetics.Canary.RetryConfigProperty (
        RetryConfigProperty(..), mkRetryConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetryConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-retryconfig.html>
    RetryConfigProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-retryconfig.html#cfn-synthetics-canary-retryconfig-maxretries>
                         maxRetries :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetryConfigProperty ::
  Value Prelude.Integer -> RetryConfigProperty
mkRetryConfigProperty maxRetries
  = RetryConfigProperty
      {haddock_workaround_ = (), maxRetries = maxRetries}
instance ToResourceProperties RetryConfigProperty where
  toResourceProperties RetryConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Synthetics::Canary.RetryConfig",
         supportsTags = Prelude.False,
         properties = ["MaxRetries" JSON..= maxRetries]}
instance JSON.ToJSON RetryConfigProperty where
  toJSON RetryConfigProperty {..}
    = JSON.object ["MaxRetries" JSON..= maxRetries]
instance Property "MaxRetries" RetryConfigProperty where
  type PropertyType "MaxRetries" RetryConfigProperty = Value Prelude.Integer
  set newValue RetryConfigProperty {..}
    = RetryConfigProperty {maxRetries = newValue, ..}