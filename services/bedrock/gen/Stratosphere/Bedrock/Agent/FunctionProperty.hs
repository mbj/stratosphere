module Stratosphere.Bedrock.Agent.FunctionProperty (
        module Exports, FunctionProperty(..), mkFunctionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.ParameterDetailProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FunctionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-function.html>
    FunctionProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-function.html#cfn-bedrock-agent-function-description>
                      description :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-function.html#cfn-bedrock-agent-function-name>
                      name :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-function.html#cfn-bedrock-agent-function-parameters>
                      parameters :: (Prelude.Maybe (Prelude.Map Prelude.Text ParameterDetailProperty))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunctionProperty :: Value Prelude.Text -> FunctionProperty
mkFunctionProperty name
  = FunctionProperty
      {haddock_workaround_ = (), name = name,
       description = Prelude.Nothing, parameters = Prelude.Nothing}
instance ToResourceProperties FunctionProperty where
  toResourceProperties FunctionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.Function",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Parameters" Prelude.<$> parameters]))}
instance JSON.ToJSON FunctionProperty where
  toJSON FunctionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Parameters" Prelude.<$> parameters])))
instance Property "Description" FunctionProperty where
  type PropertyType "Description" FunctionProperty = Value Prelude.Text
  set newValue FunctionProperty {..}
    = FunctionProperty {description = Prelude.pure newValue, ..}
instance Property "Name" FunctionProperty where
  type PropertyType "Name" FunctionProperty = Value Prelude.Text
  set newValue FunctionProperty {..}
    = FunctionProperty {name = newValue, ..}
instance Property "Parameters" FunctionProperty where
  type PropertyType "Parameters" FunctionProperty = Prelude.Map Prelude.Text ParameterDetailProperty
  set newValue FunctionProperty {..}
    = FunctionProperty {parameters = Prelude.pure newValue, ..}