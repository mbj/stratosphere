module Stratosphere.Logs.DeliverySource (
        DeliverySource(..), mkDeliverySource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DeliverySource
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-deliverysource.html>
    DeliverySource {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-deliverysource.html#cfn-logs-deliverysource-logtype>
                    logType :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-deliverysource.html#cfn-logs-deliverysource-name>
                    name :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-deliverysource.html#cfn-logs-deliverysource-resourcearn>
                    resourceArn :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-deliverysource.html#cfn-logs-deliverysource-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeliverySource :: Value Prelude.Text -> DeliverySource
mkDeliverySource name
  = DeliverySource
      {haddock_workaround_ = (), name = name, logType = Prelude.Nothing,
       resourceArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DeliverySource where
  toResourceProperties DeliverySource {..}
    = ResourceProperties
        {awsType = "AWS::Logs::DeliverySource",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "LogType" Prelude.<$> logType,
                               (JSON..=) "ResourceArn" Prelude.<$> resourceArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DeliverySource where
  toJSON DeliverySource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "LogType" Prelude.<$> logType,
                  (JSON..=) "ResourceArn" Prelude.<$> resourceArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "LogType" DeliverySource where
  type PropertyType "LogType" DeliverySource = Value Prelude.Text
  set newValue DeliverySource {..}
    = DeliverySource {logType = Prelude.pure newValue, ..}
instance Property "Name" DeliverySource where
  type PropertyType "Name" DeliverySource = Value Prelude.Text
  set newValue DeliverySource {..}
    = DeliverySource {name = newValue, ..}
instance Property "ResourceArn" DeliverySource where
  type PropertyType "ResourceArn" DeliverySource = Value Prelude.Text
  set newValue DeliverySource {..}
    = DeliverySource {resourceArn = Prelude.pure newValue, ..}
instance Property "Tags" DeliverySource where
  type PropertyType "Tags" DeliverySource = [Tag]
  set newValue DeliverySource {..}
    = DeliverySource {tags = Prelude.pure newValue, ..}