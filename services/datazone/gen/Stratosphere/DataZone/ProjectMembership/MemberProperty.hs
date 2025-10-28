module Stratosphere.DataZone.ProjectMembership.MemberProperty (
        MemberProperty(..), mkMemberProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MemberProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectmembership-member.html>
    MemberProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectmembership-member.html#cfn-datazone-projectmembership-member-groupidentifier>
                    groupIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectmembership-member.html#cfn-datazone-projectmembership-member-useridentifier>
                    userIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemberProperty :: MemberProperty
mkMemberProperty
  = MemberProperty
      {haddock_workaround_ = (), groupIdentifier = Prelude.Nothing,
       userIdentifier = Prelude.Nothing}
instance ToResourceProperties MemberProperty where
  toResourceProperties MemberProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::ProjectMembership.Member",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GroupIdentifier" Prelude.<$> groupIdentifier,
                            (JSON..=) "UserIdentifier" Prelude.<$> userIdentifier])}
instance JSON.ToJSON MemberProperty where
  toJSON MemberProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GroupIdentifier" Prelude.<$> groupIdentifier,
               (JSON..=) "UserIdentifier" Prelude.<$> userIdentifier]))
instance Property "GroupIdentifier" MemberProperty where
  type PropertyType "GroupIdentifier" MemberProperty = Value Prelude.Text
  set newValue MemberProperty {..}
    = MemberProperty {groupIdentifier = Prelude.pure newValue, ..}
instance Property "UserIdentifier" MemberProperty where
  type PropertyType "UserIdentifier" MemberProperty = Value Prelude.Text
  set newValue MemberProperty {..}
    = MemberProperty {userIdentifier = Prelude.pure newValue, ..}