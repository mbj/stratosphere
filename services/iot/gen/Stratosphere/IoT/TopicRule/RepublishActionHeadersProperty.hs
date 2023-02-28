module Stratosphere.IoT.TopicRule.RepublishActionHeadersProperty (
        module Exports, RepublishActionHeadersProperty(..),
        mkRepublishActionHeadersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.UserPropertyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RepublishActionHeadersProperty
  = RepublishActionHeadersProperty {contentType :: (Prelude.Maybe (Value Prelude.Text)),
                                    correlationData :: (Prelude.Maybe (Value Prelude.Text)),
                                    messageExpiry :: (Prelude.Maybe (Value Prelude.Text)),
                                    payloadFormatIndicator :: (Prelude.Maybe (Value Prelude.Text)),
                                    responseTopic :: (Prelude.Maybe (Value Prelude.Text)),
                                    userProperties :: (Prelude.Maybe [UserPropertyProperty])}
mkRepublishActionHeadersProperty :: RepublishActionHeadersProperty
mkRepublishActionHeadersProperty
  = RepublishActionHeadersProperty
      {contentType = Prelude.Nothing, correlationData = Prelude.Nothing,
       messageExpiry = Prelude.Nothing,
       payloadFormatIndicator = Prelude.Nothing,
       responseTopic = Prelude.Nothing, userProperties = Prelude.Nothing}
instance ToResourceProperties RepublishActionHeadersProperty where
  toResourceProperties RepublishActionHeadersProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.RepublishActionHeaders",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContentType" Prelude.<$> contentType,
                            (JSON..=) "CorrelationData" Prelude.<$> correlationData,
                            (JSON..=) "MessageExpiry" Prelude.<$> messageExpiry,
                            (JSON..=) "PayloadFormatIndicator"
                              Prelude.<$> payloadFormatIndicator,
                            (JSON..=) "ResponseTopic" Prelude.<$> responseTopic,
                            (JSON..=) "UserProperties" Prelude.<$> userProperties])}
instance JSON.ToJSON RepublishActionHeadersProperty where
  toJSON RepublishActionHeadersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContentType" Prelude.<$> contentType,
               (JSON..=) "CorrelationData" Prelude.<$> correlationData,
               (JSON..=) "MessageExpiry" Prelude.<$> messageExpiry,
               (JSON..=) "PayloadFormatIndicator"
                 Prelude.<$> payloadFormatIndicator,
               (JSON..=) "ResponseTopic" Prelude.<$> responseTopic,
               (JSON..=) "UserProperties" Prelude.<$> userProperties]))
instance Property "ContentType" RepublishActionHeadersProperty where
  type PropertyType "ContentType" RepublishActionHeadersProperty = Value Prelude.Text
  set newValue RepublishActionHeadersProperty {..}
    = RepublishActionHeadersProperty
        {contentType = Prelude.pure newValue, ..}
instance Property "CorrelationData" RepublishActionHeadersProperty where
  type PropertyType "CorrelationData" RepublishActionHeadersProperty = Value Prelude.Text
  set newValue RepublishActionHeadersProperty {..}
    = RepublishActionHeadersProperty
        {correlationData = Prelude.pure newValue, ..}
instance Property "MessageExpiry" RepublishActionHeadersProperty where
  type PropertyType "MessageExpiry" RepublishActionHeadersProperty = Value Prelude.Text
  set newValue RepublishActionHeadersProperty {..}
    = RepublishActionHeadersProperty
        {messageExpiry = Prelude.pure newValue, ..}
instance Property "PayloadFormatIndicator" RepublishActionHeadersProperty where
  type PropertyType "PayloadFormatIndicator" RepublishActionHeadersProperty = Value Prelude.Text
  set newValue RepublishActionHeadersProperty {..}
    = RepublishActionHeadersProperty
        {payloadFormatIndicator = Prelude.pure newValue, ..}
instance Property "ResponseTopic" RepublishActionHeadersProperty where
  type PropertyType "ResponseTopic" RepublishActionHeadersProperty = Value Prelude.Text
  set newValue RepublishActionHeadersProperty {..}
    = RepublishActionHeadersProperty
        {responseTopic = Prelude.pure newValue, ..}
instance Property "UserProperties" RepublishActionHeadersProperty where
  type PropertyType "UserProperties" RepublishActionHeadersProperty = [UserPropertyProperty]
  set newValue RepublishActionHeadersProperty {..}
    = RepublishActionHeadersProperty
        {userProperties = Prelude.pure newValue, ..}