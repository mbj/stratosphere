module Stratosphere.Greengrass.FunctionDefinition.FunctionDefinitionVersionProperty (
        module Exports, FunctionDefinitionVersionProperty(..),
        mkFunctionDefinitionVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.FunctionDefinition.DefaultConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Greengrass.FunctionDefinition.FunctionProperty as Exports
import Stratosphere.ResourceProperties
data FunctionDefinitionVersionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html>
    FunctionDefinitionVersionProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html#cfn-greengrass-functiondefinition-functiondefinitionversion-defaultconfig>
                                       defaultConfig :: (Prelude.Maybe DefaultConfigProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html#cfn-greengrass-functiondefinition-functiondefinitionversion-functions>
                                       functions :: [FunctionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunctionDefinitionVersionProperty ::
  [FunctionProperty] -> FunctionDefinitionVersionProperty
mkFunctionDefinitionVersionProperty functions
  = FunctionDefinitionVersionProperty
      {haddock_workaround_ = (), functions = functions,
       defaultConfig = Prelude.Nothing}
instance ToResourceProperties FunctionDefinitionVersionProperty where
  toResourceProperties FunctionDefinitionVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::FunctionDefinition.FunctionDefinitionVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Functions" JSON..= functions]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultConfig" Prelude.<$> defaultConfig]))}
instance JSON.ToJSON FunctionDefinitionVersionProperty where
  toJSON FunctionDefinitionVersionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Functions" JSON..= functions]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultConfig" Prelude.<$> defaultConfig])))
instance Property "DefaultConfig" FunctionDefinitionVersionProperty where
  type PropertyType "DefaultConfig" FunctionDefinitionVersionProperty = DefaultConfigProperty
  set newValue FunctionDefinitionVersionProperty {..}
    = FunctionDefinitionVersionProperty
        {defaultConfig = Prelude.pure newValue, ..}
instance Property "Functions" FunctionDefinitionVersionProperty where
  type PropertyType "Functions" FunctionDefinitionVersionProperty = [FunctionProperty]
  set newValue FunctionDefinitionVersionProperty {..}
    = FunctionDefinitionVersionProperty {functions = newValue, ..}