module Stratosphere.ApiGatewayV2.DomainName (
        module Exports, DomainName(..), mkDomainName
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.DomainName.DomainNameConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.DomainName.MutualTlsAuthenticationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DomainName
  = DomainName {domainName :: (Value Prelude.Text),
                domainNameConfigurations :: (Prelude.Maybe [DomainNameConfigurationProperty]),
                mutualTlsAuthentication :: (Prelude.Maybe MutualTlsAuthenticationProperty),
                tags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainName :: Value Prelude.Text -> DomainName
mkDomainName domainName
  = DomainName
      {domainName = domainName,
       domainNameConfigurations = Prelude.Nothing,
       mutualTlsAuthentication = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DomainName where
  toResourceProperties DomainName {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::DomainName",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainName" JSON..= domainName]
                           (Prelude.catMaybes
                              [(JSON..=) "DomainNameConfigurations"
                                 Prelude.<$> domainNameConfigurations,
                               (JSON..=) "MutualTlsAuthentication"
                                 Prelude.<$> mutualTlsAuthentication,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DomainName where
  toJSON DomainName {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainName" JSON..= domainName]
              (Prelude.catMaybes
                 [(JSON..=) "DomainNameConfigurations"
                    Prelude.<$> domainNameConfigurations,
                  (JSON..=) "MutualTlsAuthentication"
                    Prelude.<$> mutualTlsAuthentication,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DomainName" DomainName where
  type PropertyType "DomainName" DomainName = Value Prelude.Text
  set newValue DomainName {..}
    = DomainName {domainName = newValue, ..}
instance Property "DomainNameConfigurations" DomainName where
  type PropertyType "DomainNameConfigurations" DomainName = [DomainNameConfigurationProperty]
  set newValue DomainName {..}
    = DomainName {domainNameConfigurations = Prelude.pure newValue, ..}
instance Property "MutualTlsAuthentication" DomainName where
  type PropertyType "MutualTlsAuthentication" DomainName = MutualTlsAuthenticationProperty
  set newValue DomainName {..}
    = DomainName {mutualTlsAuthentication = Prelude.pure newValue, ..}
instance Property "Tags" DomainName where
  type PropertyType "Tags" DomainName = JSON.Object
  set newValue DomainName {..}
    = DomainName {tags = Prelude.pure newValue, ..}