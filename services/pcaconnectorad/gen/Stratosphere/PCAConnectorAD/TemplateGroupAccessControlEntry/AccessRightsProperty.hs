module Stratosphere.PCAConnectorAD.TemplateGroupAccessControlEntry.AccessRightsProperty (
        AccessRightsProperty(..), mkAccessRightsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessRightsProperty
  = AccessRightsProperty {autoEnroll :: (Prelude.Maybe (Value Prelude.Text)),
                          enroll :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessRightsProperty :: AccessRightsProperty
mkAccessRightsProperty
  = AccessRightsProperty
      {autoEnroll = Prelude.Nothing, enroll = Prelude.Nothing}
instance ToResourceProperties AccessRightsProperty where
  toResourceProperties AccessRightsProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::TemplateGroupAccessControlEntry.AccessRights",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoEnroll" Prelude.<$> autoEnroll,
                            (JSON..=) "Enroll" Prelude.<$> enroll])}
instance JSON.ToJSON AccessRightsProperty where
  toJSON AccessRightsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoEnroll" Prelude.<$> autoEnroll,
               (JSON..=) "Enroll" Prelude.<$> enroll]))
instance Property "AutoEnroll" AccessRightsProperty where
  type PropertyType "AutoEnroll" AccessRightsProperty = Value Prelude.Text
  set newValue AccessRightsProperty {..}
    = AccessRightsProperty {autoEnroll = Prelude.pure newValue, ..}
instance Property "Enroll" AccessRightsProperty where
  type PropertyType "Enroll" AccessRightsProperty = Value Prelude.Text
  set newValue AccessRightsProperty {..}
    = AccessRightsProperty {enroll = Prelude.pure newValue, ..}