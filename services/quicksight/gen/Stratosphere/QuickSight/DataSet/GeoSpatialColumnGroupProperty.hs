module Stratosphere.QuickSight.DataSet.GeoSpatialColumnGroupProperty (
        GeoSpatialColumnGroupProperty(..), mkGeoSpatialColumnGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeoSpatialColumnGroupProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-geospatialcolumngroup.html>
    GeoSpatialColumnGroupProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-geospatialcolumngroup.html#cfn-quicksight-dataset-geospatialcolumngroup-columns>
                                   columns :: (ValueList Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-geospatialcolumngroup.html#cfn-quicksight-dataset-geospatialcolumngroup-countrycode>
                                   countryCode :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-geospatialcolumngroup.html#cfn-quicksight-dataset-geospatialcolumngroup-name>
                                   name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeoSpatialColumnGroupProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> GeoSpatialColumnGroupProperty
mkGeoSpatialColumnGroupProperty columns name
  = GeoSpatialColumnGroupProperty
      {haddock_workaround_ = (), columns = columns, name = name,
       countryCode = Prelude.Nothing}
instance ToResourceProperties GeoSpatialColumnGroupProperty where
  toResourceProperties GeoSpatialColumnGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.GeoSpatialColumnGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Columns" JSON..= columns, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "CountryCode" Prelude.<$> countryCode]))}
instance JSON.ToJSON GeoSpatialColumnGroupProperty where
  toJSON GeoSpatialColumnGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Columns" JSON..= columns, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "CountryCode" Prelude.<$> countryCode])))
instance Property "Columns" GeoSpatialColumnGroupProperty where
  type PropertyType "Columns" GeoSpatialColumnGroupProperty = ValueList Prelude.Text
  set newValue GeoSpatialColumnGroupProperty {..}
    = GeoSpatialColumnGroupProperty {columns = newValue, ..}
instance Property "CountryCode" GeoSpatialColumnGroupProperty where
  type PropertyType "CountryCode" GeoSpatialColumnGroupProperty = Value Prelude.Text
  set newValue GeoSpatialColumnGroupProperty {..}
    = GeoSpatialColumnGroupProperty
        {countryCode = Prelude.pure newValue, ..}
instance Property "Name" GeoSpatialColumnGroupProperty where
  type PropertyType "Name" GeoSpatialColumnGroupProperty = Value Prelude.Text
  set newValue GeoSpatialColumnGroupProperty {..}
    = GeoSpatialColumnGroupProperty {name = newValue, ..}