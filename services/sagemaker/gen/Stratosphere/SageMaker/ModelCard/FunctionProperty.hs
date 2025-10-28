module Stratosphere.SageMaker.ModelCard.FunctionProperty (
        FunctionProperty(..), mkFunctionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FunctionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-function.html>
    FunctionProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-function.html#cfn-sagemaker-modelcard-function-condition>
                      condition :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-function.html#cfn-sagemaker-modelcard-function-facet>
                      facet :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-function.html#cfn-sagemaker-modelcard-function-function>
                      function :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunctionProperty :: FunctionProperty
mkFunctionProperty
  = FunctionProperty
      {haddock_workaround_ = (), condition = Prelude.Nothing,
       facet = Prelude.Nothing, function = Prelude.Nothing}
instance ToResourceProperties FunctionProperty where
  toResourceProperties FunctionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.Function",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Condition" Prelude.<$> condition,
                            (JSON..=) "Facet" Prelude.<$> facet,
                            (JSON..=) "Function" Prelude.<$> function])}
instance JSON.ToJSON FunctionProperty where
  toJSON FunctionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Condition" Prelude.<$> condition,
               (JSON..=) "Facet" Prelude.<$> facet,
               (JSON..=) "Function" Prelude.<$> function]))
instance Property "Condition" FunctionProperty where
  type PropertyType "Condition" FunctionProperty = Value Prelude.Text
  set newValue FunctionProperty {..}
    = FunctionProperty {condition = Prelude.pure newValue, ..}
instance Property "Facet" FunctionProperty where
  type PropertyType "Facet" FunctionProperty = Value Prelude.Text
  set newValue FunctionProperty {..}
    = FunctionProperty {facet = Prelude.pure newValue, ..}
instance Property "Function" FunctionProperty where
  type PropertyType "Function" FunctionProperty = Value Prelude.Text
  set newValue FunctionProperty {..}
    = FunctionProperty {function = Prelude.pure newValue, ..}