module Stratosphere.Greengrass.FunctionDefinition.DefaultConfigProperty (
        module Exports, DefaultConfigProperty(..), mkDefaultConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.FunctionDefinition.ExecutionProperty as Exports
import Stratosphere.ResourceProperties
data DefaultConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-defaultconfig.html>
    DefaultConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-defaultconfig.html#cfn-greengrass-functiondefinition-defaultconfig-execution>
                           execution :: ExecutionProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultConfigProperty ::
  ExecutionProperty -> DefaultConfigProperty
mkDefaultConfigProperty execution
  = DefaultConfigProperty
      {haddock_workaround_ = (), execution = execution}
instance ToResourceProperties DefaultConfigProperty where
  toResourceProperties DefaultConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::FunctionDefinition.DefaultConfig",
         supportsTags = Prelude.False,
         properties = ["Execution" JSON..= execution]}
instance JSON.ToJSON DefaultConfigProperty where
  toJSON DefaultConfigProperty {..}
    = JSON.object ["Execution" JSON..= execution]
instance Property "Execution" DefaultConfigProperty where
  type PropertyType "Execution" DefaultConfigProperty = ExecutionProperty
  set newValue DefaultConfigProperty {..}
    = DefaultConfigProperty {execution = newValue, ..}