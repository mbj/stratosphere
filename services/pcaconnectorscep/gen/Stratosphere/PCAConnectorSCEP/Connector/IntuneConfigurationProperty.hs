module Stratosphere.PCAConnectorSCEP.Connector.IntuneConfigurationProperty (
        IntuneConfigurationProperty(..), mkIntuneConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntuneConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorscep-connector-intuneconfiguration.html>
    IntuneConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorscep-connector-intuneconfiguration.html#cfn-pcaconnectorscep-connector-intuneconfiguration-azureapplicationid>
                                 azureApplicationId :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorscep-connector-intuneconfiguration.html#cfn-pcaconnectorscep-connector-intuneconfiguration-domain>
                                 domain :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntuneConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> IntuneConfigurationProperty
mkIntuneConfigurationProperty azureApplicationId domain
  = IntuneConfigurationProperty
      {haddock_workaround_ = (), azureApplicationId = azureApplicationId,
       domain = domain}
instance ToResourceProperties IntuneConfigurationProperty where
  toResourceProperties IntuneConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorSCEP::Connector.IntuneConfiguration",
         supportsTags = Prelude.False,
         properties = ["AzureApplicationId" JSON..= azureApplicationId,
                       "Domain" JSON..= domain]}
instance JSON.ToJSON IntuneConfigurationProperty where
  toJSON IntuneConfigurationProperty {..}
    = JSON.object
        ["AzureApplicationId" JSON..= azureApplicationId,
         "Domain" JSON..= domain]
instance Property "AzureApplicationId" IntuneConfigurationProperty where
  type PropertyType "AzureApplicationId" IntuneConfigurationProperty = Value Prelude.Text
  set newValue IntuneConfigurationProperty {..}
    = IntuneConfigurationProperty {azureApplicationId = newValue, ..}
instance Property "Domain" IntuneConfigurationProperty where
  type PropertyType "Domain" IntuneConfigurationProperty = Value Prelude.Text
  set newValue IntuneConfigurationProperty {..}
    = IntuneConfigurationProperty {domain = newValue, ..}