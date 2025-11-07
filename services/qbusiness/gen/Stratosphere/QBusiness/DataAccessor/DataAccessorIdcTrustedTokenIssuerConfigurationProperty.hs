module Stratosphere.QBusiness.DataAccessor.DataAccessorIdcTrustedTokenIssuerConfigurationProperty (
        DataAccessorIdcTrustedTokenIssuerConfigurationProperty(..),
        mkDataAccessorIdcTrustedTokenIssuerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataAccessorIdcTrustedTokenIssuerConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-dataaccessoridctrustedtokenissuerconfiguration.html>
    DataAccessorIdcTrustedTokenIssuerConfigurationProperty {haddock_workaround_ :: (),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-dataaccessoridctrustedtokenissuerconfiguration.html#cfn-qbusiness-dataaccessor-dataaccessoridctrustedtokenissuerconfiguration-idctrustedtokenissuerarn>
                                                            idcTrustedTokenIssuerArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataAccessorIdcTrustedTokenIssuerConfigurationProperty ::
  Value Prelude.Text
  -> DataAccessorIdcTrustedTokenIssuerConfigurationProperty
mkDataAccessorIdcTrustedTokenIssuerConfigurationProperty
  idcTrustedTokenIssuerArn
  = DataAccessorIdcTrustedTokenIssuerConfigurationProperty
      {haddock_workaround_ = (),
       idcTrustedTokenIssuerArn = idcTrustedTokenIssuerArn}
instance ToResourceProperties DataAccessorIdcTrustedTokenIssuerConfigurationProperty where
  toResourceProperties
    DataAccessorIdcTrustedTokenIssuerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataAccessor.DataAccessorIdcTrustedTokenIssuerConfiguration",
         supportsTags = Prelude.False,
         properties = ["IdcTrustedTokenIssuerArn"
                         JSON..= idcTrustedTokenIssuerArn]}
instance JSON.ToJSON DataAccessorIdcTrustedTokenIssuerConfigurationProperty where
  toJSON DataAccessorIdcTrustedTokenIssuerConfigurationProperty {..}
    = JSON.object
        ["IdcTrustedTokenIssuerArn" JSON..= idcTrustedTokenIssuerArn]
instance Property "IdcTrustedTokenIssuerArn" DataAccessorIdcTrustedTokenIssuerConfigurationProperty where
  type PropertyType "IdcTrustedTokenIssuerArn" DataAccessorIdcTrustedTokenIssuerConfigurationProperty = Value Prelude.Text
  set
    newValue
    DataAccessorIdcTrustedTokenIssuerConfigurationProperty {..}
    = DataAccessorIdcTrustedTokenIssuerConfigurationProperty
        {idcTrustedTokenIssuerArn = newValue, ..}