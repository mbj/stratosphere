module Stratosphere.SES.ConfigurationSet (
        module Exports, ConfigurationSet(..), mkConfigurationSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSet.DeliveryOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSet.ReputationOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSet.SendingOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSet.SuppressionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSet.TrackingOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSet.VdmOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationSet
  = ConfigurationSet {deliveryOptions :: (Prelude.Maybe DeliveryOptionsProperty),
                      name :: (Prelude.Maybe (Value Prelude.Text)),
                      reputationOptions :: (Prelude.Maybe ReputationOptionsProperty),
                      sendingOptions :: (Prelude.Maybe SendingOptionsProperty),
                      suppressionOptions :: (Prelude.Maybe SuppressionOptionsProperty),
                      trackingOptions :: (Prelude.Maybe TrackingOptionsProperty),
                      vdmOptions :: (Prelude.Maybe VdmOptionsProperty)}
mkConfigurationSet :: ConfigurationSet
mkConfigurationSet
  = ConfigurationSet
      {deliveryOptions = Prelude.Nothing, name = Prelude.Nothing,
       reputationOptions = Prelude.Nothing,
       sendingOptions = Prelude.Nothing,
       suppressionOptions = Prelude.Nothing,
       trackingOptions = Prelude.Nothing, vdmOptions = Prelude.Nothing}
instance ToResourceProperties ConfigurationSet where
  toResourceProperties ConfigurationSet {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeliveryOptions" Prelude.<$> deliveryOptions,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "ReputationOptions" Prelude.<$> reputationOptions,
                            (JSON..=) "SendingOptions" Prelude.<$> sendingOptions,
                            (JSON..=) "SuppressionOptions" Prelude.<$> suppressionOptions,
                            (JSON..=) "TrackingOptions" Prelude.<$> trackingOptions,
                            (JSON..=) "VdmOptions" Prelude.<$> vdmOptions])}
instance JSON.ToJSON ConfigurationSet where
  toJSON ConfigurationSet {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeliveryOptions" Prelude.<$> deliveryOptions,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "ReputationOptions" Prelude.<$> reputationOptions,
               (JSON..=) "SendingOptions" Prelude.<$> sendingOptions,
               (JSON..=) "SuppressionOptions" Prelude.<$> suppressionOptions,
               (JSON..=) "TrackingOptions" Prelude.<$> trackingOptions,
               (JSON..=) "VdmOptions" Prelude.<$> vdmOptions]))
instance Property "DeliveryOptions" ConfigurationSet where
  type PropertyType "DeliveryOptions" ConfigurationSet = DeliveryOptionsProperty
  set newValue ConfigurationSet {..}
    = ConfigurationSet {deliveryOptions = Prelude.pure newValue, ..}
instance Property "Name" ConfigurationSet where
  type PropertyType "Name" ConfigurationSet = Value Prelude.Text
  set newValue ConfigurationSet {..}
    = ConfigurationSet {name = Prelude.pure newValue, ..}
instance Property "ReputationOptions" ConfigurationSet where
  type PropertyType "ReputationOptions" ConfigurationSet = ReputationOptionsProperty
  set newValue ConfigurationSet {..}
    = ConfigurationSet {reputationOptions = Prelude.pure newValue, ..}
instance Property "SendingOptions" ConfigurationSet where
  type PropertyType "SendingOptions" ConfigurationSet = SendingOptionsProperty
  set newValue ConfigurationSet {..}
    = ConfigurationSet {sendingOptions = Prelude.pure newValue, ..}
instance Property "SuppressionOptions" ConfigurationSet where
  type PropertyType "SuppressionOptions" ConfigurationSet = SuppressionOptionsProperty
  set newValue ConfigurationSet {..}
    = ConfigurationSet {suppressionOptions = Prelude.pure newValue, ..}
instance Property "TrackingOptions" ConfigurationSet where
  type PropertyType "TrackingOptions" ConfigurationSet = TrackingOptionsProperty
  set newValue ConfigurationSet {..}
    = ConfigurationSet {trackingOptions = Prelude.pure newValue, ..}
instance Property "VdmOptions" ConfigurationSet where
  type PropertyType "VdmOptions" ConfigurationSet = VdmOptionsProperty
  set newValue ConfigurationSet {..}
    = ConfigurationSet {vdmOptions = Prelude.pure newValue, ..}