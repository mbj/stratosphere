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
  = HttpActionProperty {auth :: (Prelude.Maybe HttpAuthorizationProperty),
                        confirmationUrl :: (Prelude.Maybe (Value Prelude.Text)),
                        headers :: (Prelude.Maybe [HttpActionHeaderProperty]),
                        url :: (Value Prelude.Text)}
mkHttpActionProperty :: Value Prelude.Text -> HttpActionProperty
mkHttpActionProperty url
  = HttpActionProperty
      {url = url, auth = Prelude.Nothing,
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