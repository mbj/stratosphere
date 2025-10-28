module Stratosphere.Bedrock.DataSource.TransformationLambdaConfigurationProperty (
        TransformationLambdaConfigurationProperty(..),
        mkTransformationLambdaConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransformationLambdaConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-transformationlambdaconfiguration.html>
    TransformationLambdaConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-transformationlambdaconfiguration.html#cfn-bedrock-datasource-transformationlambdaconfiguration-lambdaarn>
                                               lambdaArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransformationLambdaConfigurationProperty ::
  Value Prelude.Text -> TransformationLambdaConfigurationProperty
mkTransformationLambdaConfigurationProperty lambdaArn
  = TransformationLambdaConfigurationProperty
      {haddock_workaround_ = (), lambdaArn = lambdaArn}
instance ToResourceProperties TransformationLambdaConfigurationProperty where
  toResourceProperties TransformationLambdaConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.TransformationLambdaConfiguration",
         supportsTags = Prelude.False,
         properties = ["LambdaArn" JSON..= lambdaArn]}
instance JSON.ToJSON TransformationLambdaConfigurationProperty where
  toJSON TransformationLambdaConfigurationProperty {..}
    = JSON.object ["LambdaArn" JSON..= lambdaArn]
instance Property "LambdaArn" TransformationLambdaConfigurationProperty where
  type PropertyType "LambdaArn" TransformationLambdaConfigurationProperty = Value Prelude.Text
  set newValue TransformationLambdaConfigurationProperty {..}
    = TransformationLambdaConfigurationProperty
        {lambdaArn = newValue, ..}