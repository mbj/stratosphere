module Stratosphere.AppSync.ChannelNamespace.IntegrationProperty (
        module Exports, IntegrationProperty(..), mkIntegrationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.ChannelNamespace.LambdaConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegrationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-channelnamespace-integration.html>
    IntegrationProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-channelnamespace-integration.html#cfn-appsync-channelnamespace-integration-datasourcename>
                         dataSourceName :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-channelnamespace-integration.html#cfn-appsync-channelnamespace-integration-lambdaconfig>
                         lambdaConfig :: (Prelude.Maybe LambdaConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntegrationProperty :: Value Prelude.Text -> IntegrationProperty
mkIntegrationProperty dataSourceName
  = IntegrationProperty
      {haddock_workaround_ = (), dataSourceName = dataSourceName,
       lambdaConfig = Prelude.Nothing}
instance ToResourceProperties IntegrationProperty where
  toResourceProperties IntegrationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::ChannelNamespace.Integration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSourceName" JSON..= dataSourceName]
                           (Prelude.catMaybes
                              [(JSON..=) "LambdaConfig" Prelude.<$> lambdaConfig]))}
instance JSON.ToJSON IntegrationProperty where
  toJSON IntegrationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSourceName" JSON..= dataSourceName]
              (Prelude.catMaybes
                 [(JSON..=) "LambdaConfig" Prelude.<$> lambdaConfig])))
instance Property "DataSourceName" IntegrationProperty where
  type PropertyType "DataSourceName" IntegrationProperty = Value Prelude.Text
  set newValue IntegrationProperty {..}
    = IntegrationProperty {dataSourceName = newValue, ..}
instance Property "LambdaConfig" IntegrationProperty where
  type PropertyType "LambdaConfig" IntegrationProperty = LambdaConfigProperty
  set newValue IntegrationProperty {..}
    = IntegrationProperty {lambdaConfig = Prelude.pure newValue, ..}