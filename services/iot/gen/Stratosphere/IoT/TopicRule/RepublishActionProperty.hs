module Stratosphere.IoT.TopicRule.RepublishActionProperty (
        module Exports, RepublishActionProperty(..),
        mkRepublishActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.RepublishActionHeadersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RepublishActionProperty
  = RepublishActionProperty {headers :: (Prelude.Maybe RepublishActionHeadersProperty),
                             qos :: (Prelude.Maybe (Value Prelude.Integer)),
                             roleArn :: (Value Prelude.Text),
                             topic :: (Value Prelude.Text)}
mkRepublishActionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> RepublishActionProperty
mkRepublishActionProperty roleArn topic
  = RepublishActionProperty
      {roleArn = roleArn, topic = topic, headers = Prelude.Nothing,
       qos = Prelude.Nothing}
instance ToResourceProperties RepublishActionProperty where
  toResourceProperties RepublishActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.RepublishAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn, "Topic" JSON..= topic]
                           (Prelude.catMaybes
                              [(JSON..=) "Headers" Prelude.<$> headers,
                               (JSON..=) "Qos" Prelude.<$> qos]))}
instance JSON.ToJSON RepublishActionProperty where
  toJSON RepublishActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn, "Topic" JSON..= topic]
              (Prelude.catMaybes
                 [(JSON..=) "Headers" Prelude.<$> headers,
                  (JSON..=) "Qos" Prelude.<$> qos])))
instance Property "Headers" RepublishActionProperty where
  type PropertyType "Headers" RepublishActionProperty = RepublishActionHeadersProperty
  set newValue RepublishActionProperty {..}
    = RepublishActionProperty {headers = Prelude.pure newValue, ..}
instance Property "Qos" RepublishActionProperty where
  type PropertyType "Qos" RepublishActionProperty = Value Prelude.Integer
  set newValue RepublishActionProperty {..}
    = RepublishActionProperty {qos = Prelude.pure newValue, ..}
instance Property "RoleArn" RepublishActionProperty where
  type PropertyType "RoleArn" RepublishActionProperty = Value Prelude.Text
  set newValue RepublishActionProperty {..}
    = RepublishActionProperty {roleArn = newValue, ..}
instance Property "Topic" RepublishActionProperty where
  type PropertyType "Topic" RepublishActionProperty = Value Prelude.Text
  set newValue RepublishActionProperty {..}
    = RepublishActionProperty {topic = newValue, ..}