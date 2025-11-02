module Stratosphere.QuickSight.DataSource.SnowflakeParametersProperty (
        module Exports, SnowflakeParametersProperty(..),
        mkSnowflakeParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.OAuthParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnowflakeParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-snowflakeparameters.html>
    SnowflakeParametersProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-snowflakeparameters.html#cfn-quicksight-datasource-snowflakeparameters-authenticationtype>
                                 authenticationType :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-snowflakeparameters.html#cfn-quicksight-datasource-snowflakeparameters-database>
                                 database :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-snowflakeparameters.html#cfn-quicksight-datasource-snowflakeparameters-databaseaccesscontrolrole>
                                 databaseAccessControlRole :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-snowflakeparameters.html#cfn-quicksight-datasource-snowflakeparameters-host>
                                 host :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-snowflakeparameters.html#cfn-quicksight-datasource-snowflakeparameters-oauthparameters>
                                 oAuthParameters :: (Prelude.Maybe OAuthParametersProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-snowflakeparameters.html#cfn-quicksight-datasource-snowflakeparameters-warehouse>
                                 warehouse :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnowflakeParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> SnowflakeParametersProperty
mkSnowflakeParametersProperty database host warehouse
  = SnowflakeParametersProperty
      {haddock_workaround_ = (), database = database, host = host,
       warehouse = warehouse, authenticationType = Prelude.Nothing,
       databaseAccessControlRole = Prelude.Nothing,
       oAuthParameters = Prelude.Nothing}
instance ToResourceProperties SnowflakeParametersProperty where
  toResourceProperties SnowflakeParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.SnowflakeParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Database" JSON..= database, "Host" JSON..= host,
                            "Warehouse" JSON..= warehouse]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthenticationType" Prelude.<$> authenticationType,
                               (JSON..=) "DatabaseAccessControlRole"
                                 Prelude.<$> databaseAccessControlRole,
                               (JSON..=) "OAuthParameters" Prelude.<$> oAuthParameters]))}
instance JSON.ToJSON SnowflakeParametersProperty where
  toJSON SnowflakeParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Database" JSON..= database, "Host" JSON..= host,
               "Warehouse" JSON..= warehouse]
              (Prelude.catMaybes
                 [(JSON..=) "AuthenticationType" Prelude.<$> authenticationType,
                  (JSON..=) "DatabaseAccessControlRole"
                    Prelude.<$> databaseAccessControlRole,
                  (JSON..=) "OAuthParameters" Prelude.<$> oAuthParameters])))
instance Property "AuthenticationType" SnowflakeParametersProperty where
  type PropertyType "AuthenticationType" SnowflakeParametersProperty = Value Prelude.Text
  set newValue SnowflakeParametersProperty {..}
    = SnowflakeParametersProperty
        {authenticationType = Prelude.pure newValue, ..}
instance Property "Database" SnowflakeParametersProperty where
  type PropertyType "Database" SnowflakeParametersProperty = Value Prelude.Text
  set newValue SnowflakeParametersProperty {..}
    = SnowflakeParametersProperty {database = newValue, ..}
instance Property "DatabaseAccessControlRole" SnowflakeParametersProperty where
  type PropertyType "DatabaseAccessControlRole" SnowflakeParametersProperty = Value Prelude.Text
  set newValue SnowflakeParametersProperty {..}
    = SnowflakeParametersProperty
        {databaseAccessControlRole = Prelude.pure newValue, ..}
instance Property "Host" SnowflakeParametersProperty where
  type PropertyType "Host" SnowflakeParametersProperty = Value Prelude.Text
  set newValue SnowflakeParametersProperty {..}
    = SnowflakeParametersProperty {host = newValue, ..}
instance Property "OAuthParameters" SnowflakeParametersProperty where
  type PropertyType "OAuthParameters" SnowflakeParametersProperty = OAuthParametersProperty
  set newValue SnowflakeParametersProperty {..}
    = SnowflakeParametersProperty
        {oAuthParameters = Prelude.pure newValue, ..}
instance Property "Warehouse" SnowflakeParametersProperty where
  type PropertyType "Warehouse" SnowflakeParametersProperty = Value Prelude.Text
  set newValue SnowflakeParametersProperty {..}
    = SnowflakeParametersProperty {warehouse = newValue, ..}