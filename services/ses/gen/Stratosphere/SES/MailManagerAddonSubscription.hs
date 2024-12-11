module Stratosphere.SES.MailManagerAddonSubscription (
        MailManagerAddonSubscription(..), mkMailManagerAddonSubscription
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MailManagerAddonSubscription
  = MailManagerAddonSubscription {addonName :: (Value Prelude.Text),
                                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMailManagerAddonSubscription ::
  Value Prelude.Text -> MailManagerAddonSubscription
mkMailManagerAddonSubscription addonName
  = MailManagerAddonSubscription
      {addonName = addonName, tags = Prelude.Nothing}
instance ToResourceProperties MailManagerAddonSubscription where
  toResourceProperties MailManagerAddonSubscription {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerAddonSubscription",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AddonName" JSON..= addonName]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON MailManagerAddonSubscription where
  toJSON MailManagerAddonSubscription {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AddonName" JSON..= addonName]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AddonName" MailManagerAddonSubscription where
  type PropertyType "AddonName" MailManagerAddonSubscription = Value Prelude.Text
  set newValue MailManagerAddonSubscription {..}
    = MailManagerAddonSubscription {addonName = newValue, ..}
instance Property "Tags" MailManagerAddonSubscription where
  type PropertyType "Tags" MailManagerAddonSubscription = [Tag]
  set newValue MailManagerAddonSubscription {..}
    = MailManagerAddonSubscription {tags = Prelude.pure newValue, ..}