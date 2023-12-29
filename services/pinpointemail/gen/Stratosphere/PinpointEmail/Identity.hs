module Stratosphere.PinpointEmail.Identity (
        module Exports, Identity(..), mkIdentity
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PinpointEmail.Identity.MailFromAttributesProperty as Exports
import {-# SOURCE #-} Stratosphere.PinpointEmail.Identity.TagsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Identity
  = Identity {dkimSigningEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
              feedbackForwardingEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
              mailFromAttributes :: (Prelude.Maybe MailFromAttributesProperty),
              name :: (Value Prelude.Text),
              tags :: (Prelude.Maybe [TagsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentity :: Value Prelude.Text -> Identity
mkIdentity name
  = Identity
      {name = name, dkimSigningEnabled = Prelude.Nothing,
       feedbackForwardingEnabled = Prelude.Nothing,
       mailFromAttributes = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Identity where
  toResourceProperties Identity {..}
    = ResourceProperties
        {awsType = "AWS::PinpointEmail::Identity",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DkimSigningEnabled" Prelude.<$> dkimSigningEnabled,
                               (JSON..=) "FeedbackForwardingEnabled"
                                 Prelude.<$> feedbackForwardingEnabled,
                               (JSON..=) "MailFromAttributes" Prelude.<$> mailFromAttributes,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Identity where
  toJSON Identity {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DkimSigningEnabled" Prelude.<$> dkimSigningEnabled,
                  (JSON..=) "FeedbackForwardingEnabled"
                    Prelude.<$> feedbackForwardingEnabled,
                  (JSON..=) "MailFromAttributes" Prelude.<$> mailFromAttributes,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DkimSigningEnabled" Identity where
  type PropertyType "DkimSigningEnabled" Identity = Value Prelude.Bool
  set newValue Identity {..}
    = Identity {dkimSigningEnabled = Prelude.pure newValue, ..}
instance Property "FeedbackForwardingEnabled" Identity where
  type PropertyType "FeedbackForwardingEnabled" Identity = Value Prelude.Bool
  set newValue Identity {..}
    = Identity {feedbackForwardingEnabled = Prelude.pure newValue, ..}
instance Property "MailFromAttributes" Identity where
  type PropertyType "MailFromAttributes" Identity = MailFromAttributesProperty
  set newValue Identity {..}
    = Identity {mailFromAttributes = Prelude.pure newValue, ..}
instance Property "Name" Identity where
  type PropertyType "Name" Identity = Value Prelude.Text
  set newValue Identity {..} = Identity {name = newValue, ..}
instance Property "Tags" Identity where
  type PropertyType "Tags" Identity = [TagsProperty]
  set newValue Identity {..}
    = Identity {tags = Prelude.pure newValue, ..}