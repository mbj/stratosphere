module Stratosphere.B2BI.Profile (
        Profile(..), mkProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Profile
  = Profile {businessName :: (Value Prelude.Text),
             email :: (Prelude.Maybe (Value Prelude.Text)),
             logging :: (Value Prelude.Text),
             name :: (Value Prelude.Text),
             phone :: (Value Prelude.Text),
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProfile ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Profile
mkProfile businessName logging name phone
  = Profile
      {businessName = businessName, logging = logging, name = name,
       phone = phone, email = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Profile where
  toResourceProperties Profile {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Profile", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BusinessName" JSON..= businessName, "Logging" JSON..= logging,
                            "Name" JSON..= name, "Phone" JSON..= phone]
                           (Prelude.catMaybes
                              [(JSON..=) "Email" Prelude.<$> email,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Profile where
  toJSON Profile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BusinessName" JSON..= businessName, "Logging" JSON..= logging,
               "Name" JSON..= name, "Phone" JSON..= phone]
              (Prelude.catMaybes
                 [(JSON..=) "Email" Prelude.<$> email,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BusinessName" Profile where
  type PropertyType "BusinessName" Profile = Value Prelude.Text
  set newValue Profile {..} = Profile {businessName = newValue, ..}
instance Property "Email" Profile where
  type PropertyType "Email" Profile = Value Prelude.Text
  set newValue Profile {..}
    = Profile {email = Prelude.pure newValue, ..}
instance Property "Logging" Profile where
  type PropertyType "Logging" Profile = Value Prelude.Text
  set newValue Profile {..} = Profile {logging = newValue, ..}
instance Property "Name" Profile where
  type PropertyType "Name" Profile = Value Prelude.Text
  set newValue Profile {..} = Profile {name = newValue, ..}
instance Property "Phone" Profile where
  type PropertyType "Phone" Profile = Value Prelude.Text
  set newValue Profile {..} = Profile {phone = newValue, ..}
instance Property "Tags" Profile where
  type PropertyType "Tags" Profile = [Tag]
  set newValue Profile {..}
    = Profile {tags = Prelude.pure newValue, ..}