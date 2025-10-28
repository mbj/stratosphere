module Stratosphere.S3.Bucket.AnalyticsConfigurationProperty (
        module Exports, AnalyticsConfigurationProperty(..),
        mkAnalyticsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.StorageClassAnalysisProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.TagFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalyticsConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-analyticsconfiguration.html>
    AnalyticsConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-analyticsconfiguration.html#cfn-s3-bucket-analyticsconfiguration-id>
                                    id :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-analyticsconfiguration.html#cfn-s3-bucket-analyticsconfiguration-prefix>
                                    prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-analyticsconfiguration.html#cfn-s3-bucket-analyticsconfiguration-storageclassanalysis>
                                    storageClassAnalysis :: StorageClassAnalysisProperty,
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-analyticsconfiguration.html#cfn-s3-bucket-analyticsconfiguration-tagfilters>
                                    tagFilters :: (Prelude.Maybe [TagFilterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalyticsConfigurationProperty ::
  Value Prelude.Text
  -> StorageClassAnalysisProperty -> AnalyticsConfigurationProperty
mkAnalyticsConfigurationProperty id storageClassAnalysis
  = AnalyticsConfigurationProperty
      {haddock_workaround_ = (), id = id,
       storageClassAnalysis = storageClassAnalysis,
       prefix = Prelude.Nothing, tagFilters = Prelude.Nothing}
instance ToResourceProperties AnalyticsConfigurationProperty where
  toResourceProperties AnalyticsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.AnalyticsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id,
                            "StorageClassAnalysis" JSON..= storageClassAnalysis]
                           (Prelude.catMaybes
                              [(JSON..=) "Prefix" Prelude.<$> prefix,
                               (JSON..=) "TagFilters" Prelude.<$> tagFilters]))}
instance JSON.ToJSON AnalyticsConfigurationProperty where
  toJSON AnalyticsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id,
               "StorageClassAnalysis" JSON..= storageClassAnalysis]
              (Prelude.catMaybes
                 [(JSON..=) "Prefix" Prelude.<$> prefix,
                  (JSON..=) "TagFilters" Prelude.<$> tagFilters])))
instance Property "Id" AnalyticsConfigurationProperty where
  type PropertyType "Id" AnalyticsConfigurationProperty = Value Prelude.Text
  set newValue AnalyticsConfigurationProperty {..}
    = AnalyticsConfigurationProperty {id = newValue, ..}
instance Property "Prefix" AnalyticsConfigurationProperty where
  type PropertyType "Prefix" AnalyticsConfigurationProperty = Value Prelude.Text
  set newValue AnalyticsConfigurationProperty {..}
    = AnalyticsConfigurationProperty
        {prefix = Prelude.pure newValue, ..}
instance Property "StorageClassAnalysis" AnalyticsConfigurationProperty where
  type PropertyType "StorageClassAnalysis" AnalyticsConfigurationProperty = StorageClassAnalysisProperty
  set newValue AnalyticsConfigurationProperty {..}
    = AnalyticsConfigurationProperty
        {storageClassAnalysis = newValue, ..}
instance Property "TagFilters" AnalyticsConfigurationProperty where
  type PropertyType "TagFilters" AnalyticsConfigurationProperty = [TagFilterProperty]
  set newValue AnalyticsConfigurationProperty {..}
    = AnalyticsConfigurationProperty
        {tagFilters = Prelude.pure newValue, ..}