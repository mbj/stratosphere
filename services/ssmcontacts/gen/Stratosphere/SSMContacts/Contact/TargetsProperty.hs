module Stratosphere.SSMContacts.Contact.TargetsProperty (
        module Exports, TargetsProperty(..), mkTargetsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMContacts.Contact.ChannelTargetInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.SSMContacts.Contact.ContactTargetInfoProperty as Exports
import Stratosphere.ResourceProperties
data TargetsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-contact-targets.html>
    TargetsProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-contact-targets.html#cfn-ssmcontacts-contact-targets-channeltargetinfo>
                     channelTargetInfo :: (Prelude.Maybe ChannelTargetInfoProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-contact-targets.html#cfn-ssmcontacts-contact-targets-contacttargetinfo>
                     contactTargetInfo :: (Prelude.Maybe ContactTargetInfoProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetsProperty :: TargetsProperty
mkTargetsProperty
  = TargetsProperty
      {haddock_workaround_ = (), channelTargetInfo = Prelude.Nothing,
       contactTargetInfo = Prelude.Nothing}
instance ToResourceProperties TargetsProperty where
  toResourceProperties TargetsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMContacts::Contact.Targets",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ChannelTargetInfo" Prelude.<$> channelTargetInfo,
                            (JSON..=) "ContactTargetInfo" Prelude.<$> contactTargetInfo])}
instance JSON.ToJSON TargetsProperty where
  toJSON TargetsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ChannelTargetInfo" Prelude.<$> channelTargetInfo,
               (JSON..=) "ContactTargetInfo" Prelude.<$> contactTargetInfo]))
instance Property "ChannelTargetInfo" TargetsProperty where
  type PropertyType "ChannelTargetInfo" TargetsProperty = ChannelTargetInfoProperty
  set newValue TargetsProperty {..}
    = TargetsProperty {channelTargetInfo = Prelude.pure newValue, ..}
instance Property "ContactTargetInfo" TargetsProperty where
  type PropertyType "ContactTargetInfo" TargetsProperty = ContactTargetInfoProperty
  set newValue TargetsProperty {..}
    = TargetsProperty {contactTargetInfo = Prelude.pure newValue, ..}