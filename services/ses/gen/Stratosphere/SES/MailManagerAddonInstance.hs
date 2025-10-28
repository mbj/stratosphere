module Stratosphere.SES.MailManagerAddonInstance (
        MailManagerAddonInstance(..), mkMailManagerAddonInstance
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MailManagerAddonInstance
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanageraddoninstance.html>
    MailManagerAddonInstance {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanageraddoninstance.html#cfn-ses-mailmanageraddoninstance-addonsubscriptionid>
                              addonSubscriptionId :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanageraddoninstance.html#cfn-ses-mailmanageraddoninstance-tags>
                              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMailManagerAddonInstance ::
  Value Prelude.Text -> MailManagerAddonInstance
mkMailManagerAddonInstance addonSubscriptionId
  = MailManagerAddonInstance
      {haddock_workaround_ = (),
       addonSubscriptionId = addonSubscriptionId, tags = Prelude.Nothing}
instance ToResourceProperties MailManagerAddonInstance where
  toResourceProperties MailManagerAddonInstance {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerAddonInstance",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AddonSubscriptionId" JSON..= addonSubscriptionId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON MailManagerAddonInstance where
  toJSON MailManagerAddonInstance {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AddonSubscriptionId" JSON..= addonSubscriptionId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AddonSubscriptionId" MailManagerAddonInstance where
  type PropertyType "AddonSubscriptionId" MailManagerAddonInstance = Value Prelude.Text
  set newValue MailManagerAddonInstance {..}
    = MailManagerAddonInstance {addonSubscriptionId = newValue, ..}
instance Property "Tags" MailManagerAddonInstance where
  type PropertyType "Tags" MailManagerAddonInstance = [Tag]
  set newValue MailManagerAddonInstance {..}
    = MailManagerAddonInstance {tags = Prelude.pure newValue, ..}