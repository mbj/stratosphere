module Stratosphere.B2BI.Partnership (
        module Exports, Partnership(..), mkPartnership
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Partnership.CapabilityOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Partnership
  = Partnership {capabilities :: (ValueList Prelude.Text),
                 capabilityOptions :: (Prelude.Maybe CapabilityOptionsProperty),
                 email :: (Value Prelude.Text),
                 name :: (Value Prelude.Text),
                 phone :: (Prelude.Maybe (Value Prelude.Text)),
                 profileId :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPartnership ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Partnership
mkPartnership capabilities email name profileId
  = Partnership
      {capabilities = capabilities, email = email, name = name,
       profileId = profileId, capabilityOptions = Prelude.Nothing,
       phone = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Partnership where
  toResourceProperties Partnership {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Partnership", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Capabilities" JSON..= capabilities, "Email" JSON..= email,
                            "Name" JSON..= name, "ProfileId" JSON..= profileId]
                           (Prelude.catMaybes
                              [(JSON..=) "CapabilityOptions" Prelude.<$> capabilityOptions,
                               (JSON..=) "Phone" Prelude.<$> phone,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Partnership where
  toJSON Partnership {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Capabilities" JSON..= capabilities, "Email" JSON..= email,
               "Name" JSON..= name, "ProfileId" JSON..= profileId]
              (Prelude.catMaybes
                 [(JSON..=) "CapabilityOptions" Prelude.<$> capabilityOptions,
                  (JSON..=) "Phone" Prelude.<$> phone,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Capabilities" Partnership where
  type PropertyType "Capabilities" Partnership = ValueList Prelude.Text
  set newValue Partnership {..}
    = Partnership {capabilities = newValue, ..}
instance Property "CapabilityOptions" Partnership where
  type PropertyType "CapabilityOptions" Partnership = CapabilityOptionsProperty
  set newValue Partnership {..}
    = Partnership {capabilityOptions = Prelude.pure newValue, ..}
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