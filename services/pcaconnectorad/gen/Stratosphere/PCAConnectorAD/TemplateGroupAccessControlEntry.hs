module Stratosphere.PCAConnectorAD.TemplateGroupAccessControlEntry (
        module Exports, TemplateGroupAccessControlEntry(..),
        mkTemplateGroupAccessControlEntry
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.TemplateGroupAccessControlEntry.AccessRightsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TemplateGroupAccessControlEntry
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorad-templategroupaccesscontrolentry.html>
    TemplateGroupAccessControlEntry {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorad-templategroupaccesscontrolentry.html#cfn-pcaconnectorad-templategroupaccesscontrolentry-accessrights>
                                     accessRights :: AccessRightsProperty,
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorad-templategroupaccesscontrolentry.html#cfn-pcaconnectorad-templategroupaccesscontrolentry-groupdisplayname>
                                     groupDisplayName :: (Value Prelude.Text),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorad-templategroupaccesscontrolentry.html#cfn-pcaconnectorad-templategroupaccesscontrolentry-groupsecurityidentifier>
                                     groupSecurityIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorad-templategroupaccesscontrolentry.html#cfn-pcaconnectorad-templategroupaccesscontrolentry-templatearn>
                                     templateArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplateGroupAccessControlEntry ::
  AccessRightsProperty
  -> Value Prelude.Text -> TemplateGroupAccessControlEntry
mkTemplateGroupAccessControlEntry accessRights groupDisplayName
  = TemplateGroupAccessControlEntry
      {accessRights = accessRights, groupDisplayName = groupDisplayName,
       groupSecurityIdentifier = Prelude.Nothing,
       templateArn = Prelude.Nothing}
instance ToResourceProperties TemplateGroupAccessControlEntry where
  toResourceProperties TemplateGroupAccessControlEntry {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::TemplateGroupAccessControlEntry",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccessRights" JSON..= accessRights,
                            "GroupDisplayName" JSON..= groupDisplayName]
                           (Prelude.catMaybes
                              [(JSON..=) "GroupSecurityIdentifier"
                                 Prelude.<$> groupSecurityIdentifier,
                               (JSON..=) "TemplateArn" Prelude.<$> templateArn]))}
instance JSON.ToJSON TemplateGroupAccessControlEntry where
  toJSON TemplateGroupAccessControlEntry {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccessRights" JSON..= accessRights,
               "GroupDisplayName" JSON..= groupDisplayName]
              (Prelude.catMaybes
                 [(JSON..=) "GroupSecurityIdentifier"
                    Prelude.<$> groupSecurityIdentifier,
                  (JSON..=) "TemplateArn" Prelude.<$> templateArn])))
instance Property "AccessRights" TemplateGroupAccessControlEntry where
  type PropertyType "AccessRights" TemplateGroupAccessControlEntry = AccessRightsProperty
  set newValue TemplateGroupAccessControlEntry {..}
    = TemplateGroupAccessControlEntry {accessRights = newValue, ..}
instance Property "GroupDisplayName" TemplateGroupAccessControlEntry where
  type PropertyType "GroupDisplayName" TemplateGroupAccessControlEntry = Value Prelude.Text
  set newValue TemplateGroupAccessControlEntry {..}
    = TemplateGroupAccessControlEntry {groupDisplayName = newValue, ..}
instance Property "GroupSecurityIdentifier" TemplateGroupAccessControlEntry where
  type PropertyType "GroupSecurityIdentifier" TemplateGroupAccessControlEntry = Value Prelude.Text
  set newValue TemplateGroupAccessControlEntry {..}
    = TemplateGroupAccessControlEntry
        {groupSecurityIdentifier = Prelude.pure newValue, ..}
instance Property "TemplateArn" TemplateGroupAccessControlEntry where
  type PropertyType "TemplateArn" TemplateGroupAccessControlEntry = Value Prelude.Text
  set newValue TemplateGroupAccessControlEntry {..}
    = TemplateGroupAccessControlEntry
        {templateArn = Prelude.pure newValue, ..}