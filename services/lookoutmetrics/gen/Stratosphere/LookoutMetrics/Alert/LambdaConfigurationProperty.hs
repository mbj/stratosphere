module Stratosphere.LookoutMetrics.Alert.LambdaConfigurationProperty (
        LambdaConfigurationProperty(..), mkLambdaConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-alert-lambdaconfiguration.html>
    LambdaConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-alert-lambdaconfiguration.html#cfn-lookoutmetrics-alert-lambdaconfiguration-lambdaarn>
                                 lambdaArn :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-alert-lambdaconfiguration.html#cfn-lookoutmetrics-alert-lambdaconfiguration-rolearn>
                                 roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> LambdaConfigurationProperty
mkLambdaConfigurationProperty lambdaArn roleArn
  = LambdaConfigurationProperty
      {haddock_workaround_ = (), lambdaArn = lambdaArn,
       roleArn = roleArn}
instance ToResourceProperties LambdaConfigurationProperty where
  toResourceProperties LambdaConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::Alert.LambdaConfiguration",
         supportsTags = Prelude.False,
         properties = ["LambdaArn" JSON..= lambdaArn,
                       "RoleArn" JSON..= roleArn]}
instance JSON.ToJSON LambdaConfigurationProperty where
  toJSON LambdaConfigurationProperty {..}
    = JSON.object
        ["LambdaArn" JSON..= lambdaArn, "RoleArn" JSON..= roleArn]
instance Property "LambdaArn" LambdaConfigurationProperty where
  type PropertyType "LambdaArn" LambdaConfigurationProperty = Value Prelude.Text
  set newValue LambdaConfigurationProperty {..}
    = LambdaConfigurationProperty {lambdaArn = newValue, ..}
instance Property "RoleArn" LambdaConfigurationProperty where
  type PropertyType "RoleArn" LambdaConfigurationProperty = Value Prelude.Text
  set newValue LambdaConfigurationProperty {..}
    = LambdaConfigurationProperty {roleArn = newValue, ..}