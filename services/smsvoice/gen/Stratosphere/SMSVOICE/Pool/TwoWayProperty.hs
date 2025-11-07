module Stratosphere.SMSVOICE.Pool.TwoWayProperty (
        TwoWayProperty(..), mkTwoWayProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TwoWayProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-pool-twoway.html>
    TwoWayProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-pool-twoway.html#cfn-smsvoice-pool-twoway-channelarn>
                    channelArn :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-pool-twoway.html#cfn-smsvoice-pool-twoway-channelrole>
                    channelRole :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-pool-twoway.html#cfn-smsvoice-pool-twoway-enabled>
                    enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTwoWayProperty :: Value Prelude.Bool -> TwoWayProperty
mkTwoWayProperty enabled
  = TwoWayProperty
      {haddock_workaround_ = (), enabled = enabled,
       channelArn = Prelude.Nothing, channelRole = Prelude.Nothing}
instance ToResourceProperties TwoWayProperty where
  toResourceProperties TwoWayProperty {..}
    = ResourceProperties
        {awsType = "AWS::SMSVOICE::Pool.TwoWay",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "ChannelArn" Prelude.<$> channelArn,
                               (JSON..=) "ChannelRole" Prelude.<$> channelRole]))}
instance JSON.ToJSON TwoWayProperty where
  toJSON TwoWayProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "ChannelArn" Prelude.<$> channelArn,
                  (JSON..=) "ChannelRole" Prelude.<$> channelRole])))
instance Property "ChannelArn" TwoWayProperty where
  type PropertyType "ChannelArn" TwoWayProperty = Value Prelude.Text
  set newValue TwoWayProperty {..}
    = TwoWayProperty {channelArn = Prelude.pure newValue, ..}
instance Property "ChannelRole" TwoWayProperty where
  type PropertyType "ChannelRole" TwoWayProperty = Value Prelude.Text
  set newValue TwoWayProperty {..}
    = TwoWayProperty {channelRole = Prelude.pure newValue, ..}
instance Property "Enabled" TwoWayProperty where
  type PropertyType "Enabled" TwoWayProperty = Value Prelude.Bool
  set newValue TwoWayProperty {..}
    = TwoWayProperty {enabled = newValue, ..}