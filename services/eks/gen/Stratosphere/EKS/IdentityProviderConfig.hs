module Stratosphere.EKS.IdentityProviderConfig (
        module Exports, IdentityProviderConfig(..),
        mkIdentityProviderConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.IdentityProviderConfig.OidcIdentityProviderConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IdentityProviderConfig
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-identityproviderconfig.html>
    IdentityProviderConfig {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-identityproviderconfig.html#cfn-eks-identityproviderconfig-clustername>
                            clusterName :: (Value Prelude.Text),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-identityproviderconfig.html#cfn-eks-identityproviderconfig-identityproviderconfigname>
                            identityProviderConfigName :: (Prelude.Maybe (Value Prelude.Text)),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-identityproviderconfig.html#cfn-eks-identityproviderconfig-oidc>
                            oidc :: (Prelude.Maybe OidcIdentityProviderConfigProperty),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-identityproviderconfig.html#cfn-eks-identityproviderconfig-tags>
                            tags :: (Prelude.Maybe [Tag]),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-identityproviderconfig.html#cfn-eks-identityproviderconfig-type>
                            type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentityProviderConfig ::
  Value Prelude.Text -> Value Prelude.Text -> IdentityProviderConfig
mkIdentityProviderConfig clusterName type'
  = IdentityProviderConfig
      {clusterName = clusterName, type' = type',
       identityProviderConfigName = Prelude.Nothing,
       oidc = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties IdentityProviderConfig where
  toResourceProperties IdentityProviderConfig {..}
    = ResourceProperties
        {awsType = "AWS::EKS::IdentityProviderConfig",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterName" JSON..= clusterName, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "IdentityProviderConfigName"
                                 Prelude.<$> identityProviderConfigName,
                               (JSON..=) "Oidc" Prelude.<$> oidc,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IdentityProviderConfig where
  toJSON IdentityProviderConfig {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterName" JSON..= clusterName, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "IdentityProviderConfigName"
                    Prelude.<$> identityProviderConfigName,
                  (JSON..=) "Oidc" Prelude.<$> oidc,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ClusterName" IdentityProviderConfig where
  type PropertyType "ClusterName" IdentityProviderConfig = Value Prelude.Text
  set newValue IdentityProviderConfig {..}
    = IdentityProviderConfig {clusterName = newValue, ..}
instance Property "IdentityProviderConfigName" IdentityProviderConfig where
  type PropertyType "IdentityProviderConfigName" IdentityProviderConfig = Value Prelude.Text
  set newValue IdentityProviderConfig {..}
    = IdentityProviderConfig
        {identityProviderConfigName = Prelude.pure newValue, ..}
instance Property "Oidc" IdentityProviderConfig where
  type PropertyType "Oidc" IdentityProviderConfig = OidcIdentityProviderConfigProperty
  set newValue IdentityProviderConfig {..}
    = IdentityProviderConfig {oidc = Prelude.pure newValue, ..}
instance Property "Tags" IdentityProviderConfig where
  type PropertyType "Tags" IdentityProviderConfig = [Tag]
  set newValue IdentityProviderConfig {..}
    = IdentityProviderConfig {tags = Prelude.pure newValue, ..}
instance Property "Type" IdentityProviderConfig where
  type PropertyType "Type" IdentityProviderConfig = Value Prelude.Text
  set newValue IdentityProviderConfig {..}
    = IdentityProviderConfig {type' = newValue, ..}