module Stratosphere.PCAConnectorAD.TemplateGroupAccessControlEntry.AccessRightsProperty (
        AccessRightsProperty(..), mkAccessRightsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessRightsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-templategroupaccesscontrolentry-accessrights.html>
    AccessRightsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-templategroupaccesscontrolentry-accessrights.html#cfn-pcaconnectorad-templategroupaccesscontrolentry-accessrights-autoenroll>
                          autoEnroll :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-templategroupaccesscontrolentry-accessrights.html#cfn-pcaconnectorad-templategroupaccesscontrolentry-accessrights-enroll>
                          enroll :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessRightsProperty :: AccessRightsProperty
mkAccessRightsProperty
  = AccessRightsProperty
      {haddock_workaround_ = (), autoEnroll = Prelude.Nothing,
       enroll = Prelude.Nothing}
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