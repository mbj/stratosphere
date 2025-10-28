module Stratosphere.Bedrock.Agent.FunctionSchemaProperty (
        module Exports, FunctionSchemaProperty(..),
        mkFunctionSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.FunctionProperty as Exports
import Stratosphere.ResourceProperties
data FunctionSchemaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-functionschema.html>
    FunctionSchemaProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-functionschema.html#cfn-bedrock-agent-functionschema-functions>
                            functions :: [FunctionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunctionSchemaProperty ::
  [FunctionProperty] -> FunctionSchemaProperty
mkFunctionSchemaProperty functions
  = FunctionSchemaProperty
      {haddock_workaround_ = (), functions = functions}
instance ToResourceProperties FunctionSchemaProperty where
  toResourceProperties FunctionSchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.FunctionSchema",
         supportsTags = Prelude.False,
         properties = ["Functions" JSON..= functions]}
instance JSON.ToJSON FunctionSchemaProperty where
  toJSON FunctionSchemaProperty {..}
    = JSON.object ["Functions" JSON..= functions]
instance Property "Functions" FunctionSchemaProperty where
  type PropertyType "Functions" FunctionSchemaProperty = [FunctionProperty]
  set newValue FunctionSchemaProperty {..}
    = FunctionSchemaProperty {functions = newValue, ..}