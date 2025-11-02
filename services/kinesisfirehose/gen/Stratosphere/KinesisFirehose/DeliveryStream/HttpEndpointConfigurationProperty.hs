module Stratosphere.KinesisFirehose.DeliveryStream.HttpEndpointConfigurationProperty (
        HttpEndpointConfigurationProperty(..),
        mkHttpEndpointConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpEndpointConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointconfiguration.html>
    HttpEndpointConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointconfiguration-accesskey>
                                       accessKey :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointconfiguration-name>
                                       name :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointconfiguration-url>
                                       url :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpEndpointConfigurationProperty ::
  Value Prelude.Text -> HttpEndpointConfigurationProperty
mkHttpEndpointConfigurationProperty url
  = HttpEndpointConfigurationProperty
      {haddock_workaround_ = (), url = url, accessKey = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties HttpEndpointConfigurationProperty where
  toResourceProperties HttpEndpointConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.HttpEndpointConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Url" JSON..= url]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessKey" Prelude.<$> accessKey,
                               (JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON HttpEndpointConfigurationProperty where
  toJSON HttpEndpointConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Url" JSON..= url]
              (Prelude.catMaybes
                 [(JSON..=) "AccessKey" Prelude.<$> accessKey,
                  (JSON..=) "Name" Prelude.<$> name])))
instance Property "AccessKey" HttpEndpointConfigurationProperty where
  type PropertyType "AccessKey" HttpEndpointConfigurationProperty = Value Prelude.Text
  set newValue HttpEndpointConfigurationProperty {..}
    = HttpEndpointConfigurationProperty
        {accessKey = Prelude.pure newValue, ..}
instance Property "Name" HttpEndpointConfigurationProperty where
  type PropertyType "Name" HttpEndpointConfigurationProperty = Value Prelude.Text
  set newValue HttpEndpointConfigurationProperty {..}
    = HttpEndpointConfigurationProperty
        {name = Prelude.pure newValue, ..}
instance Property "Url" HttpEndpointConfigurationProperty where
  type PropertyType "Url" HttpEndpointConfigurationProperty = Value Prelude.Text
  set newValue HttpEndpointConfigurationProperty {..}
    = HttpEndpointConfigurationProperty {url = newValue, ..}