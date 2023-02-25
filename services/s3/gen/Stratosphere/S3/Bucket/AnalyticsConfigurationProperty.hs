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
  = AnalyticsConfigurationProperty {id :: (Value Prelude.Text),
                                    prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                    storageClassAnalysis :: StorageClassAnalysisProperty,
                                    tagFilters :: (Prelude.Maybe [TagFilterProperty])}
mkAnalyticsConfigurationProperty ::
  Value Prelude.Text
  -> StorageClassAnalysisProperty -> AnalyticsConfigurationProperty
mkAnalyticsConfigurationProperty id storageClassAnalysis
  = AnalyticsConfigurationProperty
      {id = id, storageClassAnalysis = storageClassAnalysis,
       prefix = Prelude.Nothing, tagFilters = Prelude.Nothing}
instance ToResourceProperties AnalyticsConfigurationProperty where
  toResourceProperties AnalyticsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.AnalyticsConfiguration",
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