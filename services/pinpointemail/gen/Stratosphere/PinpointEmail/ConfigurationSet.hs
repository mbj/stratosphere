module Stratosphere.PinpointEmail.ConfigurationSet (
        module Exports, ConfigurationSet(..), mkConfigurationSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PinpointEmail.ConfigurationSet.DeliveryOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.PinpointEmail.ConfigurationSet.ReputationOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.PinpointEmail.ConfigurationSet.SendingOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.PinpointEmail.ConfigurationSet.TagsProperty as Exports
import {-# SOURCE #-} Stratosphere.PinpointEmail.ConfigurationSet.TrackingOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationSet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html>
    ConfigurationSet {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-deliveryoptions>
                      deliveryOptions :: (Prelude.Maybe DeliveryOptionsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-name>
                      name :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-reputationoptions>
                      reputationOptions :: (Prelude.Maybe ReputationOptionsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-sendingoptions>
                      sendingOptions :: (Prelude.Maybe SendingOptionsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-tags>
                      tags :: (Prelude.Maybe [TagsProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-trackingoptions>
                      trackingOptions :: (Prelude.Maybe TrackingOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationSet :: Value Prelude.Text -> ConfigurationSet
mkConfigurationSet name
  = ConfigurationSet
      {haddock_workaround_ = (), name = name,
       deliveryOptions = Prelude.Nothing,
       reputationOptions = Prelude.Nothing,
       sendingOptions = Prelude.Nothing, tags = Prelude.Nothing,
       trackingOptions = Prelude.Nothing}
instance ToResourceProperties ConfigurationSet where
  toResourceProperties ConfigurationSet {..}
    = ResourceProperties
        {awsType = "AWS::PinpointEmail::ConfigurationSet",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DeliveryOptions" Prelude.<$> deliveryOptions,
                               (JSON..=) "ReputationOptions" Prelude.<$> reputationOptions,
                               (JSON..=) "SendingOptions" Prelude.<$> sendingOptions,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TrackingOptions" Prelude.<$> trackingOptions]))}
instance JSON.ToJSON ConfigurationSet where
  toJSON ConfigurationSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DeliveryOptions" Prelude.<$> deliveryOptions,
                  (JSON..=) "ReputationOptions" Prelude.<$> reputationOptions,
                  (JSON..=) "SendingOptions" Prelude.<$> sendingOptions,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TrackingOptions" Prelude.<$> trackingOptions])))
instance Property "DeliveryOptions" ConfigurationSet where
  type PropertyType "DeliveryOptions" ConfigurationSet = DeliveryOptionsProperty
  set newValue ConfigurationSet {..}
    = ConfigurationSet {deliveryOptions = Prelude.pure newValue, ..}
instance Property "Name" ConfigurationSet where
  type PropertyType "Name" ConfigurationSet = Value Prelude.Text
  set newValue ConfigurationSet {..}
    = ConfigurationSet {name = newValue, ..}
instance Property "ReputationOptions" ConfigurationSet where
  type PropertyType "ReputationOptions" ConfigurationSet = ReputationOptionsProperty
  set newValue ConfigurationSet {..}
    = ConfigurationSet {reputationOptions = Prelude.pure newValue, ..}
instance Property "SendingOptions" ConfigurationSet where
  type PropertyType "SendingOptions" ConfigurationSet = SendingOptionsProperty
  set newValue ConfigurationSet {..}
    = ConfigurationSet {sendingOptions = Prelude.pure newValue, ..}
instance Property "Tags" ConfigurationSet where
  type PropertyType "Tags" ConfigurationSet = [TagsProperty]
  set newValue ConfigurationSet {..}
    = ConfigurationSet {tags = Prelude.pure newValue, ..}
instance Property "TrackingOptions" ConfigurationSet where
  type PropertyType "TrackingOptions" ConfigurationSet = TrackingOptionsProperty
  set newValue ConfigurationSet {..}
    = ConfigurationSet {trackingOptions = Prelude.pure newValue, ..}