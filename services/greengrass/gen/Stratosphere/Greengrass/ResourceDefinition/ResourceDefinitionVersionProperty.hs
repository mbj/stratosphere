module Stratosphere.Greengrass.ResourceDefinition.ResourceDefinitionVersionProperty (
        module Exports, ResourceDefinitionVersionProperty(..),
        mkResourceDefinitionVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinition.ResourceInstanceProperty as Exports
import Stratosphere.ResourceProperties
data ResourceDefinitionVersionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedefinitionversion.html>
    ResourceDefinitionVersionProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedefinitionversion.html#cfn-greengrass-resourcedefinition-resourcedefinitionversion-resources>
                                       resources :: [ResourceInstanceProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceDefinitionVersionProperty ::
  [ResourceInstanceProperty] -> ResourceDefinitionVersionProperty
mkResourceDefinitionVersionProperty resources
  = ResourceDefinitionVersionProperty
      {haddock_workaround_ = (), resources = resources}
instance ToResourceProperties ResourceDefinitionVersionProperty where
  toResourceProperties ResourceDefinitionVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinition.ResourceDefinitionVersion",
         supportsTags = Prelude.False,
         properties = ["Resources" JSON..= resources]}
instance JSON.ToJSON ResourceDefinitionVersionProperty where
  toJSON ResourceDefinitionVersionProperty {..}
    = JSON.object ["Resources" JSON..= resources]
instance Property "Resources" ResourceDefinitionVersionProperty where
  type PropertyType "Resources" ResourceDefinitionVersionProperty = [ResourceInstanceProperty]
  set newValue ResourceDefinitionVersionProperty {..}
    = ResourceDefinitionVersionProperty {resources = newValue, ..}