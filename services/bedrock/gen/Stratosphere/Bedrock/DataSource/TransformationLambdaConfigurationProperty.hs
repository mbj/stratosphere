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
  = TransformationLambdaConfigurationProperty {lambdaArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransformationLambdaConfigurationProperty ::
  Value Prelude.Text -> TransformationLambdaConfigurationProperty
mkTransformationLambdaConfigurationProperty lambdaArn
  = TransformationLambdaConfigurationProperty {lambdaArn = lambdaArn}
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
  set newValue TransformationLambdaConfigurationProperty {}
    = TransformationLambdaConfigurationProperty
        {lambdaArn = newValue, ..}