module Stratosphere.Personalize.Dataset.DataSourceProperty (
        DataSourceProperty(..), mkDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSourceProperty
  = DataSourceProperty {dataLocation :: (Prelude.Maybe (Value Prelude.Text))}
mkDataSourceProperty :: DataSourceProperty
mkDataSourceProperty
  = DataSourceProperty {dataLocation = Prelude.Nothing}
instance ToResourceProperties DataSourceProperty where
  toResourceProperties DataSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Dataset.DataSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataLocation" Prelude.<$> dataLocation])}
instance JSON.ToJSON DataSourceProperty where
  toJSON DataSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataLocation" Prelude.<$> dataLocation]))
instance Property "DataLocation" DataSourceProperty where
  type PropertyType "DataLocation" DataSourceProperty = Value Prelude.Text
  set newValue DataSourceProperty {}
    = DataSourceProperty {dataLocation = Prelude.pure newValue, ..}