module Stratosphere.Greengrass.FunctionDefinitionVersion (
        module Exports, FunctionDefinitionVersion(..),
        mkFunctionDefinitionVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.FunctionDefinitionVersion.DefaultConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Greengrass.FunctionDefinitionVersion.FunctionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FunctionDefinitionVersion
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinitionversion.html>
    FunctionDefinitionVersion {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinitionversion.html#cfn-greengrass-functiondefinitionversion-defaultconfig>
                               defaultConfig :: (Prelude.Maybe DefaultConfigProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinitionversion.html#cfn-greengrass-functiondefinitionversion-functiondefinitionid>
                               functionDefinitionId :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinitionversion.html#cfn-greengrass-functiondefinitionversion-functions>
                               functions :: [FunctionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunctionDefinitionVersion ::
  Value Prelude.Text
  -> [FunctionProperty] -> FunctionDefinitionVersion
mkFunctionDefinitionVersion functionDefinitionId functions
  = FunctionDefinitionVersion
      {haddock_workaround_ = (),
       functionDefinitionId = functionDefinitionId, functions = functions,
       defaultConfig = Prelude.Nothing}
instance ToResourceProperties FunctionDefinitionVersion where
  toResourceProperties FunctionDefinitionVersion {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::FunctionDefinitionVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FunctionDefinitionId" JSON..= functionDefinitionId,
                            "Functions" JSON..= functions]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultConfig" Prelude.<$> defaultConfig]))}
instance JSON.ToJSON FunctionDefinitionVersion where
  toJSON FunctionDefinitionVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FunctionDefinitionId" JSON..= functionDefinitionId,
               "Functions" JSON..= functions]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultConfig" Prelude.<$> defaultConfig])))
instance Property "DefaultConfig" FunctionDefinitionVersion where
  type PropertyType "DefaultConfig" FunctionDefinitionVersion = DefaultConfigProperty
  set newValue FunctionDefinitionVersion {..}
    = FunctionDefinitionVersion
        {defaultConfig = Prelude.pure newValue, ..}
instance Property "FunctionDefinitionId" FunctionDefinitionVersion where
  type PropertyType "FunctionDefinitionId" FunctionDefinitionVersion = Value Prelude.Text
  set newValue FunctionDefinitionVersion {..}
    = FunctionDefinitionVersion {functionDefinitionId = newValue, ..}
instance Property "Functions" FunctionDefinitionVersion where
  type PropertyType "Functions" FunctionDefinitionVersion = [FunctionProperty]
  set newValue FunctionDefinitionVersion {..}
    = FunctionDefinitionVersion {functions = newValue, ..}