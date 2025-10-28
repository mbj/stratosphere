module Stratosphere.ManagedBlockchain.Member (
        module Exports, Member(..), mkMember
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ManagedBlockchain.Member.MemberConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ManagedBlockchain.Member.NetworkConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Member
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-member.html>
    Member {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-member.html#cfn-managedblockchain-member-invitationid>
            invitationId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-member.html#cfn-managedblockchain-member-memberconfiguration>
            memberConfiguration :: MemberConfigurationProperty,
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-member.html#cfn-managedblockchain-member-networkconfiguration>
            networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-member.html#cfn-managedblockchain-member-networkid>
            networkId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMember :: MemberConfigurationProperty -> Member
mkMember memberConfiguration
  = Member
      {haddock_workaround_ = (),
       memberConfiguration = memberConfiguration,
       invitationId = Prelude.Nothing,
       networkConfiguration = Prelude.Nothing,
       networkId = Prelude.Nothing}
instance ToResourceProperties Member where
  toResourceProperties Member {..}
    = ResourceProperties
        {awsType = "AWS::ManagedBlockchain::Member",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MemberConfiguration" JSON..= memberConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "InvitationId" Prelude.<$> invitationId,
                               (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                               (JSON..=) "NetworkId" Prelude.<$> networkId]))}
instance JSON.ToJSON Member where
  toJSON Member {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MemberConfiguration" JSON..= memberConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "InvitationId" Prelude.<$> invitationId,
                  (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                  (JSON..=) "NetworkId" Prelude.<$> networkId])))
instance Property "InvitationId" Member where
  type PropertyType "InvitationId" Member = Value Prelude.Text
  set newValue Member {..}
    = Member {invitationId = Prelude.pure newValue, ..}
instance Property "MemberConfiguration" Member where
  type PropertyType "MemberConfiguration" Member = MemberConfigurationProperty
  set newValue Member {..}
    = Member {memberConfiguration = newValue, ..}
instance Property "NetworkConfiguration" Member where
  type PropertyType "NetworkConfiguration" Member = NetworkConfigurationProperty
  set newValue Member {..}
    = Member {networkConfiguration = Prelude.pure newValue, ..}
instance Property "NetworkId" Member where
  type PropertyType "NetworkId" Member = Value Prelude.Text
  set newValue Member {..}
    = Member {networkId = Prelude.pure newValue, ..}