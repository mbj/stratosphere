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
  = Member {invitationId :: (Prelude.Maybe (Value Prelude.Text)),
            memberConfiguration :: MemberConfigurationProperty,
            networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
            networkId :: (Prelude.Maybe (Value Prelude.Text))}
mkMember :: MemberConfigurationProperty -> Member
mkMember memberConfiguration
  = Member
      {memberConfiguration = memberConfiguration,
       invitationId = Prelude.Nothing,
       networkConfiguration = Prelude.Nothing,
       networkId = Prelude.Nothing}
instance ToResourceProperties Member where
  toResourceProperties Member {..}
    = ResourceProperties
        {awsType = "AWS::ManagedBlockchain::Member",
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