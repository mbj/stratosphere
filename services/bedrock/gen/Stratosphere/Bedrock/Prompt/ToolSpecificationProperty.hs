module Stratosphere.Bedrock.Prompt.ToolSpecificationProperty (
        module Exports, ToolSpecificationProperty(..),
        mkToolSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Prompt.ToolInputSchemaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ToolSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-toolspecification.html>
    ToolSpecificationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-toolspecification.html#cfn-bedrock-prompt-toolspecification-description>
                               description :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-toolspecification.html#cfn-bedrock-prompt-toolspecification-inputschema>
                               inputSchema :: ToolInputSchemaProperty,
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-toolspecification.html#cfn-bedrock-prompt-toolspecification-name>
                               name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkToolSpecificationProperty ::
  ToolInputSchemaProperty
  -> Value Prelude.Text -> ToolSpecificationProperty
mkToolSpecificationProperty inputSchema name
  = ToolSpecificationProperty
      {haddock_workaround_ = (), inputSchema = inputSchema, name = name,
       description = Prelude.Nothing}
instance ToResourceProperties ToolSpecificationProperty where
  toResourceProperties ToolSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Prompt.ToolSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InputSchema" JSON..= inputSchema, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON ToolSpecificationProperty where
  toJSON ToolSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InputSchema" JSON..= inputSchema, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" ToolSpecificationProperty where
  type PropertyType "Description" ToolSpecificationProperty = Value Prelude.Text
  set newValue ToolSpecificationProperty {..}
    = ToolSpecificationProperty
        {description = Prelude.pure newValue, ..}
instance Property "InputSchema" ToolSpecificationProperty where
  type PropertyType "InputSchema" ToolSpecificationProperty = ToolInputSchemaProperty
  set newValue ToolSpecificationProperty {..}
    = ToolSpecificationProperty {inputSchema = newValue, ..}
instance Property "Name" ToolSpecificationProperty where
  type PropertyType "Name" ToolSpecificationProperty = Value Prelude.Text
  set newValue ToolSpecificationProperty {..}
    = ToolSpecificationProperty {name = newValue, ..}