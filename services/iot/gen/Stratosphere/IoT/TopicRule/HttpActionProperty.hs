module Stratosphere.IoT.TopicRule.HttpActionProperty (
        module Exports, HttpActionProperty(..), mkHttpActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.HttpActionHeaderProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.HttpAuthorizationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpaction.html>
    HttpActionProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpaction.html#cfn-iot-topicrule-httpaction-auth>
                        auth :: (Prelude.Maybe HttpAuthorizationProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpaction.html#cfn-iot-topicrule-httpaction-confirmationurl>
                        confirmationUrl :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpaction.html#cfn-iot-topicrule-httpaction-headers>
                        headers :: (Prelude.Maybe [HttpActionHeaderProperty]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpaction.html#cfn-iot-topicrule-httpaction-url>
                        url :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpActionProperty :: Value Prelude.Text -> HttpActionProperty
mkHttpActionProperty url
  = HttpActionProperty
      {haddock_workaround_ = (), url = url, auth = Prelude.Nothing,
       confirmationUrl = Prelude.Nothing, headers = Prelude.Nothing}
instance ToResourceProperties HttpActionProperty where
  toResourceProperties HttpActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.HttpAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Url" JSON..= url]
                           (Prelude.catMaybes
                              [(JSON..=) "Auth" Prelude.<$> auth,
                               (JSON..=) "ConfirmationUrl" Prelude.<$> confirmationUrl,
                               (JSON..=) "Headers" Prelude.<$> headers]))}
instance JSON.ToJSON HttpActionProperty where
  toJSON HttpActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Url" JSON..= url]
              (Prelude.catMaybes
                 [(JSON..=) "Auth" Prelude.<$> auth,
                  (JSON..=) "ConfirmationUrl" Prelude.<$> confirmationUrl,
                  (JSON..=) "Headers" Prelude.<$> headers])))
instance Property "Auth" HttpActionProperty where
  type PropertyType "Auth" HttpActionProperty = HttpAuthorizationProperty
  set newValue HttpActionProperty {..}
    = HttpActionProperty {auth = Prelude.pure newValue, ..}
instance Property "ConfirmationUrl" HttpActionProperty where
  type PropertyType "ConfirmationUrl" HttpActionProperty = Value Prelude.Text
  set newValue HttpActionProperty {..}
    = HttpActionProperty {confirmationUrl = Prelude.pure newValue, ..}
instance Property "Headers" HttpActionProperty where
  type PropertyType "Headers" HttpActionProperty = [HttpActionHeaderProperty]
  set newValue HttpActionProperty {..}
    = HttpActionProperty {headers = Prelude.pure newValue, ..}
instance Property "Url" HttpActionProperty where
  type PropertyType "Url" HttpActionProperty = Value Prelude.Text
  set newValue HttpActionProperty {..}
    = HttpActionProperty {url = newValue, ..}