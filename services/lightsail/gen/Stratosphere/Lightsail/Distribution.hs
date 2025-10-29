module Stratosphere.Lightsail.Distribution (
        module Exports, Distribution(..), mkDistribution
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lightsail.Distribution.CacheBehaviorProperty as Exports
import {-# SOURCE #-} Stratosphere.Lightsail.Distribution.CacheBehaviorPerPathProperty as Exports
import {-# SOURCE #-} Stratosphere.Lightsail.Distribution.CacheSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.Lightsail.Distribution.InputOriginProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Distribution
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-distribution.html>
    Distribution {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-distribution.html#cfn-lightsail-distribution-bundleid>
                  bundleId :: (Value Prelude.Text),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-distribution.html#cfn-lightsail-distribution-cachebehaviorsettings>
                  cacheBehaviorSettings :: (Prelude.Maybe CacheSettingsProperty),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-distribution.html#cfn-lightsail-distribution-cachebehaviors>
                  cacheBehaviors :: (Prelude.Maybe [CacheBehaviorPerPathProperty]),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-distribution.html#cfn-lightsail-distribution-certificatename>
                  certificateName :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-distribution.html#cfn-lightsail-distribution-defaultcachebehavior>
                  defaultCacheBehavior :: CacheBehaviorProperty,
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-distribution.html#cfn-lightsail-distribution-distributionname>
                  distributionName :: (Value Prelude.Text),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-distribution.html#cfn-lightsail-distribution-ipaddresstype>
                  ipAddressType :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-distribution.html#cfn-lightsail-distribution-isenabled>
                  isEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-distribution.html#cfn-lightsail-distribution-origin>
                  origin :: InputOriginProperty,
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-distribution.html#cfn-lightsail-distribution-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDistribution ::
  Value Prelude.Text
  -> CacheBehaviorProperty
     -> Value Prelude.Text -> InputOriginProperty -> Distribution
mkDistribution
  bundleId
  defaultCacheBehavior
  distributionName
  origin
  = Distribution
      {bundleId = bundleId, defaultCacheBehavior = defaultCacheBehavior,
       distributionName = distributionName, origin = origin,
       cacheBehaviorSettings = Prelude.Nothing,
       cacheBehaviors = Prelude.Nothing,
       certificateName = Prelude.Nothing, ipAddressType = Prelude.Nothing,
       isEnabled = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Distribution where
  toResourceProperties Distribution {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Distribution",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BundleId" JSON..= bundleId,
                            "DefaultCacheBehavior" JSON..= defaultCacheBehavior,
                            "DistributionName" JSON..= distributionName,
                            "Origin" JSON..= origin]
                           (Prelude.catMaybes
                              [(JSON..=) "CacheBehaviorSettings"
                                 Prelude.<$> cacheBehaviorSettings,
                               (JSON..=) "CacheBehaviors" Prelude.<$> cacheBehaviors,
                               (JSON..=) "CertificateName" Prelude.<$> certificateName,
                               (JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                               (JSON..=) "IsEnabled" Prelude.<$> isEnabled,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Distribution where
  toJSON Distribution {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BundleId" JSON..= bundleId,
               "DefaultCacheBehavior" JSON..= defaultCacheBehavior,
               "DistributionName" JSON..= distributionName,
               "Origin" JSON..= origin]
              (Prelude.catMaybes
                 [(JSON..=) "CacheBehaviorSettings"
                    Prelude.<$> cacheBehaviorSettings,
                  (JSON..=) "CacheBehaviors" Prelude.<$> cacheBehaviors,
                  (JSON..=) "CertificateName" Prelude.<$> certificateName,
                  (JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                  (JSON..=) "IsEnabled" Prelude.<$> isEnabled,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BundleId" Distribution where
  type PropertyType "BundleId" Distribution = Value Prelude.Text
  set newValue Distribution {..}
    = Distribution {bundleId = newValue, ..}
instance Property "CacheBehaviorSettings" Distribution where
  type PropertyType "CacheBehaviorSettings" Distribution = CacheSettingsProperty
  set newValue Distribution {..}
    = Distribution {cacheBehaviorSettings = Prelude.pure newValue, ..}
instance Property "CacheBehaviors" Distribution where
  type PropertyType "CacheBehaviors" Distribution = [CacheBehaviorPerPathProperty]
  set newValue Distribution {..}
    = Distribution {cacheBehaviors = Prelude.pure newValue, ..}
instance Property "CertificateName" Distribution where
  type PropertyType "CertificateName" Distribution = Value Prelude.Text
  set newValue Distribution {..}
    = Distribution {certificateName = Prelude.pure newValue, ..}
instance Property "DefaultCacheBehavior" Distribution where
  type PropertyType "DefaultCacheBehavior" Distribution = CacheBehaviorProperty
  set newValue Distribution {..}
    = Distribution {defaultCacheBehavior = newValue, ..}
instance Property "DistributionName" Distribution where
  type PropertyType "DistributionName" Distribution = Value Prelude.Text
  set newValue Distribution {..}
    = Distribution {distributionName = newValue, ..}
instance Property "IpAddressType" Distribution where
  type PropertyType "IpAddressType" Distribution = Value Prelude.Text
  set newValue Distribution {..}
    = Distribution {ipAddressType = Prelude.pure newValue, ..}
instance Property "IsEnabled" Distribution where
  type PropertyType "IsEnabled" Distribution = Value Prelude.Bool
  set newValue Distribution {..}
    = Distribution {isEnabled = Prelude.pure newValue, ..}
instance Property "Origin" Distribution where
  type PropertyType "Origin" Distribution = InputOriginProperty
  set newValue Distribution {..}
    = Distribution {origin = newValue, ..}
instance Property "Tags" Distribution where
  type PropertyType "Tags" Distribution = [Tag]
  set newValue Distribution {..}
    = Distribution {tags = Prelude.pure newValue, ..}