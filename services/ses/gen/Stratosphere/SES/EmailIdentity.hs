module Stratosphere.SES.EmailIdentity (
        module Exports, EmailIdentity(..), mkEmailIdentity
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.EmailIdentity.ConfigurationSetAttributesProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.EmailIdentity.DkimAttributesProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.EmailIdentity.DkimSigningAttributesProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.EmailIdentity.FeedbackAttributesProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.EmailIdentity.MailFromAttributesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EmailIdentity
  = EmailIdentity {configurationSetAttributes :: (Prelude.Maybe ConfigurationSetAttributesProperty),
                   dkimAttributes :: (Prelude.Maybe DkimAttributesProperty),
                   dkimSigningAttributes :: (Prelude.Maybe DkimSigningAttributesProperty),
                   emailIdentity :: (Value Prelude.Text),
                   feedbackAttributes :: (Prelude.Maybe FeedbackAttributesProperty),
                   mailFromAttributes :: (Prelude.Maybe MailFromAttributesProperty)}
mkEmailIdentity :: Value Prelude.Text -> EmailIdentity
mkEmailIdentity emailIdentity
  = EmailIdentity
      {emailIdentity = emailIdentity,
       configurationSetAttributes = Prelude.Nothing,
       dkimAttributes = Prelude.Nothing,
       dkimSigningAttributes = Prelude.Nothing,
       feedbackAttributes = Prelude.Nothing,
       mailFromAttributes = Prelude.Nothing}
instance ToResourceProperties EmailIdentity where
  toResourceProperties EmailIdentity {..}
    = ResourceProperties
        {awsType = "AWS::SES::EmailIdentity", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EmailIdentity" JSON..= emailIdentity]
                           (Prelude.catMaybes
                              [(JSON..=) "ConfigurationSetAttributes"
                                 Prelude.<$> configurationSetAttributes,
                               (JSON..=) "DkimAttributes" Prelude.<$> dkimAttributes,
                               (JSON..=) "DkimSigningAttributes"
                                 Prelude.<$> dkimSigningAttributes,
                               (JSON..=) "FeedbackAttributes" Prelude.<$> feedbackAttributes,
                               (JSON..=) "MailFromAttributes" Prelude.<$> mailFromAttributes]))}
instance JSON.ToJSON EmailIdentity where
  toJSON EmailIdentity {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EmailIdentity" JSON..= emailIdentity]
              (Prelude.catMaybes
                 [(JSON..=) "ConfigurationSetAttributes"
                    Prelude.<$> configurationSetAttributes,
                  (JSON..=) "DkimAttributes" Prelude.<$> dkimAttributes,
                  (JSON..=) "DkimSigningAttributes"
                    Prelude.<$> dkimSigningAttributes,
                  (JSON..=) "FeedbackAttributes" Prelude.<$> feedbackAttributes,
                  (JSON..=) "MailFromAttributes" Prelude.<$> mailFromAttributes])))
instance Property "ConfigurationSetAttributes" EmailIdentity where
  type PropertyType "ConfigurationSetAttributes" EmailIdentity = ConfigurationSetAttributesProperty
  set newValue EmailIdentity {..}
    = EmailIdentity
        {configurationSetAttributes = Prelude.pure newValue, ..}
instance Property "DkimAttributes" EmailIdentity where
  type PropertyType "DkimAttributes" EmailIdentity = DkimAttributesProperty
  set newValue EmailIdentity {..}
    = EmailIdentity {dkimAttributes = Prelude.pure newValue, ..}
instance Property "DkimSigningAttributes" EmailIdentity where
  type PropertyType "DkimSigningAttributes" EmailIdentity = DkimSigningAttributesProperty
  set newValue EmailIdentity {..}
    = EmailIdentity {dkimSigningAttributes = Prelude.pure newValue, ..}
instance Property "EmailIdentity" EmailIdentity where
  type PropertyType "EmailIdentity" EmailIdentity = Value Prelude.Text
  set newValue EmailIdentity {..}
    = EmailIdentity {emailIdentity = newValue, ..}
instance Property "FeedbackAttributes" EmailIdentity where
  type PropertyType "FeedbackAttributes" EmailIdentity = FeedbackAttributesProperty
  set newValue EmailIdentity {..}
    = EmailIdentity {feedbackAttributes = Prelude.pure newValue, ..}
instance Property "MailFromAttributes" EmailIdentity where
  type PropertyType "MailFromAttributes" EmailIdentity = MailFromAttributesProperty
  set newValue EmailIdentity {..}
    = EmailIdentity {mailFromAttributes = Prelude.pure newValue, ..}