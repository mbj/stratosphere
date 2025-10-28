module Stratosphere.Greengrass.CoreDefinition.CoreDefinitionVersionProperty (
        module Exports, CoreDefinitionVersionProperty(..),
        mkCoreDefinitionVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.CoreDefinition.CoreProperty as Exports
import Stratosphere.ResourceProperties
data CoreDefinitionVersionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-coredefinitionversion.html>
    CoreDefinitionVersionProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-coredefinitionversion.html#cfn-greengrass-coredefinition-coredefinitionversion-cores>
                                   cores :: [CoreProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCoreDefinitionVersionProperty ::
  [CoreProperty] -> CoreDefinitionVersionProperty
mkCoreDefinitionVersionProperty cores
  = CoreDefinitionVersionProperty
      {haddock_workaround_ = (), cores = cores}
instance ToResourceProperties CoreDefinitionVersionProperty where
  toResourceProperties CoreDefinitionVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::CoreDefinition.CoreDefinitionVersion",
         supportsTags = Prelude.False, properties = ["Cores" JSON..= cores]}
instance JSON.ToJSON CoreDefinitionVersionProperty where
  toJSON CoreDefinitionVersionProperty {..}
    = JSON.object ["Cores" JSON..= cores]
instance Property "Cores" CoreDefinitionVersionProperty where
  type PropertyType "Cores" CoreDefinitionVersionProperty = [CoreProperty]
  set newValue CoreDefinitionVersionProperty {..}
    = CoreDefinitionVersionProperty {cores = newValue, ..}