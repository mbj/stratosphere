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
  = VerifiedAccessInstance {description :: (Prelude.Maybe (Value Prelude.Text)),
                            loggingConfigurations :: (Prelude.Maybe VerifiedAccessLogsProperty),
                            tags :: (Prelude.Maybe [Tag]),
                            verifiedAccessTrustProviderIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                            verifiedAccessTrustProviders :: (Prelude.Maybe [VerifiedAccessTrustProviderProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVerifiedAccessInstance :: VerifiedAccessInstance
mkVerifiedAccessInstance
  = VerifiedAccessInstance
      {description = Prelude.Nothing,
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