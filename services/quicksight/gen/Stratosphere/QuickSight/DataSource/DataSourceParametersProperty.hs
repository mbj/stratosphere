module Stratosphere.QuickSight.DataSource.DataSourceParametersProperty (
        module Exports, DataSourceParametersProperty(..),
        mkDataSourceParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.AmazonElasticsearchParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.AmazonOpenSearchParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.AthenaParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.AuroraParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.AuroraPostgreSqlParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.DatabricksParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.MariaDbParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.MySqlParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.OracleParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.PostgreSqlParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.PrestoParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.RdsParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.RedshiftParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.S3ParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.SnowflakeParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.SparkParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.SqlServerParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.StarburstParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.TeradataParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.TrinoParametersProperty as Exports
import Stratosphere.ResourceProperties
data DataSourceParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html>
    DataSourceParametersProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-amazonelasticsearchparameters>
                                  amazonElasticsearchParameters :: (Prelude.Maybe AmazonElasticsearchParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-amazonopensearchparameters>
                                  amazonOpenSearchParameters :: (Prelude.Maybe AmazonOpenSearchParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-athenaparameters>
                                  athenaParameters :: (Prelude.Maybe AthenaParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-auroraparameters>
                                  auroraParameters :: (Prelude.Maybe AuroraParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-aurorapostgresqlparameters>
                                  auroraPostgreSqlParameters :: (Prelude.Maybe AuroraPostgreSqlParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-databricksparameters>
                                  databricksParameters :: (Prelude.Maybe DatabricksParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-mariadbparameters>
                                  mariaDbParameters :: (Prelude.Maybe MariaDbParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-mysqlparameters>
                                  mySqlParameters :: (Prelude.Maybe MySqlParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-oracleparameters>
                                  oracleParameters :: (Prelude.Maybe OracleParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-postgresqlparameters>
                                  postgreSqlParameters :: (Prelude.Maybe PostgreSqlParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-prestoparameters>
                                  prestoParameters :: (Prelude.Maybe PrestoParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-rdsparameters>
                                  rdsParameters :: (Prelude.Maybe RdsParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-redshiftparameters>
                                  redshiftParameters :: (Prelude.Maybe RedshiftParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-s3parameters>
                                  s3Parameters :: (Prelude.Maybe S3ParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-snowflakeparameters>
                                  snowflakeParameters :: (Prelude.Maybe SnowflakeParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-sparkparameters>
                                  sparkParameters :: (Prelude.Maybe SparkParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-sqlserverparameters>
                                  sqlServerParameters :: (Prelude.Maybe SqlServerParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-starburstparameters>
                                  starburstParameters :: (Prelude.Maybe StarburstParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-teradataparameters>
                                  teradataParameters :: (Prelude.Maybe TeradataParametersProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-trinoparameters>
                                  trinoParameters :: (Prelude.Maybe TrinoParametersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSourceParametersProperty :: DataSourceParametersProperty
mkDataSourceParametersProperty
  = DataSourceParametersProperty
      {haddock_workaround_ = (),
       amazonElasticsearchParameters = Prelude.Nothing,
       amazonOpenSearchParameters = Prelude.Nothing,
       athenaParameters = Prelude.Nothing,
       auroraParameters = Prelude.Nothing,
       auroraPostgreSqlParameters = Prelude.Nothing,
       databricksParameters = Prelude.Nothing,
       mariaDbParameters = Prelude.Nothing,
       mySqlParameters = Prelude.Nothing,
       oracleParameters = Prelude.Nothing,
       postgreSqlParameters = Prelude.Nothing,
       prestoParameters = Prelude.Nothing,
       rdsParameters = Prelude.Nothing,
       redshiftParameters = Prelude.Nothing,
       s3Parameters = Prelude.Nothing,
       snowflakeParameters = Prelude.Nothing,
       sparkParameters = Prelude.Nothing,
       sqlServerParameters = Prelude.Nothing,
       starburstParameters = Prelude.Nothing,
       teradataParameters = Prelude.Nothing,
       trinoParameters = Prelude.Nothing}
instance ToResourceProperties DataSourceParametersProperty where
  toResourceProperties DataSourceParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.DataSourceParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AmazonElasticsearchParameters"
                              Prelude.<$> amazonElasticsearchParameters,
                            (JSON..=) "AmazonOpenSearchParameters"
                              Prelude.<$> amazonOpenSearchParameters,
                            (JSON..=) "AthenaParameters" Prelude.<$> athenaParameters,
                            (JSON..=) "AuroraParameters" Prelude.<$> auroraParameters,
                            (JSON..=) "AuroraPostgreSqlParameters"
                              Prelude.<$> auroraPostgreSqlParameters,
                            (JSON..=) "DatabricksParameters" Prelude.<$> databricksParameters,
                            (JSON..=) "MariaDbParameters" Prelude.<$> mariaDbParameters,
                            (JSON..=) "MySqlParameters" Prelude.<$> mySqlParameters,
                            (JSON..=) "OracleParameters" Prelude.<$> oracleParameters,
                            (JSON..=) "PostgreSqlParameters" Prelude.<$> postgreSqlParameters,
                            (JSON..=) "PrestoParameters" Prelude.<$> prestoParameters,
                            (JSON..=) "RdsParameters" Prelude.<$> rdsParameters,
                            (JSON..=) "RedshiftParameters" Prelude.<$> redshiftParameters,
                            (JSON..=) "S3Parameters" Prelude.<$> s3Parameters,
                            (JSON..=) "SnowflakeParameters" Prelude.<$> snowflakeParameters,
                            (JSON..=) "SparkParameters" Prelude.<$> sparkParameters,
                            (JSON..=) "SqlServerParameters" Prelude.<$> sqlServerParameters,
                            (JSON..=) "StarburstParameters" Prelude.<$> starburstParameters,
                            (JSON..=) "TeradataParameters" Prelude.<$> teradataParameters,
                            (JSON..=) "TrinoParameters" Prelude.<$> trinoParameters])}
instance JSON.ToJSON DataSourceParametersProperty where
  toJSON DataSourceParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AmazonElasticsearchParameters"
                 Prelude.<$> amazonElasticsearchParameters,
               (JSON..=) "AmazonOpenSearchParameters"
                 Prelude.<$> amazonOpenSearchParameters,
               (JSON..=) "AthenaParameters" Prelude.<$> athenaParameters,
               (JSON..=) "AuroraParameters" Prelude.<$> auroraParameters,
               (JSON..=) "AuroraPostgreSqlParameters"
                 Prelude.<$> auroraPostgreSqlParameters,
               (JSON..=) "DatabricksParameters" Prelude.<$> databricksParameters,
               (JSON..=) "MariaDbParameters" Prelude.<$> mariaDbParameters,
               (JSON..=) "MySqlParameters" Prelude.<$> mySqlParameters,
               (JSON..=) "OracleParameters" Prelude.<$> oracleParameters,
               (JSON..=) "PostgreSqlParameters" Prelude.<$> postgreSqlParameters,
               (JSON..=) "PrestoParameters" Prelude.<$> prestoParameters,
               (JSON..=) "RdsParameters" Prelude.<$> rdsParameters,
               (JSON..=) "RedshiftParameters" Prelude.<$> redshiftParameters,
               (JSON..=) "S3Parameters" Prelude.<$> s3Parameters,
               (JSON..=) "SnowflakeParameters" Prelude.<$> snowflakeParameters,
               (JSON..=) "SparkParameters" Prelude.<$> sparkParameters,
               (JSON..=) "SqlServerParameters" Prelude.<$> sqlServerParameters,
               (JSON..=) "StarburstParameters" Prelude.<$> starburstParameters,
               (JSON..=) "TeradataParameters" Prelude.<$> teradataParameters,
               (JSON..=) "TrinoParameters" Prelude.<$> trinoParameters]))
instance Property "AmazonElasticsearchParameters" DataSourceParametersProperty where
  type PropertyType "AmazonElasticsearchParameters" DataSourceParametersProperty = AmazonElasticsearchParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {amazonElasticsearchParameters = Prelude.pure newValue, ..}
instance Property "AmazonOpenSearchParameters" DataSourceParametersProperty where
  type PropertyType "AmazonOpenSearchParameters" DataSourceParametersProperty = AmazonOpenSearchParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {amazonOpenSearchParameters = Prelude.pure newValue, ..}
instance Property "AthenaParameters" DataSourceParametersProperty where
  type PropertyType "AthenaParameters" DataSourceParametersProperty = AthenaParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {athenaParameters = Prelude.pure newValue, ..}
instance Property "AuroraParameters" DataSourceParametersProperty where
  type PropertyType "AuroraParameters" DataSourceParametersProperty = AuroraParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {auroraParameters = Prelude.pure newValue, ..}
instance Property "AuroraPostgreSqlParameters" DataSourceParametersProperty where
  type PropertyType "AuroraPostgreSqlParameters" DataSourceParametersProperty = AuroraPostgreSqlParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {auroraPostgreSqlParameters = Prelude.pure newValue, ..}
instance Property "DatabricksParameters" DataSourceParametersProperty where
  type PropertyType "DatabricksParameters" DataSourceParametersProperty = DatabricksParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {databricksParameters = Prelude.pure newValue, ..}
instance Property "MariaDbParameters" DataSourceParametersProperty where
  type PropertyType "MariaDbParameters" DataSourceParametersProperty = MariaDbParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {mariaDbParameters = Prelude.pure newValue, ..}
instance Property "MySqlParameters" DataSourceParametersProperty where
  type PropertyType "MySqlParameters" DataSourceParametersProperty = MySqlParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {mySqlParameters = Prelude.pure newValue, ..}
instance Property "OracleParameters" DataSourceParametersProperty where
  type PropertyType "OracleParameters" DataSourceParametersProperty = OracleParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {oracleParameters = Prelude.pure newValue, ..}
instance Property "PostgreSqlParameters" DataSourceParametersProperty where
  type PropertyType "PostgreSqlParameters" DataSourceParametersProperty = PostgreSqlParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {postgreSqlParameters = Prelude.pure newValue, ..}
instance Property "PrestoParameters" DataSourceParametersProperty where
  type PropertyType "PrestoParameters" DataSourceParametersProperty = PrestoParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {prestoParameters = Prelude.pure newValue, ..}
instance Property "RdsParameters" DataSourceParametersProperty where
  type PropertyType "RdsParameters" DataSourceParametersProperty = RdsParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {rdsParameters = Prelude.pure newValue, ..}
instance Property "RedshiftParameters" DataSourceParametersProperty where
  type PropertyType "RedshiftParameters" DataSourceParametersProperty = RedshiftParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {redshiftParameters = Prelude.pure newValue, ..}
instance Property "S3Parameters" DataSourceParametersProperty where
  type PropertyType "S3Parameters" DataSourceParametersProperty = S3ParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {s3Parameters = Prelude.pure newValue, ..}
instance Property "SnowflakeParameters" DataSourceParametersProperty where
  type PropertyType "SnowflakeParameters" DataSourceParametersProperty = SnowflakeParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {snowflakeParameters = Prelude.pure newValue, ..}
instance Property "SparkParameters" DataSourceParametersProperty where
  type PropertyType "SparkParameters" DataSourceParametersProperty = SparkParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {sparkParameters = Prelude.pure newValue, ..}
instance Property "SqlServerParameters" DataSourceParametersProperty where
  type PropertyType "SqlServerParameters" DataSourceParametersProperty = SqlServerParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {sqlServerParameters = Prelude.pure newValue, ..}
instance Property "StarburstParameters" DataSourceParametersProperty where
  type PropertyType "StarburstParameters" DataSourceParametersProperty = StarburstParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {starburstParameters = Prelude.pure newValue, ..}
instance Property "TeradataParameters" DataSourceParametersProperty where
  type PropertyType "TeradataParameters" DataSourceParametersProperty = TeradataParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {teradataParameters = Prelude.pure newValue, ..}
instance Property "TrinoParameters" DataSourceParametersProperty where
  type PropertyType "TrinoParameters" DataSourceParametersProperty = TrinoParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {trinoParameters = Prelude.pure newValue, ..}