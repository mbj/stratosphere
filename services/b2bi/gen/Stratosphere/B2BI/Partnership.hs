module Stratosphere.B2BI.Partnership (
        Partnership(..), mkPartnership
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Partnership
  = Partnership {capabilities :: (Prelude.Maybe (ValueList Prelude.Text)),
                 email :: (Value Prelude.Text),
                 name :: (Value Prelude.Text),
                 phone :: (Prelude.Maybe (Value Prelude.Text)),
                 profileId :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPartnership ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Partnership
mkPartnership email name profileId
  = Partnership
      {email = email, name = name, profileId = profileId,
       capabilities = Prelude.Nothing, phone = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Partnership where
  toResourceProperties Partnership {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Partnership", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Email" JSON..= email, "Name" JSON..= name,
                            "ProfileId" JSON..= profileId]
                           (Prelude.catMaybes
                              [(JSON..=) "Capabilities" Prelude.<$> capabilities,
                               (JSON..=) "Phone" Prelude.<$> phone,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Partnership where
  toJSON Partnership {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Email" JSON..= email, "Name" JSON..= name,
               "ProfileId" JSON..= profileId]
              (Prelude.catMaybes
                 [(JSON..=) "Capabilities" Prelude.<$> capabilities,
                  (JSON..=) "Phone" Prelude.<$> phone,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Capabilities" Partnership where
  type PropertyType "Capabilities" Partnership = ValueList Prelude.Text
  set newValue Partnership {..}
    = Partnership {capabilities = Prelude.pure newValue, ..}
instance Property "Email" Partnership where
  type PropertyType "Email" Partnership = Value Prelude.Text
  set newValue Partnership {..} = Partnership {email = newValue, ..}
instance Property "Name" Partnership where
  type PropertyType "Name" Partnership = Value Prelude.Text
  set newValue Partnership {..} = Partnership {name = newValue, ..}
instance Property "Phone" Partnership where
  type PropertyType "Phone" Partnership = Value Prelude.Text
  set newValue Partnership {..}
    = Partnership {phone = Prelude.pure newValue, ..}
instance Property "ProfileId" Partnership where
  type PropertyType "ProfileId" Partnership = Value Prelude.Text
  set newValue Partnership {..}
    = Partnership {profileId = newValue, ..}
instance Property "Tags" Partnership where
  type PropertyType "Tags" Partnership = [Tag]
  set newValue Partnership {..}
    = Partnership {tags = Prelude.pure newValue, ..}