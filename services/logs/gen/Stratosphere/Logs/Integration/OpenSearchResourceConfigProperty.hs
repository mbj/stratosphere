module Stratosphere.Logs.Integration.OpenSearchResourceConfigProperty (
        OpenSearchResourceConfigProperty(..),
        mkOpenSearchResourceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenSearchResourceConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-integration-opensearchresourceconfig.html>
    OpenSearchResourceConfigProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-integration-opensearchresourceconfig.html#cfn-logs-integration-opensearchresourceconfig-applicationarn>
                                      applicationARN :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-integration-opensearchresourceconfig.html#cfn-logs-integration-opensearchresourceconfig-dashboardviewerprincipals>
                                      dashboardViewerPrincipals :: (ValueList Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-integration-opensearchresourceconfig.html#cfn-logs-integration-opensearchresourceconfig-datasourcerolearn>
                                      dataSourceRoleArn :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-integration-opensearchresourceconfig.html#cfn-logs-integration-opensearchresourceconfig-kmskeyarn>
                                      kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-integration-opensearchresourceconfig.html#cfn-logs-integration-opensearchresourceconfig-retentiondays>
                                      retentionDays :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenSearchResourceConfigProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> OpenSearchResourceConfigProperty
mkOpenSearchResourceConfigProperty
  dashboardViewerPrincipals
  dataSourceRoleArn
  = OpenSearchResourceConfigProperty
      {haddock_workaround_ = (),
       dashboardViewerPrincipals = dashboardViewerPrincipals,
       dataSourceRoleArn = dataSourceRoleArn,
       applicationARN = Prelude.Nothing, kmsKeyArn = Prelude.Nothing,
       retentionDays = Prelude.Nothing}
instance ToResourceProperties OpenSearchResourceConfigProperty where
  toResourceProperties OpenSearchResourceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Integration.OpenSearchResourceConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DashboardViewerPrincipals" JSON..= dashboardViewerPrincipals,
                            "DataSourceRoleArn" JSON..= dataSourceRoleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplicationARN" Prelude.<$> applicationARN,
                               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                               (JSON..=) "RetentionDays" Prelude.<$> retentionDays]))}
instance JSON.ToJSON OpenSearchResourceConfigProperty where
  toJSON OpenSearchResourceConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DashboardViewerPrincipals" JSON..= dashboardViewerPrincipals,
               "DataSourceRoleArn" JSON..= dataSourceRoleArn]
              (Prelude.catMaybes
                 [(JSON..=) "ApplicationARN" Prelude.<$> applicationARN,
                  (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                  (JSON..=) "RetentionDays" Prelude.<$> retentionDays])))
instance Property "ApplicationARN" OpenSearchResourceConfigProperty where
  type PropertyType "ApplicationARN" OpenSearchResourceConfigProperty = Value Prelude.Text
  set newValue OpenSearchResourceConfigProperty {..}
    = OpenSearchResourceConfigProperty
        {applicationARN = Prelude.pure newValue, ..}
instance Property "DashboardViewerPrincipals" OpenSearchResourceConfigProperty where
  type PropertyType "DashboardViewerPrincipals" OpenSearchResourceConfigProperty = ValueList Prelude.Text
  set newValue OpenSearchResourceConfigProperty {..}
    = OpenSearchResourceConfigProperty
        {dashboardViewerPrincipals = newValue, ..}
instance Property "DataSourceRoleArn" OpenSearchResourceConfigProperty where
  type PropertyType "DataSourceRoleArn" OpenSearchResourceConfigProperty = Value Prelude.Text
  set newValue OpenSearchResourceConfigProperty {..}
    = OpenSearchResourceConfigProperty
        {dataSourceRoleArn = newValue, ..}
instance Property "KmsKeyArn" OpenSearchResourceConfigProperty where
  type PropertyType "KmsKeyArn" OpenSearchResourceConfigProperty = Value Prelude.Text
  set newValue OpenSearchResourceConfigProperty {..}
    = OpenSearchResourceConfigProperty
        {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "RetentionDays" OpenSearchResourceConfigProperty where
  type PropertyType "RetentionDays" OpenSearchResourceConfigProperty = Value Prelude.Integer
  set newValue OpenSearchResourceConfigProperty {..}
    = OpenSearchResourceConfigProperty
        {retentionDays = Prelude.pure newValue, ..}