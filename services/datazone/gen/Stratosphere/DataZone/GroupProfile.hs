module Stratosphere.DataZone.GroupProfile (
        GroupProfile(..), mkGroupProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GroupProfile
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-groupprofile.html>
    GroupProfile {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-groupprofile.html#cfn-datazone-groupprofile-domainidentifier>
                  domainIdentifier :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-groupprofile.html#cfn-datazone-groupprofile-groupidentifier>
                  groupIdentifier :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-groupprofile.html#cfn-datazone-groupprofile-status>
                  status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroupProfile ::
  Value Prelude.Text -> Value Prelude.Text -> GroupProfile
mkGroupProfile domainIdentifier groupIdentifier
  = GroupProfile
      {haddock_workaround_ = (), domainIdentifier = domainIdentifier,
       groupIdentifier = groupIdentifier, status = Prelude.Nothing}
instance ToResourceProperties GroupProfile where
  toResourceProperties GroupProfile {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::GroupProfile",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainIdentifier" JSON..= domainIdentifier,
                            "GroupIdentifier" JSON..= groupIdentifier]
                           (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON GroupProfile where
  toJSON GroupProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainIdentifier" JSON..= domainIdentifier,
               "GroupIdentifier" JSON..= groupIdentifier]
              (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status])))
instance Property "DomainIdentifier" GroupProfile where
  type PropertyType "DomainIdentifier" GroupProfile = Value Prelude.Text
  set newValue GroupProfile {..}
    = GroupProfile {domainIdentifier = newValue, ..}
instance Property "GroupIdentifier" GroupProfile where
  type PropertyType "GroupIdentifier" GroupProfile = Value Prelude.Text
  set newValue GroupProfile {..}
    = GroupProfile {groupIdentifier = newValue, ..}
instance Property "Status" GroupProfile where
  type PropertyType "Status" GroupProfile = Value Prelude.Text
  set newValue GroupProfile {..}
    = GroupProfile {status = Prelude.pure newValue, ..}