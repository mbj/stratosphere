module Stratosphere.OpenSearchService.Application.DataSourceProperty (
        DataSourceProperty(..), mkDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSourceProperty
  = DataSourceProperty {dataSourceArn :: (Value Prelude.Text),
                        dataSourceDescription :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSourceProperty :: Value Prelude.Text -> DataSourceProperty
mkDataSourceProperty dataSourceArn
  = DataSourceProperty
      {dataSourceArn = dataSourceArn,
       dataSourceDescription = Prelude.Nothing}
instance ToResourceProperties DataSourceProperty where
  toResourceProperties DataSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Application.DataSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSourceArn" JSON..= dataSourceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "DataSourceDescription"
                                 Prelude.<$> dataSourceDescription]))}
instance JSON.ToJSON DataSourceProperty where
  toJSON DataSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSourceArn" JSON..= dataSourceArn]
              (Prelude.catMaybes
                 [(JSON..=) "DataSourceDescription"
                    Prelude.<$> dataSourceDescription])))
instance Property "DataSourceArn" DataSourceProperty where
  type PropertyType "DataSourceArn" DataSourceProperty = Value Prelude.Text
  set newValue DataSourceProperty {..}
    = DataSourceProperty {dataSourceArn = newValue, ..}
instance Property "DataSourceDescription" DataSourceProperty where
  type PropertyType "DataSourceDescription" DataSourceProperty = Value Prelude.Text
  set newValue DataSourceProperty {..}
    = DataSourceProperty
        {dataSourceDescription = Prelude.pure newValue, ..}