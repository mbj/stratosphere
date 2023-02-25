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
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.TeradataParametersProperty as Exports
import Stratosphere.ResourceProperties
data DataSourceParametersProperty
  = DataSourceParametersProperty {amazonElasticsearchParameters :: (Prelude.Maybe AmazonElasticsearchParametersProperty),
                                  amazonOpenSearchParameters :: (Prelude.Maybe AmazonOpenSearchParametersProperty),
                                  athenaParameters :: (Prelude.Maybe AthenaParametersProperty),
                                  auroraParameters :: (Prelude.Maybe AuroraParametersProperty),
                                  auroraPostgreSqlParameters :: (Prelude.Maybe AuroraPostgreSqlParametersProperty),
                                  databricksParameters :: (Prelude.Maybe DatabricksParametersProperty),
                                  mariaDbParameters :: (Prelude.Maybe MariaDbParametersProperty),
                                  mySqlParameters :: (Prelude.Maybe MySqlParametersProperty),
                                  oracleParameters :: (Prelude.Maybe OracleParametersProperty),
                                  postgreSqlParameters :: (Prelude.Maybe PostgreSqlParametersProperty),
                                  prestoParameters :: (Prelude.Maybe PrestoParametersProperty),
                                  rdsParameters :: (Prelude.Maybe RdsParametersProperty),
                                  redshiftParameters :: (Prelude.Maybe RedshiftParametersProperty),
                                  s3Parameters :: (Prelude.Maybe S3ParametersProperty),
                                  snowflakeParameters :: (Prelude.Maybe SnowflakeParametersProperty),
                                  sparkParameters :: (Prelude.Maybe SparkParametersProperty),
                                  sqlServerParameters :: (Prelude.Maybe SqlServerParametersProperty),
                                  teradataParameters :: (Prelude.Maybe TeradataParametersProperty)}
mkDataSourceParametersProperty :: DataSourceParametersProperty
mkDataSourceParametersProperty
  = DataSourceParametersProperty
      {amazonElasticsearchParameters = Prelude.Nothing,
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
       teradataParameters = Prelude.Nothing}
instance ToResourceProperties DataSourceParametersProperty where
  toResourceProperties DataSourceParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.DataSourceParameters",
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
                            (JSON..=) "TeradataParameters" Prelude.<$> teradataParameters])}
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
               (JSON..=) "TeradataParameters" Prelude.<$> teradataParameters]))
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
instance Property "TeradataParameters" DataSourceParametersProperty where
  type PropertyType "TeradataParameters" DataSourceParametersProperty = TeradataParametersProperty
  set newValue DataSourceParametersProperty {..}
    = DataSourceParametersProperty
        {teradataParameters = Prelude.pure newValue, ..}