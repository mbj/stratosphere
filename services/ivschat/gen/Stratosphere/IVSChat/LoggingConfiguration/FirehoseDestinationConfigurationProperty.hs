module Stratosphere.IVSChat.LoggingConfiguration.FirehoseDestinationConfigurationProperty (
        FirehoseDestinationConfigurationProperty(..),
        mkFirehoseDestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FirehoseDestinationConfigurationProperty
  = FirehoseDestinationConfigurationProperty {deliveryStreamName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFirehoseDestinationConfigurationProperty ::
  Value Prelude.Text -> FirehoseDestinationConfigurationProperty
mkFirehoseDestinationConfigurationProperty deliveryStreamName
  = FirehoseDestinationConfigurationProperty
      {deliveryStreamName = deliveryStreamName}
instance ToResourceProperties FirehoseDestinationConfigurationProperty where
  toResourceProperties FirehoseDestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVSChat::LoggingConfiguration.FirehoseDestinationConfiguration",
         supportsTags = Prelude.False,
         properties = ["DeliveryStreamName" JSON..= deliveryStreamName]}
instance JSON.ToJSON FirehoseDestinationConfigurationProperty where
  toJSON FirehoseDestinationConfigurationProperty {..}
    = JSON.object ["DeliveryStreamName" JSON..= deliveryStreamName]
instance Property "DeliveryStreamName" FirehoseDestinationConfigurationProperty where
  type PropertyType "DeliveryStreamName" FirehoseDestinationConfigurationProperty = Value Prelude.Text
  set newValue FirehoseDestinationConfigurationProperty {}
    = FirehoseDestinationConfigurationProperty
        {deliveryStreamName = newValue, ..}