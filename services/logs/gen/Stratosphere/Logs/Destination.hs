module Stratosphere.Logs.Destination (
        Destination(..), mkDestination
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Destination
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html>
    Destination {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html#cfn-logs-destination-destinationname>
                 destinationName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html#cfn-logs-destination-destinationpolicy>
                 destinationPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html#cfn-logs-destination-rolearn>
                 roleArn :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html#cfn-logs-destination-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html#cfn-logs-destination-targetarn>
                 targetArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestination ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Destination
mkDestination destinationName roleArn targetArn
  = Destination
      {haddock_workaround_ = (), destinationName = destinationName,
       roleArn = roleArn, targetArn = targetArn,
       destinationPolicy = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Destination where
  toResourceProperties Destination {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Destination", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationName" JSON..= destinationName,
                            "RoleArn" JSON..= roleArn, "TargetArn" JSON..= targetArn]
                           (Prelude.catMaybes
                              [(JSON..=) "DestinationPolicy" Prelude.<$> destinationPolicy,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Destination where
  toJSON Destination {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationName" JSON..= destinationName,
               "RoleArn" JSON..= roleArn, "TargetArn" JSON..= targetArn]
              (Prelude.catMaybes
                 [(JSON..=) "DestinationPolicy" Prelude.<$> destinationPolicy,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DestinationName" Destination where
  type PropertyType "DestinationName" Destination = Value Prelude.Text
  set newValue Destination {..}
    = Destination {destinationName = newValue, ..}
instance Property "DestinationPolicy" Destination where
  type PropertyType "DestinationPolicy" Destination = Value Prelude.Text
  set newValue Destination {..}
    = Destination {destinationPolicy = Prelude.pure newValue, ..}
instance Property "RoleArn" Destination where
  type PropertyType "RoleArn" Destination = Value Prelude.Text
  set newValue Destination {..}
    = Destination {roleArn = newValue, ..}
instance Property "Tags" Destination where
  type PropertyType "Tags" Destination = [Tag]
  set newValue Destination {..}
    = Destination {tags = Prelude.pure newValue, ..}
instance Property "TargetArn" Destination where
  type PropertyType "TargetArn" Destination = Value Prelude.Text
  set newValue Destination {..}
    = Destination {targetArn = newValue, ..}