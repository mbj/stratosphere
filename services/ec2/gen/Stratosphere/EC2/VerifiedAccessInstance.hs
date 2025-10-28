module Stratosphere.EC2.VerifiedAccessInstance (
        module Exports, VerifiedAccessInstance(..),
        mkVerifiedAccessInstance
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.VerifiedAccessInstance.VerifiedAccessLogsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.VerifiedAccessInstance.VerifiedAccessTrustProviderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VerifiedAccessInstance
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccessinstance.html>
    VerifiedAccessInstance {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccessinstance.html#cfn-ec2-verifiedaccessinstance-description>
                            description :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccessinstance.html#cfn-ec2-verifiedaccessinstance-fipsenabled>
                            fipsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccessinstance.html#cfn-ec2-verifiedaccessinstance-loggingconfigurations>
                            loggingConfigurations :: (Prelude.Maybe VerifiedAccessLogsProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccessinstance.html#cfn-ec2-verifiedaccessinstance-tags>
                            tags :: (Prelude.Maybe [Tag]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccessinstance.html#cfn-ec2-verifiedaccessinstance-verifiedaccesstrustproviderids>
                            verifiedAccessTrustProviderIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccessinstance.html#cfn-ec2-verifiedaccessinstance-verifiedaccesstrustproviders>
                            verifiedAccessTrustProviders :: (Prelude.Maybe [VerifiedAccessTrustProviderProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVerifiedAccessInstance :: VerifiedAccessInstance
mkVerifiedAccessInstance
  = VerifiedAccessInstance
      {haddock_workaround_ = (), description = Prelude.Nothing,
       fipsEnabled = Prelude.Nothing,
       loggingConfigurations = Prelude.Nothing, tags = Prelude.Nothing,
       verifiedAccessTrustProviderIds = Prelude.Nothing,
       verifiedAccessTrustProviders = Prelude.Nothing}
instance ToResourceProperties VerifiedAccessInstance where
  toResourceProperties VerifiedAccessInstance {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessInstance",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "FipsEnabled" Prelude.<$> fipsEnabled,
                            (JSON..=) "LoggingConfigurations"
                              Prelude.<$> loggingConfigurations,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "VerifiedAccessTrustProviderIds"
                              Prelude.<$> verifiedAccessTrustProviderIds,
                            (JSON..=) "VerifiedAccessTrustProviders"
                              Prelude.<$> verifiedAccessTrustProviders])}
instance JSON.ToJSON VerifiedAccessInstance where
  toJSON VerifiedAccessInstance {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "FipsEnabled" Prelude.<$> fipsEnabled,
               (JSON..=) "LoggingConfigurations"
                 Prelude.<$> loggingConfigurations,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "VerifiedAccessTrustProviderIds"
                 Prelude.<$> verifiedAccessTrustProviderIds,
               (JSON..=) "VerifiedAccessTrustProviders"
                 Prelude.<$> verifiedAccessTrustProviders]))
instance Property "Description" VerifiedAccessInstance where
  type PropertyType "Description" VerifiedAccessInstance = Value Prelude.Text
  set newValue VerifiedAccessInstance {..}
    = VerifiedAccessInstance {description = Prelude.pure newValue, ..}
instance Property "FipsEnabled" VerifiedAccessInstance where
  type PropertyType "FipsEnabled" VerifiedAccessInstance = Value Prelude.Bool
  set newValue VerifiedAccessInstance {..}
    = VerifiedAccessInstance {fipsEnabled = Prelude.pure newValue, ..}
instance Property "LoggingConfigurations" VerifiedAccessInstance where
  type PropertyType "LoggingConfigurations" VerifiedAccessInstance = VerifiedAccessLogsProperty
  set newValue VerifiedAccessInstance {..}
    = VerifiedAccessInstance
        {loggingConfigurations = Prelude.pure newValue, ..}
instance Property "Tags" VerifiedAccessInstance where
  type PropertyType "Tags" VerifiedAccessInstance = [Tag]
  set newValue VerifiedAccessInstance {..}
    = VerifiedAccessInstance {tags = Prelude.pure newValue, ..}
instance Property "VerifiedAccessTrustProviderIds" VerifiedAccessInstance where
  type PropertyType "VerifiedAccessTrustProviderIds" VerifiedAccessInstance = ValueList Prelude.Text
  set newValue VerifiedAccessInstance {..}
    = VerifiedAccessInstance
        {verifiedAccessTrustProviderIds = Prelude.pure newValue, ..}
instance Property "VerifiedAccessTrustProviders" VerifiedAccessInstance where
  type PropertyType "VerifiedAccessTrustProviders" VerifiedAccessInstance = [VerifiedAccessTrustProviderProperty]
  set newValue VerifiedAccessInstance {..}
    = VerifiedAccessInstance
        {verifiedAccessTrustProviders = Prelude.pure newValue, ..}