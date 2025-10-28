module Stratosphere.OpsWorks.App.DataSourceProperty (
        DataSourceProperty(..), mkDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-datasource.html>
    DataSourceProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-datasource.html#cfn-opsworks-app-datasource-arn>
                        arn :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-datasource.html#cfn-opsworks-app-datasource-databasename>
                        databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-datasource.html#cfn-opsworks-app-datasource-type>
                        type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSourceProperty :: DataSourceProperty
mkDataSourceProperty
  = DataSourceProperty
      {haddock_workaround_ = (), arn = Prelude.Nothing,
       databaseName = Prelude.Nothing, type' = Prelude.Nothing}
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