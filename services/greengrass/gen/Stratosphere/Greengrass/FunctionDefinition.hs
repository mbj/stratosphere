module Stratosphere.Greengrass.FunctionDefinition (
        module Exports, FunctionDefinition(..), mkFunctionDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.FunctionDefinition.FunctionDefinitionVersionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FunctionDefinition
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinition.html>
    FunctionDefinition {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinition.html#cfn-greengrass-functiondefinition-initialversion>
                        initialVersion :: (Prelude.Maybe FunctionDefinitionVersionProperty),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinition.html#cfn-greengrass-functiondefinition-name>
                        name :: (Value Prelude.Text),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinition.html#cfn-greengrass-functiondefinition-tags>
                        tags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunctionDefinition :: Value Prelude.Text -> FunctionDefinition
mkFunctionDefinition name
  = FunctionDefinition
      {name = name, initialVersion = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties FunctionDefinition where
  toResourceProperties FunctionDefinition {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::FunctionDefinition",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON FunctionDefinition where
  toJSON FunctionDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "InitialVersion" FunctionDefinition where
  type PropertyType "InitialVersion" FunctionDefinition = FunctionDefinitionVersionProperty
  set newValue FunctionDefinition {..}
    = FunctionDefinition {initialVersion = Prelude.pure newValue, ..}
instance Property "Name" FunctionDefinition where
  type PropertyType "Name" FunctionDefinition = Value Prelude.Text
  set newValue FunctionDefinition {..}
    = FunctionDefinition {name = newValue, ..}
instance Property "Tags" FunctionDefinition where
  type PropertyType "Tags" FunctionDefinition = JSON.Object
  set newValue FunctionDefinition {..}
    = FunctionDefinition {tags = Prelude.pure newValue, ..}