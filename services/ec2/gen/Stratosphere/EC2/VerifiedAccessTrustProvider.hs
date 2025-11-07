module Stratosphere.EC2.VerifiedAccessTrustProvider (
        module Exports, VerifiedAccessTrustProvider(..),
        mkVerifiedAccessTrustProvider
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.VerifiedAccessTrustProvider.DeviceOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.VerifiedAccessTrustProvider.NativeApplicationOidcOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.VerifiedAccessTrustProvider.OidcOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.VerifiedAccessTrustProvider.SseSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VerifiedAccessTrustProvider
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccesstrustprovider.html>
    VerifiedAccessTrustProvider {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccesstrustprovider.html#cfn-ec2-verifiedaccesstrustprovider-description>
                                 description :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccesstrustprovider.html#cfn-ec2-verifiedaccesstrustprovider-deviceoptions>
                                 deviceOptions :: (Prelude.Maybe DeviceOptionsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccesstrustprovider.html#cfn-ec2-verifiedaccesstrustprovider-devicetrustprovidertype>
                                 deviceTrustProviderType :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccesstrustprovider.html#cfn-ec2-verifiedaccesstrustprovider-nativeapplicationoidcoptions>
                                 nativeApplicationOidcOptions :: (Prelude.Maybe NativeApplicationOidcOptionsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccesstrustprovider.html#cfn-ec2-verifiedaccesstrustprovider-oidcoptions>
                                 oidcOptions :: (Prelude.Maybe OidcOptionsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccesstrustprovider.html#cfn-ec2-verifiedaccesstrustprovider-policyreferencename>
                                 policyReferenceName :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccesstrustprovider.html#cfn-ec2-verifiedaccesstrustprovider-ssespecification>
                                 sseSpecification :: (Prelude.Maybe SseSpecificationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccesstrustprovider.html#cfn-ec2-verifiedaccesstrustprovider-tags>
                                 tags :: (Prelude.Maybe [Tag]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccesstrustprovider.html#cfn-ec2-verifiedaccesstrustprovider-trustprovidertype>
                                 trustProviderType :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccesstrustprovider.html#cfn-ec2-verifiedaccesstrustprovider-usertrustprovidertype>
                                 userTrustProviderType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVerifiedAccessTrustProvider ::
  Value Prelude.Text
  -> Value Prelude.Text -> VerifiedAccessTrustProvider
mkVerifiedAccessTrustProvider policyReferenceName trustProviderType
  = VerifiedAccessTrustProvider
      {haddock_workaround_ = (),
       policyReferenceName = policyReferenceName,
       trustProviderType = trustProviderType,
       description = Prelude.Nothing, deviceOptions = Prelude.Nothing,
       deviceTrustProviderType = Prelude.Nothing,
       nativeApplicationOidcOptions = Prelude.Nothing,
       oidcOptions = Prelude.Nothing, sseSpecification = Prelude.Nothing,
       tags = Prelude.Nothing, userTrustProviderType = Prelude.Nothing}
instance ToResourceProperties VerifiedAccessTrustProvider where
  toResourceProperties VerifiedAccessTrustProvider {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessTrustProvider",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PolicyReferenceName" JSON..= policyReferenceName,
                            "TrustProviderType" JSON..= trustProviderType]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DeviceOptions" Prelude.<$> deviceOptions,
                               (JSON..=) "DeviceTrustProviderType"
                                 Prelude.<$> deviceTrustProviderType,
                               (JSON..=) "NativeApplicationOidcOptions"
                                 Prelude.<$> nativeApplicationOidcOptions,
                               (JSON..=) "OidcOptions" Prelude.<$> oidcOptions,
                               (JSON..=) "SseSpecification" Prelude.<$> sseSpecification,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UserTrustProviderType"
                                 Prelude.<$> userTrustProviderType]))}
instance JSON.ToJSON VerifiedAccessTrustProvider where
  toJSON VerifiedAccessTrustProvider {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PolicyReferenceName" JSON..= policyReferenceName,
               "TrustProviderType" JSON..= trustProviderType]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DeviceOptions" Prelude.<$> deviceOptions,
                  (JSON..=) "DeviceTrustProviderType"
                    Prelude.<$> deviceTrustProviderType,
                  (JSON..=) "NativeApplicationOidcOptions"
                    Prelude.<$> nativeApplicationOidcOptions,
                  (JSON..=) "OidcOptions" Prelude.<$> oidcOptions,
                  (JSON..=) "SseSpecification" Prelude.<$> sseSpecification,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UserTrustProviderType"
                    Prelude.<$> userTrustProviderType])))
