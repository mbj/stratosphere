module Stratosphere.EC2.VerifiedAccessInstance.VerifiedAccessTrustProviderProperty (
        VerifiedAccessTrustProviderProperty(..),
        mkVerifiedAccessTrustProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VerifiedAccessTrustProviderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessinstance-verifiedaccesstrustprovider.html>
    VerifiedAccessTrustProviderProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessinstance-verifiedaccesstrustprovider.html#cfn-ec2-verifiedaccessinstance-verifiedaccesstrustprovider-description>
                                         description :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessinstance-verifiedaccesstrustprovider.html#cfn-ec2-verifiedaccessinstance-verifiedaccesstrustprovider-devicetrustprovidertype>
                                         deviceTrustProviderType :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessinstance-verifiedaccesstrustprovider.html#cfn-ec2-verifiedaccessinstance-verifiedaccesstrustprovider-trustprovidertype>
                                         trustProviderType :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessinstance-verifiedaccesstrustprovider.html#cfn-ec2-verifiedaccessinstance-verifiedaccesstrustprovider-usertrustprovidertype>
                                         userTrustProviderType :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessinstance-verifiedaccesstrustprovider.html#cfn-ec2-verifiedaccessinstance-verifiedaccesstrustprovider-verifiedaccesstrustproviderid>
                                         verifiedAccessTrustProviderId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVerifiedAccessTrustProviderProperty ::
  VerifiedAccessTrustProviderProperty
mkVerifiedAccessTrustProviderProperty
  = VerifiedAccessTrustProviderProperty
      {haddock_workaround_ = (), description = Prelude.Nothing,
       deviceTrustProviderType = Prelude.Nothing,
       trustProviderType = Prelude.Nothing,
       userTrustProviderType = Prelude.Nothing,
       verifiedAccessTrustProviderId = Prelude.Nothing}
instance ToResourceProperties VerifiedAccessTrustProviderProperty where
  toResourceProperties VerifiedAccessTrustProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessInstance.VerifiedAccessTrustProvider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "DeviceTrustProviderType"
                              Prelude.<$> deviceTrustProviderType,
                            (JSON..=) "TrustProviderType" Prelude.<$> trustProviderType,
                            (JSON..=) "UserTrustProviderType"
                              Prelude.<$> userTrustProviderType,
                            (JSON..=) "VerifiedAccessTrustProviderId"
                              Prelude.<$> verifiedAccessTrustProviderId])}
instance JSON.ToJSON VerifiedAccessTrustProviderProperty where
  toJSON VerifiedAccessTrustProviderProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "DeviceTrustProviderType"
                 Prelude.<$> deviceTrustProviderType,
               (JSON..=) "TrustProviderType" Prelude.<$> trustProviderType,
               (JSON..=) "UserTrustProviderType"
                 Prelude.<$> userTrustProviderType,
               (JSON..=) "VerifiedAccessTrustProviderId"
                 Prelude.<$> verifiedAccessTrustProviderId]))
instance Property "Description" VerifiedAccessTrustProviderProperty where
  type PropertyType "Description" VerifiedAccessTrustProviderProperty = Value Prelude.Text
  set newValue VerifiedAccessTrustProviderProperty {..}
    = VerifiedAccessTrustProviderProperty
        {description = Prelude.pure newValue, ..}
instance Property "DeviceTrustProviderType" VerifiedAccessTrustProviderProperty where
  type PropertyType "DeviceTrustProviderType" VerifiedAccessTrustProviderProperty = Value Prelude.Text
  set newValue VerifiedAccessTrustProviderProperty {..}
    = VerifiedAccessTrustProviderProperty
        {deviceTrustProviderType = Prelude.pure newValue, ..}
instance Property "TrustProviderType" VerifiedAccessTrustProviderProperty where
  type PropertyType "TrustProviderType" VerifiedAccessTrustProviderProperty = Value Prelude.Text
  set newValue VerifiedAccessTrustProviderProperty {..}
    = VerifiedAccessTrustProviderProperty
        {trustProviderType = Prelude.pure newValue, ..}
instance Property "UserTrustProviderType" VerifiedAccessTrustProviderProperty where
  type PropertyType "UserTrustProviderType" VerifiedAccessTrustProviderProperty = Value Prelude.Text
  set newValue VerifiedAccessTrustProviderProperty {..}
    = VerifiedAccessTrustProviderProperty
        {userTrustProviderType = Prelude.pure newValue, ..}
instance Property "VerifiedAccessTrustProviderId" VerifiedAccessTrustProviderProperty where
  type PropertyType "VerifiedAccessTrustProviderId" VerifiedAccessTrustProviderProperty = Value Prelude.Text
  set newValue VerifiedAccessTrustProviderProperty {..}
    = VerifiedAccessTrustProviderProperty
        {verifiedAccessTrustProviderId = Prelude.pure newValue, ..}