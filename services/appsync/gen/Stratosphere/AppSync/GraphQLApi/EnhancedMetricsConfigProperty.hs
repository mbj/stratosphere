module Stratosphere.AppSync.GraphQLApi.EnhancedMetricsConfigProperty (
        EnhancedMetricsConfigProperty(..), mkEnhancedMetricsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnhancedMetricsConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-enhancedmetricsconfig.html>
    EnhancedMetricsConfigProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-enhancedmetricsconfig.html#cfn-appsync-graphqlapi-enhancedmetricsconfig-datasourcelevelmetricsbehavior>
                                   dataSourceLevelMetricsBehavior :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-enhancedmetricsconfig.html#cfn-appsync-graphqlapi-enhancedmetricsconfig-operationlevelmetricsconfig>
                                   operationLevelMetricsConfig :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-enhancedmetricsconfig.html#cfn-appsync-graphqlapi-enhancedmetricsconfig-resolverlevelmetricsbehavior>
                                   resolverLevelMetricsBehavior :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnhancedMetricsConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> EnhancedMetricsConfigProperty
mkEnhancedMetricsConfigProperty
  dataSourceLevelMetricsBehavior
  operationLevelMetricsConfig
  resolverLevelMetricsBehavior
  = EnhancedMetricsConfigProperty
      {haddock_workaround_ = (),
       dataSourceLevelMetricsBehavior = dataSourceLevelMetricsBehavior,
       operationLevelMetricsConfig = operationLevelMetricsConfig,
       resolverLevelMetricsBehavior = resolverLevelMetricsBehavior}
instance ToResourceProperties EnhancedMetricsConfigProperty where
  toResourceProperties EnhancedMetricsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::GraphQLApi.EnhancedMetricsConfig",
         supportsTags = Prelude.False,
         properties = ["DataSourceLevelMetricsBehavior"
                         JSON..= dataSourceLevelMetricsBehavior,
                       "OperationLevelMetricsConfig" JSON..= operationLevelMetricsConfig,
                       "ResolverLevelMetricsBehavior"
                         JSON..= resolverLevelMetricsBehavior]}
instance JSON.ToJSON EnhancedMetricsConfigProperty where
  toJSON EnhancedMetricsConfigProperty {..}
    = JSON.object
        ["DataSourceLevelMetricsBehavior"
           JSON..= dataSourceLevelMetricsBehavior,
         "OperationLevelMetricsConfig" JSON..= operationLevelMetricsConfig,
         "ResolverLevelMetricsBehavior"
           JSON..= resolverLevelMetricsBehavior]
instance Property "DataSourceLevelMetricsBehavior" EnhancedMetricsConfigProperty where
  type PropertyType "DataSourceLevelMetricsBehavior" EnhancedMetricsConfigProperty = Value Prelude.Text
  set newValue EnhancedMetricsConfigProperty {..}
    = EnhancedMetricsConfigProperty
        {dataSourceLevelMetricsBehavior = newValue, ..}
instance Property "OperationLevelMetricsConfig" EnhancedMetricsConfigProperty where
  type PropertyType "OperationLevelMetricsConfig" EnhancedMetricsConfigProperty = Value Prelude.Text
  set newValue EnhancedMetricsConfigProperty {..}
    = EnhancedMetricsConfigProperty
        {operationLevelMetricsConfig = newValue, ..}
instance Property "ResolverLevelMetricsBehavior" EnhancedMetricsConfigProperty where
  type PropertyType "ResolverLevelMetricsBehavior" EnhancedMetricsConfigProperty = Value Prelude.Text
  set newValue EnhancedMetricsConfigProperty {..}
    = EnhancedMetricsConfigProperty
        {resolverLevelMetricsBehavior = newValue, ..}