instance Property "Description" VerifiedAccessTrustProvider where
  type PropertyType "Description" VerifiedAccessTrustProvider = Value Prelude.Text
  set newValue VerifiedAccessTrustProvider {..}
    = VerifiedAccessTrustProvider
        {description = Prelude.pure newValue, ..}
instance Property "DeviceOptions" VerifiedAccessTrustProvider where
  type PropertyType "DeviceOptions" VerifiedAccessTrustProvider = DeviceOptionsProperty
  set newValue VerifiedAccessTrustProvider {..}
    = VerifiedAccessTrustProvider
        {deviceOptions = Prelude.pure newValue, ..}
instance Property "DeviceTrustProviderType" VerifiedAccessTrustProvider where
  type PropertyType "DeviceTrustProviderType" VerifiedAccessTrustProvider = Value Prelude.Text
  set newValue VerifiedAccessTrustProvider {..}
    = VerifiedAccessTrustProvider
        {deviceTrustProviderType = Prelude.pure newValue, ..}
instance Property "NativeApplicationOidcOptions" VerifiedAccessTrustProvider where
  type PropertyType "NativeApplicationOidcOptions" VerifiedAccessTrustProvider = NativeApplicationOidcOptionsProperty
  set newValue VerifiedAccessTrustProvider {..}
    = VerifiedAccessTrustProvider
        {nativeApplicationOidcOptions = Prelude.pure newValue, ..}
instance Property "OidcOptions" VerifiedAccessTrustProvider where
  type PropertyType "OidcOptions" VerifiedAccessTrustProvider = OidcOptionsProperty
  set newValue VerifiedAccessTrustProvider {..}
    = VerifiedAccessTrustProvider
        {oidcOptions = Prelude.pure newValue, ..}
instance Property "PolicyReferenceName" VerifiedAccessTrustProvider where
  type PropertyType "PolicyReferenceName" VerifiedAccessTrustProvider = Value Prelude.Text
  set newValue VerifiedAccessTrustProvider {..}
    = VerifiedAccessTrustProvider {policyReferenceName = newValue, ..}
instance Property "SseSpecification" VerifiedAccessTrustProvider where
  type PropertyType "SseSpecification" VerifiedAccessTrustProvider = SseSpecificationProperty
  set newValue VerifiedAccessTrustProvider {..}
    = VerifiedAccessTrustProvider
        {sseSpecification = Prelude.pure newValue, ..}
instance Property "Tags" VerifiedAccessTrustProvider where
  type PropertyType "Tags" VerifiedAccessTrustProvider = [Tag]
  set newValue VerifiedAccessTrustProvider {..}
    = VerifiedAccessTrustProvider {tags = Prelude.pure newValue, ..}
instance Property "TrustProviderType" VerifiedAccessTrustProvider where
  type PropertyType "TrustProviderType" VerifiedAccessTrustProvider = Value Prelude.Text
  set newValue VerifiedAccessTrustProvider {..}
    = VerifiedAccessTrustProvider {trustProviderType = newValue, ..}
instance Property "UserTrustProviderType" VerifiedAccessTrustProvider where
  type PropertyType "UserTrustProviderType" VerifiedAccessTrustProvider = Value Prelude.Text
  set newValue VerifiedAccessTrustProvider {..}
    = VerifiedAccessTrustProvider
        {userTrustProviderType = Prelude.pure newValue, ..}