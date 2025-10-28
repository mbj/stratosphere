module Stratosphere.Greengrass.ConnectorDefinition (
        module Exports, ConnectorDefinition(..), mkConnectorDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.ConnectorDefinition.ConnectorDefinitionVersionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectorDefinition
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinition.html>
    ConnectorDefinition {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinition.html#cfn-greengrass-connectordefinition-initialversion>
                         initialVersion :: (Prelude.Maybe ConnectorDefinitionVersionProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinition.html#cfn-greengrass-connectordefinition-name>
                         name :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinition.html#cfn-greengrass-connectordefinition-tags>
                         tags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectorDefinition :: Value Prelude.Text -> ConnectorDefinition
mkConnectorDefinition name
  = ConnectorDefinition
      {haddock_workaround_ = (), name = name,
       initialVersion = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ConnectorDefinition where
  toResourceProperties ConnectorDefinition {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ConnectorDefinition",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ConnectorDefinition where
  toJSON ConnectorDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "InitialVersion" ConnectorDefinition where
  type PropertyType "InitialVersion" ConnectorDefinition = ConnectorDefinitionVersionProperty
  set newValue ConnectorDefinition {..}
    = ConnectorDefinition {initialVersion = Prelude.pure newValue, ..}
instance Property "Name" ConnectorDefinition where
  type PropertyType "Name" ConnectorDefinition = Value Prelude.Text
  set newValue ConnectorDefinition {..}
    = ConnectorDefinition {name = newValue, ..}
instance Property "Tags" ConnectorDefinition where
  type PropertyType "Tags" ConnectorDefinition = JSON.Object
  set newValue ConnectorDefinition {..}
    = ConnectorDefinition {tags = Prelude.pure newValue, ..}