module Stratosphere.Bedrock.DataSource.TransformationFunctionProperty (
        module Exports, TransformationFunctionProperty(..),
        mkTransformationFunctionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.TransformationLambdaConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data TransformationFunctionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-transformationfunction.html>
    TransformationFunctionProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-transformationfunction.html#cfn-bedrock-datasource-transformationfunction-transformationlambdaconfiguration>
                                    transformationLambdaConfiguration :: TransformationLambdaConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransformationFunctionProperty ::
  TransformationLambdaConfigurationProperty
  -> TransformationFunctionProperty
mkTransformationFunctionProperty transformationLambdaConfiguration
  = TransformationFunctionProperty
      {haddock_workaround_ = (),
       transformationLambdaConfiguration = transformationLambdaConfiguration}
instance ToResourceProperties TransformationFunctionProperty where
  toResourceProperties TransformationFunctionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.TransformationFunction",
         supportsTags = Prelude.False,
         properties = ["TransformationLambdaConfiguration"
                         JSON..= transformationLambdaConfiguration]}
instance JSON.ToJSON TransformationFunctionProperty where
  toJSON TransformationFunctionProperty {..}
    = JSON.object
        ["TransformationLambdaConfiguration"
           JSON..= transformationLambdaConfiguration]
instance Property "TransformationLambdaConfiguration" TransformationFunctionProperty where
  type PropertyType "TransformationLambdaConfiguration" TransformationFunctionProperty = TransformationLambdaConfigurationProperty
  set newValue TransformationFunctionProperty {..}
    = TransformationFunctionProperty
        {transformationLambdaConfiguration = newValue, ..}