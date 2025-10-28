module Stratosphere.Connect.RoutingProfile.MediaConcurrencyProperty (
        module Exports, MediaConcurrencyProperty(..),
        mkMediaConcurrencyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.RoutingProfile.CrossChannelBehaviorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MediaConcurrencyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-routingprofile-mediaconcurrency.html>
    MediaConcurrencyProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-routingprofile-mediaconcurrency.html#cfn-connect-routingprofile-mediaconcurrency-channel>
                              channel :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-routingprofile-mediaconcurrency.html#cfn-connect-routingprofile-mediaconcurrency-concurrency>
                              concurrency :: (Value Prelude.Integer),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-routingprofile-mediaconcurrency.html#cfn-connect-routingprofile-mediaconcurrency-crosschannelbehavior>
                              crossChannelBehavior :: (Prelude.Maybe CrossChannelBehaviorProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaConcurrencyProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> MediaConcurrencyProperty
mkMediaConcurrencyProperty channel concurrency
  = MediaConcurrencyProperty
      {haddock_workaround_ = (), channel = channel,
       concurrency = concurrency, crossChannelBehavior = Prelude.Nothing}
instance ToResourceProperties MediaConcurrencyProperty where
  toResourceProperties MediaConcurrencyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::RoutingProfile.MediaConcurrency",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Channel" JSON..= channel, "Concurrency" JSON..= concurrency]
                           (Prelude.catMaybes
                              [(JSON..=) "CrossChannelBehavior"
                                 Prelude.<$> crossChannelBehavior]))}
instance JSON.ToJSON MediaConcurrencyProperty where
  toJSON MediaConcurrencyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Channel" JSON..= channel, "Concurrency" JSON..= concurrency]
              (Prelude.catMaybes
                 [(JSON..=) "CrossChannelBehavior"
                    Prelude.<$> crossChannelBehavior])))
instance Property "Channel" MediaConcurrencyProperty where
  type PropertyType "Channel" MediaConcurrencyProperty = Value Prelude.Text
  set newValue MediaConcurrencyProperty {..}
    = MediaConcurrencyProperty {channel = newValue, ..}
instance Property "Concurrency" MediaConcurrencyProperty where
  type PropertyType "Concurrency" MediaConcurrencyProperty = Value Prelude.Integer
  set newValue MediaConcurrencyProperty {..}
    = MediaConcurrencyProperty {concurrency = newValue, ..}
instance Property "CrossChannelBehavior" MediaConcurrencyProperty where
  type PropertyType "CrossChannelBehavior" MediaConcurrencyProperty = CrossChannelBehaviorProperty
  set newValue MediaConcurrencyProperty {..}
    = MediaConcurrencyProperty
        {crossChannelBehavior = Prelude.pure newValue, ..}