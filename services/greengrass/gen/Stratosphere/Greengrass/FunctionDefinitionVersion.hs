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
  = FunctionDefinitionVersion {defaultConfig :: (Prelude.Maybe DefaultConfigProperty),
                               functionDefinitionId :: (Value Prelude.Text),
                               functions :: [FunctionProperty]}
mkFunctionDefinitionVersion ::
  Value Prelude.Text
  -> [FunctionProperty] -> FunctionDefinitionVersion
mkFunctionDefinitionVersion functionDefinitionId functions
  = FunctionDefinitionVersion
      {functionDefinitionId = functionDefinitionId,
       functions = functions, defaultConfig = Prelude.Nothing}
instance ToResourceProperties FunctionDefinitionVersion where
  toResourceProperties FunctionDefinitionVersion {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::FunctionDefinitionVersion",
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