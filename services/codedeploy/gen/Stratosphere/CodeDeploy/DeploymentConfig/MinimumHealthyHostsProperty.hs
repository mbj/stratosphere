module Stratosphere.CodeDeploy.DeploymentConfig.MinimumHealthyHostsProperty (
        MinimumHealthyHostsProperty(..), mkMinimumHealthyHostsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MinimumHealthyHostsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html>
    MinimumHealthyHostsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts-type>
                                 type' :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts-value>
                                 value :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMinimumHealthyHostsProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> MinimumHealthyHostsProperty
mkMinimumHealthyHostsProperty type' value
  = MinimumHealthyHostsProperty
      {haddock_workaround_ = (), type' = type', value = value}
instance ToResourceProperties MinimumHealthyHostsProperty where
  toResourceProperties MinimumHealthyHostsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentConfig.MinimumHealthyHosts",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON MinimumHealthyHostsProperty where
  toJSON MinimumHealthyHostsProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" MinimumHealthyHostsProperty where
  type PropertyType "Type" MinimumHealthyHostsProperty = Value Prelude.Text
  set newValue MinimumHealthyHostsProperty {..}
    = MinimumHealthyHostsProperty {type' = newValue, ..}
instance Property "Value" MinimumHealthyHostsProperty where
  type PropertyType "Value" MinimumHealthyHostsProperty = Value Prelude.Integer
  set newValue MinimumHealthyHostsProperty {..}
    = MinimumHealthyHostsProperty {value = newValue, ..}