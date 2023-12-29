module Stratosphere.Greengrass.FunctionDefinitionVersion.DefaultConfigProperty (
        module Exports, DefaultConfigProperty(..), mkDefaultConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.FunctionDefinitionVersion.ExecutionProperty as Exports
import Stratosphere.ResourceProperties
data DefaultConfigProperty
  = DefaultConfigProperty {execution :: ExecutionProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultConfigProperty ::
  ExecutionProperty -> DefaultConfigProperty
mkDefaultConfigProperty execution
  = DefaultConfigProperty {execution = execution}
instance ToResourceProperties DefaultConfigProperty where
  toResourceProperties DefaultConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::FunctionDefinitionVersion.DefaultConfig",
         supportsTags = Prelude.False,
         properties = ["Execution" JSON..= execution]}
instance JSON.ToJSON DefaultConfigProperty where
  toJSON DefaultConfigProperty {..}
    = JSON.object ["Execution" JSON..= execution]
instance Property "Execution" DefaultConfigProperty where
  type PropertyType "Execution" DefaultConfigProperty = ExecutionProperty
  set newValue DefaultConfigProperty {}
    = DefaultConfigProperty {execution = newValue, ..}