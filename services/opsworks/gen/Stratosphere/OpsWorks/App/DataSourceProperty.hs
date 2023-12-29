module Stratosphere.OpsWorks.App.DataSourceProperty (
        DataSourceProperty(..), mkDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSourceProperty
  = DataSourceProperty {arn :: (Prelude.Maybe (Value Prelude.Text)),
                        databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                        type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSourceProperty :: DataSourceProperty
mkDataSourceProperty
  = DataSourceProperty
      {arn = Prelude.Nothing, databaseName = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties DataSourceProperty where
  toResourceProperties DataSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::App.DataSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON DataSourceProperty where
  toJSON DataSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Arn" DataSourceProperty where
  type PropertyType "Arn" DataSourceProperty = Value Prelude.Text
  set newValue DataSourceProperty {..}
    = DataSourceProperty {arn = Prelude.pure newValue, ..}
instance Property "DatabaseName" DataSourceProperty where
  type PropertyType "DatabaseName" DataSourceProperty = Value Prelude.Text
  set newValue DataSourceProperty {..}
    = DataSourceProperty {databaseName = Prelude.pure newValue, ..}
instance Property "Type" DataSourceProperty where
  type PropertyType "Type" DataSourceProperty = Value Prelude.Text
  set newValue DataSourceProperty {..}
    = DataSourceProperty {type' = Prelude.pure newValue, ..}