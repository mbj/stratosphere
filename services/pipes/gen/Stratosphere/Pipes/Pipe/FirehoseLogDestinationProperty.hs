module Stratosphere.Pipes.Pipe.FirehoseLogDestinationProperty (
        FirehoseLogDestinationProperty(..),
        mkFirehoseLogDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FirehoseLogDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-firehoselogdestination.html>
    FirehoseLogDestinationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-firehoselogdestination.html#cfn-pipes-pipe-firehoselogdestination-deliverystreamarn>
                                    deliveryStreamArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFirehoseLogDestinationProperty :: FirehoseLogDestinationProperty
mkFirehoseLogDestinationProperty
  = FirehoseLogDestinationProperty
      {haddock_workaround_ = (), deliveryStreamArn = Prelude.Nothing}
instance ToResourceProperties FirehoseLogDestinationProperty where
  toResourceProperties FirehoseLogDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.FirehoseLogDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeliveryStreamArn" Prelude.<$> deliveryStreamArn])}
instance JSON.ToJSON FirehoseLogDestinationProperty where
  toJSON FirehoseLogDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeliveryStreamArn" Prelude.<$> deliveryStreamArn]))
instance Property "DeliveryStreamArn" FirehoseLogDestinationProperty where
  type PropertyType "DeliveryStreamArn" FirehoseLogDestinationProperty = Value Prelude.Text
  set newValue FirehoseLogDestinationProperty {..}
    = FirehoseLogDestinationProperty
        {deliveryStreamArn = Prelude.pure newValue, ..}