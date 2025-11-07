module Stratosphere.EVS.Environment (
        module Exports, Environment(..), mkEnvironment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EVS.Environment.ConnectivityInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.EVS.Environment.HostInfoForCreateProperty as Exports
import {-# SOURCE #-} Stratosphere.EVS.Environment.InitialVlansProperty as Exports
import {-# SOURCE #-} Stratosphere.EVS.Environment.LicenseInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.EVS.Environment.ServiceAccessSecurityGroupsProperty as Exports
import {-# SOURCE #-} Stratosphere.EVS.Environment.VcfHostnamesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Environment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evs-environment.html>
    Environment {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evs-environment.html#cfn-evs-environment-connectivityinfo>
                 connectivityInfo :: ConnectivityInfoProperty,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evs-environment.html#cfn-evs-environment-environmentname>
                 environmentName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evs-environment.html#cfn-evs-environment-hosts>
                 hosts :: (Prelude.Maybe [HostInfoForCreateProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evs-environment.html#cfn-evs-environment-initialvlans>
                 initialVlans :: (Prelude.Maybe InitialVlansProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evs-environment.html#cfn-evs-environment-kmskeyid>
                 kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evs-environment.html#cfn-evs-environment-licenseinfo>
                 licenseInfo :: LicenseInfoProperty,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evs-environment.html#cfn-evs-environment-serviceaccesssecuritygroups>
                 serviceAccessSecurityGroups :: (Prelude.Maybe ServiceAccessSecurityGroupsProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evs-environment.html#cfn-evs-environment-serviceaccesssubnetid>
                 serviceAccessSubnetId :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evs-environment.html#cfn-evs-environment-siteid>
                 siteId :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evs-environment.html#cfn-evs-environment-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evs-environment.html#cfn-evs-environment-termsaccepted>
                 termsAccepted :: (Value Prelude.Bool),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evs-environment.html#cfn-evs-environment-vcfhostnames>
                 vcfHostnames :: VcfHostnamesProperty,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evs-environment.html#cfn-evs-environment-vcfversion>
                 vcfVersion :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evs-environment.html#cfn-evs-environment-vpcid>
                 vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironment ::
  ConnectivityInfoProperty
  -> LicenseInfoProperty
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Bool
              -> VcfHostnamesProperty
                 -> Value Prelude.Text -> Value Prelude.Text -> Environment
mkEnvironment
  connectivityInfo
  licenseInfo
  serviceAccessSubnetId
  siteId
  termsAccepted
  vcfHostnames
  vcfVersion
  vpcId
  = Environment
      {haddock_workaround_ = (), connectivityInfo = connectivityInfo,
       licenseInfo = licenseInfo,
       serviceAccessSubnetId = serviceAccessSubnetId, siteId = siteId,
       termsAccepted = termsAccepted, vcfHostnames = vcfHostnames,
       vcfVersion = vcfVersion, vpcId = vpcId,
       environmentName = Prelude.Nothing, hosts = Prelude.Nothing,
       initialVlans = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       serviceAccessSecurityGroups = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Environment where
  toResourceProperties Environment {..}
    = ResourceProperties
        {awsType = "AWS::EVS::Environment", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectivityInfo" JSON..= connectivityInfo,
                            "LicenseInfo" JSON..= licenseInfo,
                            "ServiceAccessSubnetId" JSON..= serviceAccessSubnetId,
                            "SiteId" JSON..= siteId, "TermsAccepted" JSON..= termsAccepted,
                            "VcfHostnames" JSON..= vcfHostnames,
                            "VcfVersion" JSON..= vcfVersion, "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "EnvironmentName" Prelude.<$> environmentName,
                               (JSON..=) "Hosts" Prelude.<$> hosts,
                               (JSON..=) "InitialVlans" Prelude.<$> initialVlans,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "ServiceAccessSecurityGroups"
                                 Prelude.<$> serviceAccessSecurityGroups,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Environment where
  toJSON Environment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectivityInfo" JSON..= connectivityInfo,
               "LicenseInfo" JSON..= licenseInfo,
               "ServiceAccessSubnetId" JSON..= serviceAccessSubnetId,
               "SiteId" JSON..= siteId, "TermsAccepted" JSON..= termsAccepted,
               "VcfHostnames" JSON..= vcfHostnames,
               "VcfVersion" JSON..= vcfVersion, "VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "EnvironmentName" Prelude.<$> environmentName,
                  (JSON..=) "Hosts" Prelude.<$> hosts,
                  (JSON..=) "InitialVlans" Prelude.<$> initialVlans,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "ServiceAccessSecurityGroups"
                    Prelude.<$> serviceAccessSecurityGroups,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ConnectivityInfo" Environment where
  type PropertyType "ConnectivityInfo" Environment = ConnectivityInfoProperty
  set newValue Environment {..}
    = Environment {connectivityInfo = newValue, ..}
instance Property "EnvironmentName" Environment where
  type PropertyType "EnvironmentName" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {environmentName = Prelude.pure newValue, ..}
instance Property "Hosts" Environment where
  type PropertyType "Hosts" Environment = [HostInfoForCreateProperty]
  set newValue Environment {..}
    = Environment {hosts = Prelude.pure newValue, ..}
instance Property "InitialVlans" Environment where
  type PropertyType "InitialVlans" Environment = InitialVlansProperty
  set newValue Environment {..}
    = Environment {initialVlans = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Environment where
  type PropertyType "KmsKeyId" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {kmsKeyId = Prelude.pure newValue, ..}
instance Property "LicenseInfo" Environment where
  type PropertyType "LicenseInfo" Environment = LicenseInfoProperty
  set newValue Environment {..}
    = Environment {licenseInfo = newValue, ..}
instance Property "ServiceAccessSecurityGroups" Environment where
  type PropertyType "ServiceAccessSecurityGroups" Environment = ServiceAccessSecurityGroupsProperty
  set newValue Environment {..}
    = Environment
        {serviceAccessSecurityGroups = Prelude.pure newValue, ..}
instance Property "ServiceAccessSubnetId" Environment where
  type PropertyType "ServiceAccessSubnetId" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {serviceAccessSubnetId = newValue, ..}
instance Property "SiteId" Environment where
  type PropertyType "SiteId" Environment = Value Prelude.Text
  set newValue Environment {..} = Environment {siteId = newValue, ..}
instance Property "Tags" Environment where
  type PropertyType "Tags" Environment = [Tag]
  set newValue Environment {..}
    = Environment {tags = Prelude.pure newValue, ..}
instance Property "TermsAccepted" Environment where
  type PropertyType "TermsAccepted" Environment = Value Prelude.Bool
  set newValue Environment {..}
    = Environment {termsAccepted = newValue, ..}
instance Property "VcfHostnames" Environment where
  type PropertyType "VcfHostnames" Environment = VcfHostnamesProperty
  set newValue Environment {..}
    = Environment {vcfHostnames = newValue, ..}
instance Property "VcfVersion" Environment where
  type PropertyType "VcfVersion" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {vcfVersion = newValue, ..}
instance Property "VpcId" Environment where
  type PropertyType "VpcId" Environment = Value Prelude.Text
  set newValue Environment {..} = Environment {vpcId = newValue, ..}