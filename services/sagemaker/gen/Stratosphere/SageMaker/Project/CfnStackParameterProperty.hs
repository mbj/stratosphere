module Stratosphere.SageMaker.Project.CfnStackParameterProperty (
        CfnStackParameterProperty(..), mkCfnStackParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CfnStackParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-cfnstackparameter.html>
    CfnStackParameterProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-cfnstackparameter.html#cfn-sagemaker-project-cfnstackparameter-key>
                               key :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-cfnstackparameter.html#cfn-sagemaker-project-cfnstackparameter-value>
                               value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCfnStackParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CfnStackParameterProperty
mkCfnStackParameterProperty key value
  = CfnStackParameterProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties CfnStackParameterProperty where
  toResourceProperties CfnStackParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Project.CfnStackParameter",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON CfnStackParameterProperty where
  toJSON CfnStackParameterProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" CfnStackParameterProperty where
  type PropertyType "Key" CfnStackParameterProperty = Value Prelude.Text
  set newValue CfnStackParameterProperty {..}
    = CfnStackParameterProperty {key = newValue, ..}
instance Property "Value" CfnStackParameterProperty where
  type PropertyType "Value" CfnStackParameterProperty = Value Prelude.Text
  set newValue CfnStackParameterProperty {..}
    = CfnStackParameterProperty {value = newValue, ..}