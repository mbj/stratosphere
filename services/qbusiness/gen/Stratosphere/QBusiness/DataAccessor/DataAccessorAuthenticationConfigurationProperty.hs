module Stratosphere.QBusiness.DataAccessor.DataAccessorAuthenticationConfigurationProperty (
        module Exports,
        DataAccessorAuthenticationConfigurationProperty(..),
        mkDataAccessorAuthenticationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.DataAccessor.DataAccessorIdcTrustedTokenIssuerConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DataAccessorAuthenticationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-dataaccessorauthenticationconfiguration.html>
    DataAccessorAuthenticationConfigurationProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-dataaccessorauthenticationconfiguration.html#cfn-qbusiness-dataaccessor-dataaccessorauthenticationconfiguration-idctrustedtokenissuerconfiguration>
                                                     idcTrustedTokenIssuerConfiguration :: DataAccessorIdcTrustedTokenIssuerConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataAccessorAuthenticationConfigurationProperty ::
  DataAccessorIdcTrustedTokenIssuerConfigurationProperty
  -> DataAccessorAuthenticationConfigurationProperty
mkDataAccessorAuthenticationConfigurationProperty
  idcTrustedTokenIssuerConfiguration
  = DataAccessorAuthenticationConfigurationProperty
      {haddock_workaround_ = (),
       idcTrustedTokenIssuerConfiguration = idcTrustedTokenIssuerConfiguration}
instance ToResourceProperties DataAccessorAuthenticationConfigurationProperty where
  toResourceProperties
    DataAccessorAuthenticationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataAccessor.DataAccessorAuthenticationConfiguration",
         supportsTags = Prelude.False,
         properties = ["IdcTrustedTokenIssuerConfiguration"
                         JSON..= idcTrustedTokenIssuerConfiguration]}
instance JSON.ToJSON DataAccessorAuthenticationConfigurationProperty where
  toJSON DataAccessorAuthenticationConfigurationProperty {..}
    = JSON.object
        ["IdcTrustedTokenIssuerConfiguration"
           JSON..= idcTrustedTokenIssuerConfiguration]
instance Property "IdcTrustedTokenIssuerConfiguration" DataAccessorAuthenticationConfigurationProperty where
  type PropertyType "IdcTrustedTokenIssuerConfiguration" DataAccessorAuthenticationConfigurationProperty = DataAccessorIdcTrustedTokenIssuerConfigurationProperty
  set newValue DataAccessorAuthenticationConfigurationProperty {..}
    = DataAccessorAuthenticationConfigurationProperty
        {idcTrustedTokenIssuerConfiguration = newValue, ..}