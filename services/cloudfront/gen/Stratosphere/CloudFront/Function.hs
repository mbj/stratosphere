module Stratosphere.CloudFront.Function (
        module Exports, Function(..), mkFunction
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.Function.FunctionConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Function.FunctionMetadataProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Function
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-function.html>
    Function {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-function.html#cfn-cloudfront-function-autopublish>
              autoPublish :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-function.html#cfn-cloudfront-function-functioncode>
              functionCode :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-function.html#cfn-cloudfront-function-functionconfig>
              functionConfig :: FunctionConfigProperty,
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-function.html#cfn-cloudfront-function-functionmetadata>
              functionMetadata :: (Prelude.Maybe FunctionMetadataProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-function.html#cfn-cloudfront-function-name>
              name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunction ::
  Value Prelude.Text
  -> FunctionConfigProperty -> Value Prelude.Text -> Function
mkFunction functionCode functionConfig name
  = Function
      {haddock_workaround_ = (), functionCode = functionCode,
       functionConfig = functionConfig, name = name,
       autoPublish = Prelude.Nothing, functionMetadata = Prelude.Nothing}
instance ToResourceProperties Function where
  toResourceProperties Function {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Function",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FunctionCode" JSON..= functionCode,
                            "FunctionConfig" JSON..= functionConfig, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoPublish" Prelude.<$> autoPublish,
                               (JSON..=) "FunctionMetadata" Prelude.<$> functionMetadata]))}
instance JSON.ToJSON Function where
  toJSON Function {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FunctionCode" JSON..= functionCode,
               "FunctionConfig" JSON..= functionConfig, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AutoPublish" Prelude.<$> autoPublish,
                  (JSON..=) "FunctionMetadata" Prelude.<$> functionMetadata])))
instance Property "AutoPublish" Function where
  type PropertyType "AutoPublish" Function = Value Prelude.Bool
  set newValue Function {..}
    = Function {autoPublish = Prelude.pure newValue, ..}
instance Property "FunctionCode" Function where
  type PropertyType "FunctionCode" Function = Value Prelude.Text
  set newValue Function {..} = Function {functionCode = newValue, ..}
instance Property "FunctionConfig" Function where
  type PropertyType "FunctionConfig" Function = FunctionConfigProperty
  set newValue Function {..}
    = Function {functionConfig = newValue, ..}
instance Property "FunctionMetadata" Function where
  type PropertyType "FunctionMetadata" Function = FunctionMetadataProperty
  set newValue Function {..}
    = Function {functionMetadata = Prelude.pure newValue, ..}
instance Property "Name" Function where
  type PropertyType "Name" Function = Value Prelude.Text
  set newValue Function {..} = Function {name = newValue, ..}