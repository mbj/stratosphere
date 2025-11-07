module Stratosphere.IoT.Command (
        module Exports, Command(..), mkCommand
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.Command.CommandParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.Command.CommandPayloadProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Command
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-command.html>
    Command {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-command.html#cfn-iot-command-commandid>
             commandId :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-command.html#cfn-iot-command-createdat>
             createdAt :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-command.html#cfn-iot-command-deprecated>
             deprecated :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-command.html#cfn-iot-command-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-command.html#cfn-iot-command-displayname>
             displayName :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-command.html#cfn-iot-command-lastupdatedat>
             lastUpdatedAt :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-command.html#cfn-iot-command-mandatoryparameters>
             mandatoryParameters :: (Prelude.Maybe [CommandParameterProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-command.html#cfn-iot-command-namespace>
             namespace :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-command.html#cfn-iot-command-payload>
             payload :: (Prelude.Maybe CommandPayloadProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-command.html#cfn-iot-command-pendingdeletion>
             pendingDeletion :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-command.html#cfn-iot-command-rolearn>
             roleArn :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-command.html#cfn-iot-command-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCommand :: Value Prelude.Text -> Command
mkCommand commandId
  = Command
      {haddock_workaround_ = (), commandId = commandId,
       createdAt = Prelude.Nothing, deprecated = Prelude.Nothing,
       description = Prelude.Nothing, displayName = Prelude.Nothing,
       lastUpdatedAt = Prelude.Nothing,
       mandatoryParameters = Prelude.Nothing, namespace = Prelude.Nothing,
       payload = Prelude.Nothing, pendingDeletion = Prelude.Nothing,
       roleArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Command where
  toResourceProperties Command {..}
    = ResourceProperties
        {awsType = "AWS::IoT::Command", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CommandId" JSON..= commandId]
                           (Prelude.catMaybes
                              [(JSON..=) "CreatedAt" Prelude.<$> createdAt,
                               (JSON..=) "Deprecated" Prelude.<$> deprecated,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DisplayName" Prelude.<$> displayName,
                               (JSON..=) "LastUpdatedAt" Prelude.<$> lastUpdatedAt,
                               (JSON..=) "MandatoryParameters" Prelude.<$> mandatoryParameters,
                               (JSON..=) "Namespace" Prelude.<$> namespace,
                               (JSON..=) "Payload" Prelude.<$> payload,
                               (JSON..=) "PendingDeletion" Prelude.<$> pendingDeletion,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Command where
  toJSON Command {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CommandId" JSON..= commandId]
              (Prelude.catMaybes
                 [(JSON..=) "CreatedAt" Prelude.<$> createdAt,
                  (JSON..=) "Deprecated" Prelude.<$> deprecated,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DisplayName" Prelude.<$> displayName,
                  (JSON..=) "LastUpdatedAt" Prelude.<$> lastUpdatedAt,
                  (JSON..=) "MandatoryParameters" Prelude.<$> mandatoryParameters,
                  (JSON..=) "Namespace" Prelude.<$> namespace,
                  (JSON..=) "Payload" Prelude.<$> payload,
                  (JSON..=) "PendingDeletion" Prelude.<$> pendingDeletion,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CommandId" Command where
  type PropertyType "CommandId" Command = Value Prelude.Text
  set newValue Command {..} = Command {commandId = newValue, ..}
instance Property "CreatedAt" Command where
  type PropertyType "CreatedAt" Command = Value Prelude.Text
  set newValue Command {..}
    = Command {createdAt = Prelude.pure newValue, ..}
instance Property "Deprecated" Command where
  type PropertyType "Deprecated" Command = Value Prelude.Bool
  set newValue Command {..}
    = Command {deprecated = Prelude.pure newValue, ..}
instance Property "Description" Command where
  type PropertyType "Description" Command = Value Prelude.Text
  set newValue Command {..}
    = Command {description = Prelude.pure newValue, ..}
instance Property "DisplayName" Command where
  type PropertyType "DisplayName" Command = Value Prelude.Text
  set newValue Command {..}
    = Command {displayName = Prelude.pure newValue, ..}
instance Property "LastUpdatedAt" Command where
  type PropertyType "LastUpdatedAt" Command = Value Prelude.Text
  set newValue Command {..}
    = Command {lastUpdatedAt = Prelude.pure newValue, ..}
instance Property "MandatoryParameters" Command where
  type PropertyType "MandatoryParameters" Command = [CommandParameterProperty]
  set newValue Command {..}
    = Command {mandatoryParameters = Prelude.pure newValue, ..}
instance Property "Namespace" Command where
  type PropertyType "Namespace" Command = Value Prelude.Text
  set newValue Command {..}
    = Command {namespace = Prelude.pure newValue, ..}
instance Property "Payload" Command where
  type PropertyType "Payload" Command = CommandPayloadProperty
  set newValue Command {..}
    = Command {payload = Prelude.pure newValue, ..}
instance Property "PendingDeletion" Command where
  type PropertyType "PendingDeletion" Command = Value Prelude.Bool
  set newValue Command {..}
    = Command {pendingDeletion = Prelude.pure newValue, ..}
instance Property "RoleArn" Command where
  type PropertyType "RoleArn" Command = Value Prelude.Text
  set newValue Command {..}
    = Command {roleArn = Prelude.pure newValue, ..}
instance Property "Tags" Command where
  type PropertyType "Tags" Command = [Tag]
  set newValue Command {..}
    = Command {tags = Prelude.pure newValue, ..}