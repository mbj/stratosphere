module Stratosphere.SES.MailManagerIngressPoint.PublicNetworkConfigurationProperty (
        PublicNetworkConfigurationProperty(..),
        mkPublicNetworkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data PublicNetworkConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanageringresspoint-publicnetworkconfiguration.html>
    PublicNetworkConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanageringresspoint-publicnetworkconfiguration.html#cfn-ses-mailmanageringresspoint-publicnetworkconfiguration-iptype>
                                        ipType :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPublicNetworkConfigurationProperty ::
  JSON.Object -> PublicNetworkConfigurationProperty
mkPublicNetworkConfigurationProperty ipType
  = PublicNetworkConfigurationProperty
      {haddock_workaround_ = (), ipType = ipType}
instance ToResourceProperties PublicNetworkConfigurationProperty where
  toResourceProperties PublicNetworkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerIngressPoint.PublicNetworkConfiguration",
         supportsTags = Prelude.False,
         properties = ["IpType" JSON..= ipType]}
instance JSON.ToJSON PublicNetworkConfigurationProperty where
  toJSON PublicNetworkConfigurationProperty {..}
    = JSON.object ["IpType" JSON..= ipType]
instance Property "IpType" PublicNetworkConfigurationProperty where
  type PropertyType "IpType" PublicNetworkConfigurationProperty = JSON.Object
  set newValue PublicNetworkConfigurationProperty {..}
    = PublicNetworkConfigurationProperty {ipType = newValue, ..}