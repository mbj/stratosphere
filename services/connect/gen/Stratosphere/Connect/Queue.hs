module Stratosphere.Connect.Queue (
        module Exports, Queue(..), mkQueue
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.Queue.OutboundCallerConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Queue
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-queue.html>
    Queue {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-queue.html#cfn-connect-queue-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-queue.html#cfn-connect-queue-hoursofoperationarn>
           hoursOfOperationArn :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-queue.html#cfn-connect-queue-instancearn>
           instanceArn :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-queue.html#cfn-connect-queue-maxcontacts>
           maxContacts :: (Prelude.Maybe (Value Prelude.Integer)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-queue.html#cfn-connect-queue-name>
           name :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-queue.html#cfn-connect-queue-outboundcallerconfig>
           outboundCallerConfig :: (Prelude.Maybe OutboundCallerConfigProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-queue.html#cfn-connect-queue-quickconnectarns>
           quickConnectArns :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-queue.html#cfn-connect-queue-status>
           status :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-queue.html#cfn-connect-queue-tags>
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueue ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Queue
mkQueue hoursOfOperationArn instanceArn name
  = Queue
      {haddock_workaround_ = (),
       hoursOfOperationArn = hoursOfOperationArn,
       instanceArn = instanceArn, name = name,
       description = Prelude.Nothing, maxContacts = Prelude.Nothing,
       outboundCallerConfig = Prelude.Nothing,
       quickConnectArns = Prelude.Nothing, status = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Queue where
  toResourceProperties Queue {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Queue", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HoursOfOperationArn" JSON..= hoursOfOperationArn,
                            "InstanceArn" JSON..= instanceArn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "MaxContacts" Prelude.<$> maxContacts,
                               (JSON..=) "OutboundCallerConfig" Prelude.<$> outboundCallerConfig,
                               (JSON..=) "QuickConnectArns" Prelude.<$> quickConnectArns,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Queue where
  toJSON Queue {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HoursOfOperationArn" JSON..= hoursOfOperationArn,
               "InstanceArn" JSON..= instanceArn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "MaxContacts" Prelude.<$> maxContacts,
                  (JSON..=) "OutboundCallerConfig" Prelude.<$> outboundCallerConfig,
                  (JSON..=) "QuickConnectArns" Prelude.<$> quickConnectArns,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Queue where
  type PropertyType "Description" Queue = Value Prelude.Text
  set newValue Queue {..}
    = Queue {description = Prelude.pure newValue, ..}
instance Property "HoursOfOperationArn" Queue where
  type PropertyType "HoursOfOperationArn" Queue = Value Prelude.Text
  set newValue Queue {..}
    = Queue {hoursOfOperationArn = newValue, ..}
instance Property "InstanceArn" Queue where
  type PropertyType "InstanceArn" Queue = Value Prelude.Text
  set newValue Queue {..} = Queue {instanceArn = newValue, ..}
instance Property "MaxContacts" Queue where
  type PropertyType "MaxContacts" Queue = Value Prelude.Integer
  set newValue Queue {..}
    = Queue {maxContacts = Prelude.pure newValue, ..}
instance Property "Name" Queue where
  type PropertyType "Name" Queue = Value Prelude.Text
  set newValue Queue {..} = Queue {name = newValue, ..}
instance Property "OutboundCallerConfig" Queue where
  type PropertyType "OutboundCallerConfig" Queue = OutboundCallerConfigProperty
  set newValue Queue {..}
    = Queue {outboundCallerConfig = Prelude.pure newValue, ..}
instance Property "QuickConnectArns" Queue where
  type PropertyType "QuickConnectArns" Queue = ValueList Prelude.Text
  set newValue Queue {..}
    = Queue {quickConnectArns = Prelude.pure newValue, ..}
instance Property "Status" Queue where
  type PropertyType "Status" Queue = Value Prelude.Text
  set newValue Queue {..}
    = Queue {status = Prelude.pure newValue, ..}
instance Property "Tags" Queue where
  type PropertyType "Tags" Queue = [Tag]
  set newValue Queue {..} = Queue {tags = Prelude.pure newValue, ..}