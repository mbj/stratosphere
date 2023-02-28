module Stratosphere.AmazonMQ.Broker.LdapServerMetadataProperty (
        LdapServerMetadataProperty(..), mkLdapServerMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LdapServerMetadataProperty
  = LdapServerMetadataProperty {hosts :: (ValueList Prelude.Text),
                                roleBase :: (Value Prelude.Text),
                                roleName :: (Prelude.Maybe (Value Prelude.Text)),
                                roleSearchMatching :: (Value Prelude.Text),
                                roleSearchSubtree :: (Prelude.Maybe (Value Prelude.Bool)),
                                serviceAccountPassword :: (Value Prelude.Text),
                                serviceAccountUsername :: (Value Prelude.Text),
                                userBase :: (Value Prelude.Text),
                                userRoleName :: (Prelude.Maybe (Value Prelude.Text)),
                                userSearchMatching :: (Value Prelude.Text),
                                userSearchSubtree :: (Prelude.Maybe (Value Prelude.Bool))}
mkLdapServerMetadataProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Value Prelude.Text
                 -> Value Prelude.Text -> LdapServerMetadataProperty
mkLdapServerMetadataProperty
  hosts
  roleBase
  roleSearchMatching
  serviceAccountPassword
  serviceAccountUsername
  userBase
  userSearchMatching
  = LdapServerMetadataProperty
      {hosts = hosts, roleBase = roleBase,
       roleSearchMatching = roleSearchMatching,
       serviceAccountPassword = serviceAccountPassword,
       serviceAccountUsername = serviceAccountUsername,
       userBase = userBase, userSearchMatching = userSearchMatching,
       roleName = Prelude.Nothing, roleSearchSubtree = Prelude.Nothing,
       userRoleName = Prelude.Nothing,
       userSearchSubtree = Prelude.Nothing}
instance ToResourceProperties LdapServerMetadataProperty where
  toResourceProperties LdapServerMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmazonMQ::Broker.LdapServerMetadata",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Hosts" JSON..= hosts, "RoleBase" JSON..= roleBase,
                            "RoleSearchMatching" JSON..= roleSearchMatching,
                            "ServiceAccountPassword" JSON..= serviceAccountPassword,
                            "ServiceAccountUsername" JSON..= serviceAccountUsername,
                            "UserBase" JSON..= userBase,
                            "UserSearchMatching" JSON..= userSearchMatching]
                           (Prelude.catMaybes
                              [(JSON..=) "RoleName" Prelude.<$> roleName,
                               (JSON..=) "RoleSearchSubtree" Prelude.<$> roleSearchSubtree,
                               (JSON..=) "UserRoleName" Prelude.<$> userRoleName,
                               (JSON..=) "UserSearchSubtree" Prelude.<$> userSearchSubtree]))}
instance JSON.ToJSON LdapServerMetadataProperty where
  toJSON LdapServerMetadataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Hosts" JSON..= hosts, "RoleBase" JSON..= roleBase,
               "RoleSearchMatching" JSON..= roleSearchMatching,
               "ServiceAccountPassword" JSON..= serviceAccountPassword,
               "ServiceAccountUsername" JSON..= serviceAccountUsername,
               "UserBase" JSON..= userBase,
               "UserSearchMatching" JSON..= userSearchMatching]
              (Prelude.catMaybes
                 [(JSON..=) "RoleName" Prelude.<$> roleName,
                  (JSON..=) "RoleSearchSubtree" Prelude.<$> roleSearchSubtree,
                  (JSON..=) "UserRoleName" Prelude.<$> userRoleName,
                  (JSON..=) "UserSearchSubtree" Prelude.<$> userSearchSubtree])))
instance Property "Hosts" LdapServerMetadataProperty where
  type PropertyType "Hosts" LdapServerMetadataProperty = ValueList Prelude.Text
  set newValue LdapServerMetadataProperty {..}
    = LdapServerMetadataProperty {hosts = newValue, ..}
instance Property "RoleBase" LdapServerMetadataProperty where
  type PropertyType "RoleBase" LdapServerMetadataProperty = Value Prelude.Text
  set newValue LdapServerMetadataProperty {..}
    = LdapServerMetadataProperty {roleBase = newValue, ..}
instance Property "RoleName" LdapServerMetadataProperty where
  type PropertyType "RoleName" LdapServerMetadataProperty = Value Prelude.Text
  set newValue LdapServerMetadataProperty {..}
    = LdapServerMetadataProperty {roleName = Prelude.pure newValue, ..}
instance Property "RoleSearchMatching" LdapServerMetadataProperty where
  type PropertyType "RoleSearchMatching" LdapServerMetadataProperty = Value Prelude.Text
  set newValue LdapServerMetadataProperty {..}
    = LdapServerMetadataProperty {roleSearchMatching = newValue, ..}
instance Property "RoleSearchSubtree" LdapServerMetadataProperty where
  type PropertyType "RoleSearchSubtree" LdapServerMetadataProperty = Value Prelude.Bool
  set newValue LdapServerMetadataProperty {..}
    = LdapServerMetadataProperty
        {roleSearchSubtree = Prelude.pure newValue, ..}
instance Property "ServiceAccountPassword" LdapServerMetadataProperty where
  type PropertyType "ServiceAccountPassword" LdapServerMetadataProperty = Value Prelude.Text
  set newValue LdapServerMetadataProperty {..}
    = LdapServerMetadataProperty
        {serviceAccountPassword = newValue, ..}
instance Property "ServiceAccountUsername" LdapServerMetadataProperty where
  type PropertyType "ServiceAccountUsername" LdapServerMetadataProperty = Value Prelude.Text
  set newValue LdapServerMetadataProperty {..}
    = LdapServerMetadataProperty
        {serviceAccountUsername = newValue, ..}
instance Property "UserBase" LdapServerMetadataProperty where
  type PropertyType "UserBase" LdapServerMetadataProperty = Value Prelude.Text
  set newValue LdapServerMetadataProperty {..}
    = LdapServerMetadataProperty {userBase = newValue, ..}
instance Property "UserRoleName" LdapServerMetadataProperty where
  type PropertyType "UserRoleName" LdapServerMetadataProperty = Value Prelude.Text
  set newValue LdapServerMetadataProperty {..}
    = LdapServerMetadataProperty
        {userRoleName = Prelude.pure newValue, ..}
instance Property "UserSearchMatching" LdapServerMetadataProperty where
  type PropertyType "UserSearchMatching" LdapServerMetadataProperty = Value Prelude.Text
  set newValue LdapServerMetadataProperty {..}
    = LdapServerMetadataProperty {userSearchMatching = newValue, ..}
instance Property "UserSearchSubtree" LdapServerMetadataProperty where
  type PropertyType "UserSearchSubtree" LdapServerMetadataProperty = Value Prelude.Bool
  set newValue LdapServerMetadataProperty {..}
    = LdapServerMetadataProperty
        {userSearchSubtree = Prelude.pure newValue, ..}