module Stratosphere.IoTAnalytics.Dataset.QueryActionProperty (
        module Exports, QueryActionProperty(..), mkQueryActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.FilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-queryaction.html>
    QueryActionProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-queryaction.html#cfn-iotanalytics-dataset-queryaction-filters>
                         filters :: (Prelude.Maybe [FilterProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-queryaction.html#cfn-iotanalytics-dataset-queryaction-sqlquery>
                         sqlQuery :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueryActionProperty :: Value Prelude.Text -> QueryActionProperty
mkQueryActionProperty sqlQuery
  = QueryActionProperty
      {haddock_workaround_ = (), sqlQuery = sqlQuery,
       filters = Prelude.Nothing}
instance ToResourceProperties QueryActionProperty where
  toResourceProperties QueryActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.QueryAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SqlQuery" JSON..= sqlQuery]
                           (Prelude.catMaybes [(JSON..=) "Filters" Prelude.<$> filters]))}
instance JSON.ToJSON QueryActionProperty where
  toJSON QueryActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SqlQuery" JSON..= sqlQuery]
              (Prelude.catMaybes [(JSON..=) "Filters" Prelude.<$> filters])))
instance Property "Filters" QueryActionProperty where
  type PropertyType "Filters" QueryActionProperty = [FilterProperty]
  set newValue QueryActionProperty {..}
    = QueryActionProperty {filters = Prelude.pure newValue, ..}
instance Property "SqlQuery" QueryActionProperty where
  type PropertyType "SqlQuery" QueryActionProperty = Value Prelude.Text
  set newValue QueryActionProperty {..}
    = QueryActionProperty {sqlQuery = newValue, ..}