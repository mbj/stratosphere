module Stratosphere.CloudFront.Function.FunctionConfigProperty (
        module Exports, FunctionConfigProperty(..),
        mkFunctionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.Function.KeyValueStoreAssociationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FunctionConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-function-functionconfig.html>
    FunctionConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-function-functionconfig.html#cfn-cloudfront-function-functionconfig-comment>
                            comment :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-function-functionconfig.html#cfn-cloudfront-function-functionconfig-keyvaluestoreassociations>
                            keyValueStoreAssociations :: (Prelude.Maybe [KeyValueStoreAssociationProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-function-functionconfig.html#cfn-cloudfront-function-functionconfig-runtime>
                            runtime :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunctionConfigProperty ::
  Value Prelude.Text -> Value Prelude.Text -> FunctionConfigProperty
mkFunctionConfigProperty comment runtime
  = FunctionConfigProperty
      {haddock_workaround_ = (), comment = comment, runtime = runtime,
       keyValueStoreAssociations = Prelude.Nothing}
instance ToResourceProperties FunctionConfigProperty where
  toResourceProperties FunctionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Function.FunctionConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Comment" JSON..= comment, "Runtime" JSON..= runtime]
                           (Prelude.catMaybes
                              [(JSON..=) "KeyValueStoreAssociations"
                                 Prelude.<$> keyValueStoreAssociations]))}
instance JSON.ToJSON FunctionConfigProperty where
  toJSON FunctionConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Comment" JSON..= comment, "Runtime" JSON..= runtime]
              (Prelude.catMaybes
                 [(JSON..=) "KeyValueStoreAssociations"
                    Prelude.<$> keyValueStoreAssociations])))
instance Property "Comment" FunctionConfigProperty where
  type PropertyType "Comment" FunctionConfigProperty = Value Prelude.Text
  set newValue FunctionConfigProperty {..}
    = FunctionConfigProperty {comment = newValue, ..}
instance Property "KeyValueStoreAssociations" FunctionConfigProperty where
  type PropertyType "KeyValueStoreAssociations" FunctionConfigProperty = [KeyValueStoreAssociationProperty]
  set newValue FunctionConfigProperty {..}
    = FunctionConfigProperty
        {keyValueStoreAssociations = Prelude.pure newValue, ..}
instance Property "Runtime" FunctionConfigProperty where
  type PropertyType "Runtime" FunctionConfigProperty = Value Prelude.Text
  set newValue FunctionConfigProperty {..}
    = FunctionConfigProperty {runtime = newValue, ..}