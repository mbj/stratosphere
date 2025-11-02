module Stratosphere.QuickSight.DataSet.CustomSqlProperty (
        module Exports, CustomSqlProperty(..), mkCustomSqlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.InputColumnProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomSqlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-customsql.html>
    CustomSqlProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-customsql.html#cfn-quicksight-dataset-customsql-columns>
                       columns :: (Prelude.Maybe [InputColumnProperty]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-customsql.html#cfn-quicksight-dataset-customsql-datasourcearn>
                       dataSourceArn :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-customsql.html#cfn-quicksight-dataset-customsql-name>
                       name :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-customsql.html#cfn-quicksight-dataset-customsql-sqlquery>
                       sqlQuery :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomSqlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> CustomSqlProperty
mkCustomSqlProperty dataSourceArn name sqlQuery
  = CustomSqlProperty
      {haddock_workaround_ = (), dataSourceArn = dataSourceArn,
       name = name, sqlQuery = sqlQuery, columns = Prelude.Nothing}
instance ToResourceProperties CustomSqlProperty where
  toResourceProperties CustomSqlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.CustomSql",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSourceArn" JSON..= dataSourceArn, "Name" JSON..= name,
                            "SqlQuery" JSON..= sqlQuery]
                           (Prelude.catMaybes [(JSON..=) "Columns" Prelude.<$> columns]))}
instance JSON.ToJSON CustomSqlProperty where
  toJSON CustomSqlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSourceArn" JSON..= dataSourceArn, "Name" JSON..= name,
               "SqlQuery" JSON..= sqlQuery]
              (Prelude.catMaybes [(JSON..=) "Columns" Prelude.<$> columns])))
instance Property "Columns" CustomSqlProperty where
  type PropertyType "Columns" CustomSqlProperty = [InputColumnProperty]
  set newValue CustomSqlProperty {..}
    = CustomSqlProperty {columns = Prelude.pure newValue, ..}
instance Property "DataSourceArn" CustomSqlProperty where
  type PropertyType "DataSourceArn" CustomSqlProperty = Value Prelude.Text
  set newValue CustomSqlProperty {..}
    = CustomSqlProperty {dataSourceArn = newValue, ..}
instance Property "Name" CustomSqlProperty where
  type PropertyType "Name" CustomSqlProperty = Value Prelude.Text
  set newValue CustomSqlProperty {..}
    = CustomSqlProperty {name = newValue, ..}
instance Property "SqlQuery" CustomSqlProperty where
  type PropertyType "SqlQuery" CustomSqlProperty = Value Prelude.Text
  set newValue CustomSqlProperty {..}
    = CustomSqlProperty {sqlQuery = newValue, ..}