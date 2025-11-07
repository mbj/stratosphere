module Stratosphere.S3.Bucket.MetadataTableConfigurationProperty (
        module Exports, MetadataTableConfigurationProperty(..),
        mkMetadataTableConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.S3TablesDestinationProperty as Exports
import Stratosphere.ResourceProperties
data MetadataTableConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metadatatableconfiguration.html>
    MetadataTableConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metadatatableconfiguration.html#cfn-s3-bucket-metadatatableconfiguration-s3tablesdestination>
                                        s3TablesDestination :: S3TablesDestinationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetadataTableConfigurationProperty ::
  S3TablesDestinationProperty -> MetadataTableConfigurationProperty
mkMetadataTableConfigurationProperty s3TablesDestination
  = MetadataTableConfigurationProperty
      {haddock_workaround_ = (),
       s3TablesDestination = s3TablesDestination}
instance ToResourceProperties MetadataTableConfigurationProperty where
  toResourceProperties MetadataTableConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.MetadataTableConfiguration",
         supportsTags = Prelude.False,
         properties = ["S3TablesDestination" JSON..= s3TablesDestination]}
instance JSON.ToJSON MetadataTableConfigurationProperty where
  toJSON MetadataTableConfigurationProperty {..}
    = JSON.object ["S3TablesDestination" JSON..= s3TablesDestination]
instance Property "S3TablesDestination" MetadataTableConfigurationProperty where
  type PropertyType "S3TablesDestination" MetadataTableConfigurationProperty = S3TablesDestinationProperty
  set newValue MetadataTableConfigurationProperty {..}
    = MetadataTableConfigurationProperty
        {s3TablesDestination = newValue, ..}