module Stratosphere.AppSync.DataSource.RdsHttpEndpointConfigProperty (
        RdsHttpEndpointConfigProperty(..), mkRdsHttpEndpointConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RdsHttpEndpointConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html>
    RdsHttpEndpointConfigProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html#cfn-appsync-datasource-rdshttpendpointconfig-awsregion>
                                   awsRegion :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html#cfn-appsync-datasource-rdshttpendpointconfig-awssecretstorearn>
                                   awsSecretStoreArn :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html#cfn-appsync-datasource-rdshttpendpointconfig-databasename>
                                   databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html#cfn-appsync-datasource-rdshttpendpointconfig-dbclusteridentifier>
                                   dbClusterIdentifier :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html#cfn-appsync-datasource-rdshttpendpointconfig-schema>
                                   schema :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRdsHttpEndpointConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> RdsHttpEndpointConfigProperty
mkRdsHttpEndpointConfigProperty
  awsRegion
  awsSecretStoreArn
  dbClusterIdentifier
  = RdsHttpEndpointConfigProperty
      {haddock_workaround_ = (), awsRegion = awsRegion,
       awsSecretStoreArn = awsSecretStoreArn,
       dbClusterIdentifier = dbClusterIdentifier,
       databaseName = Prelude.Nothing, schema = Prelude.Nothing}
instance ToResourceProperties RdsHttpEndpointConfigProperty where
  toResourceProperties RdsHttpEndpointConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DataSource.RdsHttpEndpointConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AwsRegion" JSON..= awsRegion,
                            "AwsSecretStoreArn" JSON..= awsSecretStoreArn,
                            "DbClusterIdentifier" JSON..= dbClusterIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "DatabaseName" Prelude.<$> databaseName,
                               (JSON..=) "Schema" Prelude.<$> schema]))}
instance JSON.ToJSON RdsHttpEndpointConfigProperty where
  toJSON RdsHttpEndpointConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AwsRegion" JSON..= awsRegion,
               "AwsSecretStoreArn" JSON..= awsSecretStoreArn,
               "DbClusterIdentifier" JSON..= dbClusterIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "DatabaseName" Prelude.<$> databaseName,
                  (JSON..=) "Schema" Prelude.<$> schema])))
instance Property "AwsRegion" RdsHttpEndpointConfigProperty where
  type PropertyType "AwsRegion" RdsHttpEndpointConfigProperty = Value Prelude.Text
  set newValue RdsHttpEndpointConfigProperty {..}
    = RdsHttpEndpointConfigProperty {awsRegion = newValue, ..}
instance Property "AwsSecretStoreArn" RdsHttpEndpointConfigProperty where
  type PropertyType "AwsSecretStoreArn" RdsHttpEndpointConfigProperty = Value Prelude.Text
  set newValue RdsHttpEndpointConfigProperty {..}
    = RdsHttpEndpointConfigProperty {awsSecretStoreArn = newValue, ..}
instance Property "DatabaseName" RdsHttpEndpointConfigProperty where
  type PropertyType "DatabaseName" RdsHttpEndpointConfigProperty = Value Prelude.Text
  set newValue RdsHttpEndpointConfigProperty {..}
    = RdsHttpEndpointConfigProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "DbClusterIdentifier" RdsHttpEndpointConfigProperty where
  type PropertyType "DbClusterIdentifier" RdsHttpEndpointConfigProperty = Value Prelude.Text
  set newValue RdsHttpEndpointConfigProperty {..}
    = RdsHttpEndpointConfigProperty
        {dbClusterIdentifier = newValue, ..}
instance Property "Schema" RdsHttpEndpointConfigProperty where
  type PropertyType "Schema" RdsHttpEndpointConfigProperty = Value Prelude.Text
  set newValue RdsHttpEndpointConfigProperty {..}
    = RdsHttpEndpointConfigProperty
        {schema = Prelude.pure newValue, ..}