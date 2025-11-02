module Stratosphere.Pinpoint.Campaign.CustomDeliveryConfigurationProperty (
        CustomDeliveryConfigurationProperty(..),
        mkCustomDeliveryConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomDeliveryConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-customdeliveryconfiguration.html>
    CustomDeliveryConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-customdeliveryconfiguration.html#cfn-pinpoint-campaign-customdeliveryconfiguration-deliveryuri>
                                         deliveryUri :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-customdeliveryconfiguration.html#cfn-pinpoint-campaign-customdeliveryconfiguration-endpointtypes>
                                         endpointTypes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomDeliveryConfigurationProperty ::
  CustomDeliveryConfigurationProperty
mkCustomDeliveryConfigurationProperty
  = CustomDeliveryConfigurationProperty
      {haddock_workaround_ = (), deliveryUri = Prelude.Nothing,
       endpointTypes = Prelude.Nothing}
instance ToResourceProperties CustomDeliveryConfigurationProperty where
  toResourceProperties CustomDeliveryConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.CustomDeliveryConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeliveryUri" Prelude.<$> deliveryUri,
                            (JSON..=) "EndpointTypes" Prelude.<$> endpointTypes])}
instance JSON.ToJSON CustomDeliveryConfigurationProperty where
  toJSON CustomDeliveryConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeliveryUri" Prelude.<$> deliveryUri,
               (JSON..=) "EndpointTypes" Prelude.<$> endpointTypes]))
instance Property "DeliveryUri" CustomDeliveryConfigurationProperty where
  type PropertyType "DeliveryUri" CustomDeliveryConfigurationProperty = Value Prelude.Text
  set newValue CustomDeliveryConfigurationProperty {..}
    = CustomDeliveryConfigurationProperty
        {deliveryUri = Prelude.pure newValue, ..}
instance Property "EndpointTypes" CustomDeliveryConfigurationProperty where
  type PropertyType "EndpointTypes" CustomDeliveryConfigurationProperty = ValueList Prelude.Text
  set newValue CustomDeliveryConfigurationProperty {..}
    = CustomDeliveryConfigurationProperty
        {endpointTypes = Prelude.pure newValue, ..}