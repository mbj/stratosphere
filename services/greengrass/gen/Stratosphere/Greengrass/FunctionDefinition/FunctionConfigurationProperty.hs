module Stratosphere.Greengrass.FunctionDefinition.FunctionConfigurationProperty (
        module Exports, FunctionConfigurationProperty(..),
        mkFunctionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.FunctionDefinition.EnvironmentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FunctionConfigurationProperty
  = FunctionConfigurationProperty {encodingType :: (Prelude.Maybe (Value Prelude.Text)),
                                   environment :: (Prelude.Maybe EnvironmentProperty),
                                   execArgs :: (Prelude.Maybe (Value Prelude.Text)),
                                   executable :: (Prelude.Maybe (Value Prelude.Text)),
                                   memorySize :: (Prelude.Maybe (Value Prelude.Integer)),
                                   pinned :: (Prelude.Maybe (Value Prelude.Bool)),
                                   timeout :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunctionConfigurationProperty :: FunctionConfigurationProperty
mkFunctionConfigurationProperty
  = FunctionConfigurationProperty
      {encodingType = Prelude.Nothing, environment = Prelude.Nothing,
       execArgs = Prelude.Nothing, executable = Prelude.Nothing,
       memorySize = Prelude.Nothing, pinned = Prelude.Nothing,
       timeout = Prelude.Nothing}
instance ToResourceProperties FunctionConfigurationProperty where
  toResourceProperties FunctionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::FunctionDefinition.FunctionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EncodingType" Prelude.<$> encodingType,
                            (JSON..=) "Environment" Prelude.<$> environment,
                            (JSON..=) "ExecArgs" Prelude.<$> execArgs,
                            (JSON..=) "Executable" Prelude.<$> executable,
                            (JSON..=) "MemorySize" Prelude.<$> memorySize,
                            (JSON..=) "Pinned" Prelude.<$> pinned,
                            (JSON..=) "Timeout" Prelude.<$> timeout])}
instance JSON.ToJSON FunctionConfigurationProperty where
  toJSON FunctionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EncodingType" Prelude.<$> encodingType,
               (JSON..=) "Environment" Prelude.<$> environment,
               (JSON..=) "ExecArgs" Prelude.<$> execArgs,
               (JSON..=) "Executable" Prelude.<$> executable,
               (JSON..=) "MemorySize" Prelude.<$> memorySize,
               (JSON..=) "Pinned" Prelude.<$> pinned,
               (JSON..=) "Timeout" Prelude.<$> timeout]))
instance Property "EncodingType" FunctionConfigurationProperty where
  type PropertyType "EncodingType" FunctionConfigurationProperty = Value Prelude.Text
  set newValue FunctionConfigurationProperty {..}
    = FunctionConfigurationProperty
        {encodingType = Prelude.pure newValue, ..}
instance Property "Environment" FunctionConfigurationProperty where
  type PropertyType "Environment" FunctionConfigurationProperty = EnvironmentProperty
  set newValue FunctionConfigurationProperty {..}
    = FunctionConfigurationProperty
        {environment = Prelude.pure newValue, ..}
instance Property "ExecArgs" FunctionConfigurationProperty where
  type PropertyType "ExecArgs" FunctionConfigurationProperty = Value Prelude.Text
  set newValue FunctionConfigurationProperty {..}
    = FunctionConfigurationProperty
        {execArgs = Prelude.pure newValue, ..}
instance Property "Executable" FunctionConfigurationProperty where
  type PropertyType "Executable" FunctionConfigurationProperty = Value Prelude.Text
  set newValue FunctionConfigurationProperty {..}
    = FunctionConfigurationProperty
        {executable = Prelude.pure newValue, ..}
instance Property "MemorySize" FunctionConfigurationProperty where
  type PropertyType "MemorySize" FunctionConfigurationProperty = Value Prelude.Integer
  set newValue FunctionConfigurationProperty {..}
    = FunctionConfigurationProperty
        {memorySize = Prelude.pure newValue, ..}
instance Property "Pinned" FunctionConfigurationProperty where
  type PropertyType "Pinned" FunctionConfigurationProperty = Value Prelude.Bool
  set newValue FunctionConfigurationProperty {..}
    = FunctionConfigurationProperty
        {pinned = Prelude.pure newValue, ..}
instance Property "Timeout" FunctionConfigurationProperty where
  type PropertyType "Timeout" FunctionConfigurationProperty = Value Prelude.Integer
  set newValue FunctionConfigurationProperty {..}
    = FunctionConfigurationProperty
        {timeout = Prelude.pure newValue, ..}