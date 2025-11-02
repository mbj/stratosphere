module Stratosphere.KinesisFirehose.DeliveryStream.HttpEndpointRequestConfigurationProperty (
        module Exports, HttpEndpointRequestConfigurationProperty(..),
        mkHttpEndpointRequestConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.HttpEndpointCommonAttributeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpEndpointRequestConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointrequestconfiguration.html>
    HttpEndpointRequestConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointrequestconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointrequestconfiguration-commonattributes>
                                              commonAttributes :: (Prelude.Maybe [HttpEndpointCommonAttributeProperty]),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointrequestconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointrequestconfiguration-contentencoding>
                                              contentEncoding :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpEndpointRequestConfigurationProperty ::
  HttpEndpointRequestConfigurationProperty
mkHttpEndpointRequestConfigurationProperty
  = HttpEndpointRequestConfigurationProperty
      {haddock_workaround_ = (), commonAttributes = Prelude.Nothing,
       contentEncoding = Prelude.Nothing}
instance ToResourceProperties HttpEndpointRequestConfigurationProperty where
  toResourceProperties HttpEndpointRequestConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.HttpEndpointRequestConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CommonAttributes" Prelude.<$> commonAttributes,
                            (JSON..=) "ContentEncoding" Prelude.<$> contentEncoding])}
instance JSON.ToJSON HttpEndpointRequestConfigurationProperty where
  toJSON HttpEndpointRequestConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CommonAttributes" Prelude.<$> commonAttributes,
               (JSON..=) "ContentEncoding" Prelude.<$> contentEncoding]))
instance Property "CommonAttributes" HttpEndpointRequestConfigurationProperty where
  type PropertyType "CommonAttributes" HttpEndpointRequestConfigurationProperty = [HttpEndpointCommonAttributeProperty]
  set newValue HttpEndpointRequestConfigurationProperty {..}
    = HttpEndpointRequestConfigurationProperty
        {commonAttributes = Prelude.pure newValue, ..}
instance Property "ContentEncoding" HttpEndpointRequestConfigurationProperty where
  type PropertyType "ContentEncoding" HttpEndpointRequestConfigurationProperty = Value Prelude.Text
  set newValue HttpEndpointRequestConfigurationProperty {..}
    = HttpEndpointRequestConfigurationProperty
        {contentEncoding = Prelude.pure newValue, ..}