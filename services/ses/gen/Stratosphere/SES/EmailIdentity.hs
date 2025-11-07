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
import Stratosphere.Tag
import Stratosphere.Value
data EmailIdentity
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-emailidentity.html>
    EmailIdentity {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-emailidentity.html#cfn-ses-emailidentity-configurationsetattributes>
                   configurationSetAttributes :: (Prelude.Maybe ConfigurationSetAttributesProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-emailidentity.html#cfn-ses-emailidentity-dkimattributes>
                   dkimAttributes :: (Prelude.Maybe DkimAttributesProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-emailidentity.html#cfn-ses-emailidentity-dkimsigningattributes>
                   dkimSigningAttributes :: (Prelude.Maybe DkimSigningAttributesProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-emailidentity.html#cfn-ses-emailidentity-emailidentity>
                   emailIdentity :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-emailidentity.html#cfn-ses-emailidentity-feedbackattributes>
                   feedbackAttributes :: (Prelude.Maybe FeedbackAttributesProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-emailidentity.html#cfn-ses-emailidentity-mailfromattributes>
                   mailFromAttributes :: (Prelude.Maybe MailFromAttributesProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-emailidentity.html#cfn-ses-emailidentity-tags>
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmailIdentity :: Value Prelude.Text -> EmailIdentity
mkEmailIdentity emailIdentity
  = EmailIdentity
      {haddock_workaround_ = (), emailIdentity = emailIdentity,
       configurationSetAttributes = Prelude.Nothing,
       dkimAttributes = Prelude.Nothing,
       dkimSigningAttributes = Prelude.Nothing,
       feedbackAttributes = Prelude.Nothing,
       mailFromAttributes = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties EmailIdentity where
  toResourceProperties EmailIdentity {..}
    = ResourceProperties
        {awsType = "AWS::SES::EmailIdentity", supportsTags = Prelude.True,
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
                               (JSON..=) "MailFromAttributes" Prelude.<$> mailFromAttributes,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
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
                  (JSON..=) "MailFromAttributes" Prelude.<$> mailFromAttributes,
                  (JSON..=) "Tags" Prelude.<$> tags])))
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
instance Property "Tags" EmailIdentity where
  type PropertyType "Tags" EmailIdentity = [Tag]
  set newValue EmailIdentity {..}
    = EmailIdentity {tags = Prelude.pure newValue, ..}