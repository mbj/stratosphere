module Stratosphere.Greengrass.CoreDefinition (
        module Exports, CoreDefinition(..), mkCoreDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.CoreDefinition.CoreDefinitionVersionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CoreDefinition
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinition.html>
    CoreDefinition {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinition.html#cfn-greengrass-coredefinition-initialversion>
                    initialVersion :: (Prelude.Maybe CoreDefinitionVersionProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinition.html#cfn-greengrass-coredefinition-name>
                    name :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinition.html#cfn-greengrass-coredefinition-tags>
                    tags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCoreDefinition :: Value Prelude.Text -> CoreDefinition
mkCoreDefinition name
  = CoreDefinition
      {haddock_workaround_ = (), name = name,
       initialVersion = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CoreDefinition where
  toResourceProperties CoreDefinition {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::CoreDefinition",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CoreDefinition where
  toJSON CoreDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "InitialVersion" CoreDefinition where
  type PropertyType "InitialVersion" CoreDefinition = CoreDefinitionVersionProperty
  set newValue CoreDefinition {..}
    = CoreDefinition {initialVersion = Prelude.pure newValue, ..}
instance Property "Name" CoreDefinition where
  type PropertyType "Name" CoreDefinition = Value Prelude.Text
  set newValue CoreDefinition {..}
    = CoreDefinition {name = newValue, ..}
instance Property "Tags" CoreDefinition where
  type PropertyType "Tags" CoreDefinition = JSON.Object
  set newValue CoreDefinition {..}
    = CoreDefinition {tags = Prelude.pure newValue, ..}