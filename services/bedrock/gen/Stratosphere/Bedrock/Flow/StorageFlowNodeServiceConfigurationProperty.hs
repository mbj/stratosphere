module Stratosphere.Bedrock.Flow.StorageFlowNodeServiceConfigurationProperty (
        module Exports, StorageFlowNodeServiceConfigurationProperty(..),
        mkStorageFlowNodeServiceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.StorageFlowNodeS3ConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data StorageFlowNodeServiceConfigurationProperty
  = StorageFlowNodeServiceConfigurationProperty {s3 :: (Prelude.Maybe StorageFlowNodeS3ConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageFlowNodeServiceConfigurationProperty ::
  StorageFlowNodeServiceConfigurationProperty
mkStorageFlowNodeServiceConfigurationProperty
  = StorageFlowNodeServiceConfigurationProperty
      {s3 = Prelude.Nothing}
instance ToResourceProperties StorageFlowNodeServiceConfigurationProperty where
  toResourceProperties
    StorageFlowNodeServiceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.StorageFlowNodeServiceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "S3" Prelude.<$> s3])}
instance JSON.ToJSON StorageFlowNodeServiceConfigurationProperty where
  toJSON StorageFlowNodeServiceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "S3" Prelude.<$> s3]))
instance Property "S3" StorageFlowNodeServiceConfigurationProperty where
  type PropertyType "S3" StorageFlowNodeServiceConfigurationProperty = StorageFlowNodeS3ConfigurationProperty
  set newValue StorageFlowNodeServiceConfigurationProperty {}
    = StorageFlowNodeServiceConfigurationProperty
        {s3 = Prelude.pure newValue, ..}