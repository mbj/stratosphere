module Stratosphere.DataZone.DataSource.RelationalFilterConfigurationProperty (
        module Exports, RelationalFilterConfigurationProperty(..),
        mkRelationalFilterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.DataSource.FilterExpressionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RelationalFilterConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-relationalfilterconfiguration.html>
    RelationalFilterConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-relationalfilterconfiguration.html#cfn-datazone-datasource-relationalfilterconfiguration-databasename>
                                           databaseName :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-relationalfilterconfiguration.html#cfn-datazone-datasource-relationalfilterconfiguration-filterexpressions>
                                           filterExpressions :: (Prelude.Maybe [FilterExpressionProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-relationalfilterconfiguration.html#cfn-datazone-datasource-relationalfilterconfiguration-schemaname>
                                           schemaName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRelationalFilterConfigurationProperty ::
  Value Prelude.Text -> RelationalFilterConfigurationProperty
mkRelationalFilterConfigurationProperty databaseName
  = RelationalFilterConfigurationProperty
      {haddock_workaround_ = (), databaseName = databaseName,
       filterExpressions = Prelude.Nothing, schemaName = Prelude.Nothing}
instance ToResourceProperties RelationalFilterConfigurationProperty where
  toResourceProperties RelationalFilterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::DataSource.RelationalFilterConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseName" JSON..= databaseName]
                           (Prelude.catMaybes
                              [(JSON..=) "FilterExpressions" Prelude.<$> filterExpressions,
                               (JSON..=) "SchemaName" Prelude.<$> schemaName]))}
instance JSON.ToJSON RelationalFilterConfigurationProperty where
  toJSON RelationalFilterConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseName" JSON..= databaseName]
              (Prelude.catMaybes
                 [(JSON..=) "FilterExpressions" Prelude.<$> filterExpressions,
                  (JSON..=) "SchemaName" Prelude.<$> schemaName])))
instance Property "DatabaseName" RelationalFilterConfigurationProperty where
  type PropertyType "DatabaseName" RelationalFilterConfigurationProperty = Value Prelude.Text
  set newValue RelationalFilterConfigurationProperty {..}
    = RelationalFilterConfigurationProperty
        {databaseName = newValue, ..}
instance Property "FilterExpressions" RelationalFilterConfigurationProperty where
  type PropertyType "FilterExpressions" RelationalFilterConfigurationProperty = [FilterExpressionProperty]
  set newValue RelationalFilterConfigurationProperty {..}
    = RelationalFilterConfigurationProperty
        {filterExpressions = Prelude.pure newValue, ..}
instance Property "SchemaName" RelationalFilterConfigurationProperty where
  type PropertyType "SchemaName" RelationalFilterConfigurationProperty = Value Prelude.Text
  set newValue RelationalFilterConfigurationProperty {..}
    = RelationalFilterConfigurationProperty
        {schemaName = Prelude.pure newValue, ..}