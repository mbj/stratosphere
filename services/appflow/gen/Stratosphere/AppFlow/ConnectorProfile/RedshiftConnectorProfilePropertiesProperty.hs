module Stratosphere.AppFlow.ConnectorProfile.RedshiftConnectorProfilePropertiesProperty (
        RedshiftConnectorProfilePropertiesProperty(..),
        mkRedshiftConnectorProfilePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftConnectorProfilePropertiesProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofileproperties.html>
    RedshiftConnectorProfilePropertiesProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofileproperties.html#cfn-appflow-connectorprofile-redshiftconnectorprofileproperties-bucketname>
                                                bucketName :: (Value Prelude.Text),
                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofileproperties.html#cfn-appflow-connectorprofile-redshiftconnectorprofileproperties-bucketprefix>
                                                bucketPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofileproperties.html#cfn-appflow-connectorprofile-redshiftconnectorprofileproperties-clusteridentifier>
                                                clusterIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofileproperties.html#cfn-appflow-connectorprofile-redshiftconnectorprofileproperties-dataapirolearn>
                                                dataApiRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofileproperties.html#cfn-appflow-connectorprofile-redshiftconnectorprofileproperties-databasename>
                                                databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofileproperties.html#cfn-appflow-connectorprofile-redshiftconnectorprofileproperties-databaseurl>
                                                databaseUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofileproperties.html#cfn-appflow-connectorprofile-redshiftconnectorprofileproperties-isredshiftserverless>
                                                isRedshiftServerless :: (Prelude.Maybe (Value Prelude.Bool)),
                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofileproperties.html#cfn-appflow-connectorprofile-redshiftconnectorprofileproperties-rolearn>
                                                roleArn :: (Value Prelude.Text),
                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofileproperties.html#cfn-appflow-connectorprofile-redshiftconnectorprofileproperties-workgroupname>
                                                workgroupName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftConnectorProfilePropertiesProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> RedshiftConnectorProfilePropertiesProperty
mkRedshiftConnectorProfilePropertiesProperty bucketName roleArn
  = RedshiftConnectorProfilePropertiesProperty
      {bucketName = bucketName, roleArn = roleArn,
       bucketPrefix = Prelude.Nothing,
       clusterIdentifier = Prelude.Nothing,
       dataApiRoleArn = Prelude.Nothing, databaseName = Prelude.Nothing,
       databaseUrl = Prelude.Nothing,
       isRedshiftServerless = Prelude.Nothing,
       workgroupName = Prelude.Nothing}
instance ToResourceProperties RedshiftConnectorProfilePropertiesProperty where
  toResourceProperties
    RedshiftConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.RedshiftConnectorProfileProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                               (JSON..=) "ClusterIdentifier" Prelude.<$> clusterIdentifier,
                               (JSON..=) "DataApiRoleArn" Prelude.<$> dataApiRoleArn,
                               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                               (JSON..=) "DatabaseUrl" Prelude.<$> databaseUrl,
                               (JSON..=) "IsRedshiftServerless" Prelude.<$> isRedshiftServerless,
                               (JSON..=) "WorkgroupName" Prelude.<$> workgroupName]))}
instance JSON.ToJSON RedshiftConnectorProfilePropertiesProperty where
  toJSON RedshiftConnectorProfilePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                  (JSON..=) "ClusterIdentifier" Prelude.<$> clusterIdentifier,
                  (JSON..=) "DataApiRoleArn" Prelude.<$> dataApiRoleArn,
                  (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                  (JSON..=) "DatabaseUrl" Prelude.<$> databaseUrl,
                  (JSON..=) "IsRedshiftServerless" Prelude.<$> isRedshiftServerless,
                  (JSON..=) "WorkgroupName" Prelude.<$> workgroupName])))
instance Property "BucketName" RedshiftConnectorProfilePropertiesProperty where
  type PropertyType "BucketName" RedshiftConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue RedshiftConnectorProfilePropertiesProperty {..}
    = RedshiftConnectorProfilePropertiesProperty
        {bucketName = newValue, ..}
instance Property "BucketPrefix" RedshiftConnectorProfilePropertiesProperty where
  type PropertyType "BucketPrefix" RedshiftConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue RedshiftConnectorProfilePropertiesProperty {..}
    = RedshiftConnectorProfilePropertiesProperty
        {bucketPrefix = Prelude.pure newValue, ..}
instance Property "ClusterIdentifier" RedshiftConnectorProfilePropertiesProperty where
  type PropertyType "ClusterIdentifier" RedshiftConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue RedshiftConnectorProfilePropertiesProperty {..}
    = RedshiftConnectorProfilePropertiesProperty
        {clusterIdentifier = Prelude.pure newValue, ..}
instance Property "DataApiRoleArn" RedshiftConnectorProfilePropertiesProperty where
  type PropertyType "DataApiRoleArn" RedshiftConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue RedshiftConnectorProfilePropertiesProperty {..}
    = RedshiftConnectorProfilePropertiesProperty
        {dataApiRoleArn = Prelude.pure newValue, ..}
instance Property "DatabaseName" RedshiftConnectorProfilePropertiesProperty where
  type PropertyType "DatabaseName" RedshiftConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue RedshiftConnectorProfilePropertiesProperty {..}
    = RedshiftConnectorProfilePropertiesProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "DatabaseUrl" RedshiftConnectorProfilePropertiesProperty where
  type PropertyType "DatabaseUrl" RedshiftConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue RedshiftConnectorProfilePropertiesProperty {..}
    = RedshiftConnectorProfilePropertiesProperty
        {databaseUrl = Prelude.pure newValue, ..}
instance Property "IsRedshiftServerless" RedshiftConnectorProfilePropertiesProperty where
  type PropertyType "IsRedshiftServerless" RedshiftConnectorProfilePropertiesProperty = Value Prelude.Bool
  set newValue RedshiftConnectorProfilePropertiesProperty {..}
    = RedshiftConnectorProfilePropertiesProperty
        {isRedshiftServerless = Prelude.pure newValue, ..}
instance Property "RoleArn" RedshiftConnectorProfilePropertiesProperty where
  type PropertyType "RoleArn" RedshiftConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue RedshiftConnectorProfilePropertiesProperty {..}
    = RedshiftConnectorProfilePropertiesProperty
        {roleArn = newValue, ..}
instance Property "WorkgroupName" RedshiftConnectorProfilePropertiesProperty where
  type PropertyType "WorkgroupName" RedshiftConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue RedshiftConnectorProfilePropertiesProperty {..}
    = RedshiftConnectorProfilePropertiesProperty
        {workgroupName = Prelude.pure newValue, ..}