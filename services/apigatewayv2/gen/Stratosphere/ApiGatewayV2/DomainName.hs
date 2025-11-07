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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html>
    DomainName {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-domainname>
                domainName :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-domainnameconfigurations>
                domainNameConfigurations :: (Prelude.Maybe [DomainNameConfigurationProperty]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-mutualtlsauthentication>
                mutualTlsAuthentication :: (Prelude.Maybe MutualTlsAuthenticationProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-routingmode>
                routingMode :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-tags>
                tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainName :: Value Prelude.Text -> DomainName
mkDomainName domainName
  = DomainName
      {haddock_workaround_ = (), domainName = domainName,
       domainNameConfigurations = Prelude.Nothing,
       mutualTlsAuthentication = Prelude.Nothing,
       routingMode = Prelude.Nothing, tags = Prelude.Nothing}
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
                               (JSON..=) "RoutingMode" Prelude.<$> routingMode,
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
                  (JSON..=) "RoutingMode" Prelude.<$> routingMode,
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
instance Property "RoutingMode" DomainName where
  type PropertyType "RoutingMode" DomainName = Value Prelude.Text
  set newValue DomainName {..}
    = DomainName {routingMode = Prelude.pure newValue, ..}
instance Property "Tags" DomainName where
  type PropertyType "Tags" DomainName = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue DomainName {..}
    = DomainName {tags = Prelude.pure newValue, ..}