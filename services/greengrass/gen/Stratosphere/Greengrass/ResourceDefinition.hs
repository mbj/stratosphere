module Stratosphere.Greengrass.ResourceDefinition (
        module Exports, ResourceDefinition(..), mkResourceDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinition.ResourceDefinitionVersionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceDefinition
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html>
    ResourceDefinition {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html#cfn-greengrass-resourcedefinition-initialversion>
                        initialVersion :: (Prelude.Maybe ResourceDefinitionVersionProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html#cfn-greengrass-resourcedefinition-name>
                        name :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html#cfn-greengrass-resourcedefinition-tags>
                        tags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceDefinition :: Value Prelude.Text -> ResourceDefinition
mkResourceDefinition name
  = ResourceDefinition
      {haddock_workaround_ = (), name = name,
       initialVersion = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ResourceDefinition where
  toResourceProperties ResourceDefinition {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinition",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ResourceDefinition where
  toJSON ResourceDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "InitialVersion" ResourceDefinition where
  type PropertyType "InitialVersion" ResourceDefinition = ResourceDefinitionVersionProperty
  set newValue ResourceDefinition {..}
    = ResourceDefinition {initialVersion = Prelude.pure newValue, ..}
instance Property "Name" ResourceDefinition where
  type PropertyType "Name" ResourceDefinition = Value Prelude.Text
  set newValue ResourceDefinition {..}
    = ResourceDefinition {name = newValue, ..}
instance Property "Tags" ResourceDefinition where
  type PropertyType "Tags" ResourceDefinition = JSON.Object
  set newValue ResourceDefinition {..}
    = ResourceDefinition {tags = Prelude.pure newValue, ..}