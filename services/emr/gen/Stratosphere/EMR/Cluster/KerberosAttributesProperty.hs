module Stratosphere.EMR.Cluster.KerberosAttributesProperty (
        KerberosAttributesProperty(..), mkKerberosAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KerberosAttributesProperty
  = KerberosAttributesProperty {aDDomainJoinPassword :: (Prelude.Maybe (Value Prelude.Text)),
                                aDDomainJoinUser :: (Prelude.Maybe (Value Prelude.Text)),
                                crossRealmTrustPrincipalPassword :: (Prelude.Maybe (Value Prelude.Text)),
                                kdcAdminPassword :: (Value Prelude.Text),
                                realm :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKerberosAttributesProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> KerberosAttributesProperty
mkKerberosAttributesProperty kdcAdminPassword realm
  = KerberosAttributesProperty
      {kdcAdminPassword = kdcAdminPassword, realm = realm,
       aDDomainJoinPassword = Prelude.Nothing,
       aDDomainJoinUser = Prelude.Nothing,
       crossRealmTrustPrincipalPassword = Prelude.Nothing}
instance ToResourceProperties KerberosAttributesProperty where
  toResourceProperties KerberosAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.KerberosAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KdcAdminPassword" JSON..= kdcAdminPassword,
                            "Realm" JSON..= realm]
                           (Prelude.catMaybes
                              [(JSON..=) "ADDomainJoinPassword" Prelude.<$> aDDomainJoinPassword,
                               (JSON..=) "ADDomainJoinUser" Prelude.<$> aDDomainJoinUser,
                               (JSON..=) "CrossRealmTrustPrincipalPassword"
                                 Prelude.<$> crossRealmTrustPrincipalPassword]))}
instance JSON.ToJSON KerberosAttributesProperty where
  toJSON KerberosAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KdcAdminPassword" JSON..= kdcAdminPassword,
               "Realm" JSON..= realm]
              (Prelude.catMaybes
                 [(JSON..=) "ADDomainJoinPassword" Prelude.<$> aDDomainJoinPassword,
                  (JSON..=) "ADDomainJoinUser" Prelude.<$> aDDomainJoinUser,
                  (JSON..=) "CrossRealmTrustPrincipalPassword"
                    Prelude.<$> crossRealmTrustPrincipalPassword])))
instance Property "ADDomainJoinPassword" KerberosAttributesProperty where
  type PropertyType "ADDomainJoinPassword" KerberosAttributesProperty = Value Prelude.Text
  set newValue KerberosAttributesProperty {..}
    = KerberosAttributesProperty
        {aDDomainJoinPassword = Prelude.pure newValue, ..}
instance Property "ADDomainJoinUser" KerberosAttributesProperty where
  type PropertyType "ADDomainJoinUser" KerberosAttributesProperty = Value Prelude.Text
  set newValue KerberosAttributesProperty {..}
    = KerberosAttributesProperty
        {aDDomainJoinUser = Prelude.pure newValue, ..}
instance Property "CrossRealmTrustPrincipalPassword" KerberosAttributesProperty where
  type PropertyType "CrossRealmTrustPrincipalPassword" KerberosAttributesProperty = Value Prelude.Text
  set newValue KerberosAttributesProperty {..}
    = KerberosAttributesProperty
        {crossRealmTrustPrincipalPassword = Prelude.pure newValue, ..}
instance Property "KdcAdminPassword" KerberosAttributesProperty where
  type PropertyType "KdcAdminPassword" KerberosAttributesProperty = Value Prelude.Text
  set newValue KerberosAttributesProperty {..}
    = KerberosAttributesProperty {kdcAdminPassword = newValue, ..}
instance Property "Realm" KerberosAttributesProperty where
  type PropertyType "Realm" KerberosAttributesProperty = Value Prelude.Text
  set newValue KerberosAttributesProperty {..}
    = KerberosAttributesProperty {realm = newValue, ..}