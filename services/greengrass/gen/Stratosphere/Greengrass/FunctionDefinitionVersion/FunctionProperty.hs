module Stratosphere.Greengrass.FunctionDefinitionVersion.FunctionProperty (
        module Exports, FunctionProperty(..), mkFunctionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.FunctionDefinitionVersion.FunctionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FunctionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html>
    FunctionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html#cfn-greengrass-functiondefinitionversion-function-functionarn>
                      functionArn :: (Value Prelude.Text),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html#cfn-greengrass-functiondefinitionversion-function-functionconfiguration>
                      functionConfiguration :: FunctionConfigurationProperty,
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html#cfn-greengrass-functiondefinitionversion-function-id>
                      id :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunctionProperty ::
  Value Prelude.Text
  -> FunctionConfigurationProperty
     -> Value Prelude.Text -> FunctionProperty
mkFunctionProperty functionArn functionConfiguration id
  = FunctionProperty
      {functionArn = functionArn,
       functionConfiguration = functionConfiguration, id = id}
instance ToResourceProperties FunctionProperty where
  toResourceProperties FunctionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::FunctionDefinitionVersion.Function",
         supportsTags = Prelude.False,
         properties = ["FunctionArn" JSON..= functionArn,
                       "FunctionConfiguration" JSON..= functionConfiguration,
                       "Id" JSON..= id]}
instance JSON.ToJSON FunctionProperty where
  toJSON FunctionProperty {..}
    = JSON.object
        ["FunctionArn" JSON..= functionArn,
         "FunctionConfiguration" JSON..= functionConfiguration,
         "Id" JSON..= id]
instance Property "FunctionArn" FunctionProperty where
  type PropertyType "FunctionArn" FunctionProperty = Value Prelude.Text
  set newValue FunctionProperty {..}
    = FunctionProperty {functionArn = newValue, ..}
instance Property "FunctionConfiguration" FunctionProperty where
  type PropertyType "FunctionConfiguration" FunctionProperty = FunctionConfigurationProperty
  set newValue FunctionProperty {..}
    = FunctionProperty {functionConfiguration = newValue, ..}
instance Property "Id" FunctionProperty where
  type PropertyType "Id" FunctionProperty = Value Prelude.Text
  set newValue FunctionProperty {..}
    = FunctionProperty {id = newValue, ..}