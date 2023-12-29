module Stratosphere.S3.Bucket.MetricsConfigurationProperty (
        module Exports, MetricsConfigurationProperty(..),
        mkMetricsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.TagFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricsConfigurationProperty
  = MetricsConfigurationProperty {accessPointArn :: (Prelude.Maybe (Value Prelude.Text)),
                                  id :: (Value Prelude.Text),
                                  prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                  tagFilters :: (Prelude.Maybe [TagFilterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricsConfigurationProperty ::
  Value Prelude.Text -> MetricsConfigurationProperty
mkMetricsConfigurationProperty id
  = MetricsConfigurationProperty
      {id = id, accessPointArn = Prelude.Nothing,
       prefix = Prelude.Nothing, tagFilters = Prelude.Nothing}
instance ToResourceProperties MetricsConfigurationProperty where
  toResourceProperties MetricsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.MetricsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessPointArn" Prelude.<$> accessPointArn,
                               (JSON..=) "Prefix" Prelude.<$> prefix,
                               (JSON..=) "TagFilters" Prelude.<$> tagFilters]))}
instance JSON.ToJSON MetricsConfigurationProperty where
  toJSON MetricsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id]
              (Prelude.catMaybes
                 [(JSON..=) "AccessPointArn" Prelude.<$> accessPointArn,
                  (JSON..=) "Prefix" Prelude.<$> prefix,
                  (JSON..=) "TagFilters" Prelude.<$> tagFilters])))
instance Property "AccessPointArn" MetricsConfigurationProperty where
  type PropertyType "AccessPointArn" MetricsConfigurationProperty = Value Prelude.Text
  set newValue MetricsConfigurationProperty {..}
    = MetricsConfigurationProperty
        {accessPointArn = Prelude.pure newValue, ..}
instance Property "Id" MetricsConfigurationProperty where
  type PropertyType "Id" MetricsConfigurationProperty = Value Prelude.Text
  set newValue MetricsConfigurationProperty {..}
    = MetricsConfigurationProperty {id = newValue, ..}
instance Property "Prefix" MetricsConfigurationProperty where
  type PropertyType "Prefix" MetricsConfigurationProperty = Value Prelude.Text
  set newValue MetricsConfigurationProperty {..}
    = MetricsConfigurationProperty {prefix = Prelude.pure newValue, ..}
instance Property "TagFilters" MetricsConfigurationProperty where
  type PropertyType "TagFilters" MetricsConfigurationProperty = [TagFilterProperty]
  set newValue MetricsConfigurationProperty {..}
    = MetricsConfigurationProperty
        {tagFilters = Prelude.pure newValue, ..}