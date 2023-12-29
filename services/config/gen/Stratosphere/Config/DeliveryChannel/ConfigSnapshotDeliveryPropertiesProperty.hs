module Stratosphere.Config.DeliveryChannel.ConfigSnapshotDeliveryPropertiesProperty (
        ConfigSnapshotDeliveryPropertiesProperty(..),
        mkConfigSnapshotDeliveryPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigSnapshotDeliveryPropertiesProperty
  = ConfigSnapshotDeliveryPropertiesProperty {deliveryFrequency :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigSnapshotDeliveryPropertiesProperty ::
  ConfigSnapshotDeliveryPropertiesProperty
mkConfigSnapshotDeliveryPropertiesProperty
  = ConfigSnapshotDeliveryPropertiesProperty
      {deliveryFrequency = Prelude.Nothing}
instance ToResourceProperties ConfigSnapshotDeliveryPropertiesProperty where
  toResourceProperties ConfigSnapshotDeliveryPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::DeliveryChannel.ConfigSnapshotDeliveryProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeliveryFrequency" Prelude.<$> deliveryFrequency])}
instance JSON.ToJSON ConfigSnapshotDeliveryPropertiesProperty where
  toJSON ConfigSnapshotDeliveryPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeliveryFrequency" Prelude.<$> deliveryFrequency]))
instance Property "DeliveryFrequency" ConfigSnapshotDeliveryPropertiesProperty where
  type PropertyType "DeliveryFrequency" ConfigSnapshotDeliveryPropertiesProperty = Value Prelude.Text
  set newValue ConfigSnapshotDeliveryPropertiesProperty {}
    = ConfigSnapshotDeliveryPropertiesProperty
        {deliveryFrequency = Prelude.pure newValue, ..}