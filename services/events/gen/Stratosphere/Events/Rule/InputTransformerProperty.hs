module Stratosphere.Events.Rule.InputTransformerProperty (
        InputTransformerProperty(..), mkInputTransformerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputTransformerProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html>
    InputTransformerProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html#cfn-events-rule-inputtransformer-inputpathsmap>
                              inputPathsMap :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html#cfn-events-rule-inputtransformer-inputtemplate>
                              inputTemplate :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputTransformerProperty ::
  Value Prelude.Text -> InputTransformerProperty
mkInputTransformerProperty inputTemplate
  = InputTransformerProperty
      {inputTemplate = inputTemplate, inputPathsMap = Prelude.Nothing}
instance ToResourceProperties InputTransformerProperty where
  toResourceProperties InputTransformerProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.InputTransformer",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InputTemplate" JSON..= inputTemplate]
                           (Prelude.catMaybes
                              [(JSON..=) "InputPathsMap" Prelude.<$> inputPathsMap]))}
instance JSON.ToJSON InputTransformerProperty where
  toJSON InputTransformerProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InputTemplate" JSON..= inputTemplate]
              (Prelude.catMaybes
                 [(JSON..=) "InputPathsMap" Prelude.<$> inputPathsMap])))
instance Property "InputPathsMap" InputTransformerProperty where
  type PropertyType "InputPathsMap" InputTransformerProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue InputTransformerProperty {..}
    = InputTransformerProperty
        {inputPathsMap = Prelude.pure newValue, ..}
instance Property "InputTemplate" InputTransformerProperty where
  type PropertyType "InputTemplate" InputTransformerProperty = Value Prelude.Text
  set newValue InputTransformerProperty {..}
    = InputTransformerProperty {inputTemplate = newValue, ..}