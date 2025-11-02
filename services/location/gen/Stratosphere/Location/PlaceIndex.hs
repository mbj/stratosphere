module Stratosphere.Location.PlaceIndex (
        module Exports, PlaceIndex(..), mkPlaceIndex
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Location.PlaceIndex.DataSourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PlaceIndex
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-placeindex.html>
    PlaceIndex {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-placeindex.html#cfn-location-placeindex-datasource>
                dataSource :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-placeindex.html#cfn-location-placeindex-datasourceconfiguration>
                dataSourceConfiguration :: (Prelude.Maybe DataSourceConfigurationProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-placeindex.html#cfn-location-placeindex-description>
                description :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-placeindex.html#cfn-location-placeindex-indexname>
                indexName :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-placeindex.html#cfn-location-placeindex-pricingplan>
                pricingPlan :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-location-placeindex.html#cfn-location-placeindex-tags>
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlaceIndex ::
  Value Prelude.Text -> Value Prelude.Text -> PlaceIndex
mkPlaceIndex dataSource indexName
  = PlaceIndex
      {haddock_workaround_ = (), dataSource = dataSource,
       indexName = indexName, dataSourceConfiguration = Prelude.Nothing,
       description = Prelude.Nothing, pricingPlan = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties PlaceIndex where
  toResourceProperties PlaceIndex {..}
    = ResourceProperties
        {awsType = "AWS::Location::PlaceIndex",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSource" JSON..= dataSource, "IndexName" JSON..= indexName]
                           (Prelude.catMaybes
                              [(JSON..=) "DataSourceConfiguration"
                                 Prelude.<$> dataSourceConfiguration,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "PricingPlan" Prelude.<$> pricingPlan,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PlaceIndex where
  toJSON PlaceIndex {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSource" JSON..= dataSource, "IndexName" JSON..= indexName]
              (Prelude.catMaybes
                 [(JSON..=) "DataSourceConfiguration"
                    Prelude.<$> dataSourceConfiguration,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "PricingPlan" Prelude.<$> pricingPlan,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DataSource" PlaceIndex where
  type PropertyType "DataSource" PlaceIndex = Value Prelude.Text
  set newValue PlaceIndex {..}
    = PlaceIndex {dataSource = newValue, ..}
instance Property "DataSourceConfiguration" PlaceIndex where
  type PropertyType "DataSourceConfiguration" PlaceIndex = DataSourceConfigurationProperty
  set newValue PlaceIndex {..}
    = PlaceIndex {dataSourceConfiguration = Prelude.pure newValue, ..}
instance Property "Description" PlaceIndex where
  type PropertyType "Description" PlaceIndex = Value Prelude.Text
  set newValue PlaceIndex {..}
    = PlaceIndex {description = Prelude.pure newValue, ..}
instance Property "IndexName" PlaceIndex where
  type PropertyType "IndexName" PlaceIndex = Value Prelude.Text
  set newValue PlaceIndex {..}
    = PlaceIndex {indexName = newValue, ..}
instance Property "PricingPlan" PlaceIndex where
  type PropertyType "PricingPlan" PlaceIndex = Value Prelude.Text
  set newValue PlaceIndex {..}
    = PlaceIndex {pricingPlan = Prelude.pure newValue, ..}
instance Property "Tags" PlaceIndex where
  type PropertyType "Tags" PlaceIndex = [Tag]
  set newValue PlaceIndex {..}
    = PlaceIndex {tags = Prelude.pure newValue, ..}