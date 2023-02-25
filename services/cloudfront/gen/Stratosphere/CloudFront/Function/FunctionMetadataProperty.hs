module Stratosphere.CloudFront.Function.FunctionMetadataProperty (
        FunctionMetadataProperty(..), mkFunctionMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FunctionMetadataProperty
  = FunctionMetadataProperty {functionARN :: (Prelude.Maybe (Value Prelude.Text))}
mkFunctionMetadataProperty :: FunctionMetadataProperty
mkFunctionMetadataProperty
  = FunctionMetadataProperty {functionARN = Prelude.Nothing}
instance ToResourceProperties FunctionMetadataProperty where
  toResourceProperties FunctionMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Function.FunctionMetadata",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FunctionARN" Prelude.<$> functionARN])}
instance JSON.ToJSON FunctionMetadataProperty where
  toJSON FunctionMetadataProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FunctionARN" Prelude.<$> functionARN]))
instance Property "FunctionARN" FunctionMetadataProperty where
  type PropertyType "FunctionARN" FunctionMetadataProperty = Value Prelude.Text
  set newValue FunctionMetadataProperty {}
    = FunctionMetadataProperty
        {functionARN = Prelude.pure newValue, ..}