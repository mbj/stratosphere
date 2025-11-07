module Stratosphere.QBusiness.DataAccessor.DataAccessorAuthenticationDetailProperty (
        module Exports, DataAccessorAuthenticationDetailProperty(..),
        mkDataAccessorAuthenticationDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.DataAccessor.DataAccessorAuthenticationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataAccessorAuthenticationDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-dataaccessorauthenticationdetail.html>
    DataAccessorAuthenticationDetailProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-dataaccessorauthenticationdetail.html#cfn-qbusiness-dataaccessor-dataaccessorauthenticationdetail-authenticationconfiguration>
                                              authenticationConfiguration :: (Prelude.Maybe DataAccessorAuthenticationConfigurationProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-dataaccessorauthenticationdetail.html#cfn-qbusiness-dataaccessor-dataaccessorauthenticationdetail-authenticationtype>
                                              authenticationType :: (Value Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-dataaccessorauthenticationdetail.html#cfn-qbusiness-dataaccessor-dataaccessorauthenticationdetail-externalids>
                                              externalIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataAccessorAuthenticationDetailProperty ::
  Value Prelude.Text -> DataAccessorAuthenticationDetailProperty
mkDataAccessorAuthenticationDetailProperty authenticationType
  = DataAccessorAuthenticationDetailProperty
      {haddock_workaround_ = (), authenticationType = authenticationType,
       authenticationConfiguration = Prelude.Nothing,
       externalIds = Prelude.Nothing}
instance ToResourceProperties DataAccessorAuthenticationDetailProperty where
  toResourceProperties DataAccessorAuthenticationDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataAccessor.DataAccessorAuthenticationDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthenticationType" JSON..= authenticationType]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthenticationConfiguration"
                                 Prelude.<$> authenticationConfiguration,
                               (JSON..=) "ExternalIds" Prelude.<$> externalIds]))}
instance JSON.ToJSON DataAccessorAuthenticationDetailProperty where
  toJSON DataAccessorAuthenticationDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthenticationType" JSON..= authenticationType]
              (Prelude.catMaybes
                 [(JSON..=) "AuthenticationConfiguration"
                    Prelude.<$> authenticationConfiguration,
                  (JSON..=) "ExternalIds" Prelude.<$> externalIds])))
instance Property "AuthenticationConfiguration" DataAccessorAuthenticationDetailProperty where
  type PropertyType "AuthenticationConfiguration" DataAccessorAuthenticationDetailProperty = DataAccessorAuthenticationConfigurationProperty
  set newValue DataAccessorAuthenticationDetailProperty {..}
    = DataAccessorAuthenticationDetailProperty
        {authenticationConfiguration = Prelude.pure newValue, ..}
instance Property "AuthenticationType" DataAccessorAuthenticationDetailProperty where
  type PropertyType "AuthenticationType" DataAccessorAuthenticationDetailProperty = Value Prelude.Text
  set newValue DataAccessorAuthenticationDetailProperty {..}
    = DataAccessorAuthenticationDetailProperty
        {authenticationType = newValue, ..}
instance Property "ExternalIds" DataAccessorAuthenticationDetailProperty where
  type PropertyType "ExternalIds" DataAccessorAuthenticationDetailProperty = ValueList Prelude.Text
  set newValue DataAccessorAuthenticationDetailProperty {..}
    = DataAccessorAuthenticationDetailProperty
        {externalIds = Prelude.pure newValue, ..}