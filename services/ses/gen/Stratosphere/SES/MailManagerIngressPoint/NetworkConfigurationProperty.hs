module Stratosphere.SES.MailManagerIngressPoint.NetworkConfigurationProperty (
        module Exports, NetworkConfigurationProperty(..),
        mkNetworkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerIngressPoint.PrivateNetworkConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerIngressPoint.PublicNetworkConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data NetworkConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanageringresspoint-networkconfiguration.html>
    NetworkConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanageringresspoint-networkconfiguration.html#cfn-ses-mailmanageringresspoint-networkconfiguration-privatenetworkconfiguration>
                                  privateNetworkConfiguration :: (Prelude.Maybe PrivateNetworkConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanageringresspoint-networkconfiguration.html#cfn-ses-mailmanageringresspoint-networkconfiguration-publicnetworkconfiguration>
                                  publicNetworkConfiguration :: (Prelude.Maybe PublicNetworkConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkConfigurationProperty :: NetworkConfigurationProperty
mkNetworkConfigurationProperty
  = NetworkConfigurationProperty
      {haddock_workaround_ = (),
       privateNetworkConfiguration = Prelude.Nothing,
       publicNetworkConfiguration = Prelude.Nothing}
instance ToResourceProperties NetworkConfigurationProperty where
  toResourceProperties NetworkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerIngressPoint.NetworkConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PrivateNetworkConfiguration"
                              Prelude.<$> privateNetworkConfiguration,
                            (JSON..=) "PublicNetworkConfiguration"
                              Prelude.<$> publicNetworkConfiguration])}
instance JSON.ToJSON NetworkConfigurationProperty where
  toJSON NetworkConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PrivateNetworkConfiguration"
                 Prelude.<$> privateNetworkConfiguration,
               (JSON..=) "PublicNetworkConfiguration"
                 Prelude.<$> publicNetworkConfiguration]))
instance Property "PrivateNetworkConfiguration" NetworkConfigurationProperty where
  type PropertyType "PrivateNetworkConfiguration" NetworkConfigurationProperty = PrivateNetworkConfigurationProperty
  set newValue NetworkConfigurationProperty {..}
    = NetworkConfigurationProperty
        {privateNetworkConfiguration = Prelude.pure newValue, ..}
instance Property "PublicNetworkConfiguration" NetworkConfigurationProperty where
  type PropertyType "PublicNetworkConfiguration" NetworkConfigurationProperty = PublicNetworkConfigurationProperty
  set newValue NetworkConfigurationProperty {..}
    = NetworkConfigurationProperty
        {publicNetworkConfiguration = Prelude.pure newValue, ..}