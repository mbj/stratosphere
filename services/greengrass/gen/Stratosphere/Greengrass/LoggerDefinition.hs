module Stratosphere.Greengrass.LoggerDefinition (
        module Exports, LoggerDefinition(..), mkLoggerDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.LoggerDefinition.LoggerDefinitionVersionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggerDefinition
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinition.html>
    LoggerDefinition {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinition.html#cfn-greengrass-loggerdefinition-initialversion>
                      initialVersion :: (Prelude.Maybe LoggerDefinitionVersionProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinition.html#cfn-greengrass-loggerdefinition-name>
                      name :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinition.html#cfn-greengrass-loggerdefinition-tags>
                      tags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggerDefinition :: Value Prelude.Text -> LoggerDefinition
mkLoggerDefinition name
  = LoggerDefinition
      {haddock_workaround_ = (), name = name,
       initialVersion = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties LoggerDefinition where
  toResourceProperties LoggerDefinition {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::LoggerDefinition",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LoggerDefinition where
  toJSON LoggerDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "InitialVersion" LoggerDefinition where
  type PropertyType "InitialVersion" LoggerDefinition = LoggerDefinitionVersionProperty
  set newValue LoggerDefinition {..}
    = LoggerDefinition {initialVersion = Prelude.pure newValue, ..}
instance Property "Name" LoggerDefinition where
  type PropertyType "Name" LoggerDefinition = Value Prelude.Text
  set newValue LoggerDefinition {..}
    = LoggerDefinition {name = newValue, ..}
instance Property "Tags" LoggerDefinition where
  type PropertyType "Tags" LoggerDefinition = JSON.Object
  set newValue LoggerDefinition {..}
    = LoggerDefinition {tags = Prelude.pure newValue, ..}