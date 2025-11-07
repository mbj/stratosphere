module Stratosphere.AppSync.ChannelNamespace.HandlerConfigProperty (
        module Exports, HandlerConfigProperty(..), mkHandlerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.ChannelNamespace.IntegrationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HandlerConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-channelnamespace-handlerconfig.html>
    HandlerConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-channelnamespace-handlerconfig.html#cfn-appsync-channelnamespace-handlerconfig-behavior>
                           behavior :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-channelnamespace-handlerconfig.html#cfn-appsync-channelnamespace-handlerconfig-integration>
                           integration :: IntegrationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHandlerConfigProperty ::
  Value Prelude.Text -> IntegrationProperty -> HandlerConfigProperty
mkHandlerConfigProperty behavior integration
  = HandlerConfigProperty
      {haddock_workaround_ = (), behavior = behavior,
       integration = integration}
instance ToResourceProperties HandlerConfigProperty where
  toResourceProperties HandlerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::ChannelNamespace.HandlerConfig",
         supportsTags = Prelude.False,
         properties = ["Behavior" JSON..= behavior,
                       "Integration" JSON..= integration]}
instance JSON.ToJSON HandlerConfigProperty where
  toJSON HandlerConfigProperty {..}
    = JSON.object
        ["Behavior" JSON..= behavior, "Integration" JSON..= integration]
instance Property "Behavior" HandlerConfigProperty where
  type PropertyType "Behavior" HandlerConfigProperty = Value Prelude.Text
  set newValue HandlerConfigProperty {..}
    = HandlerConfigProperty {behavior = newValue, ..}
instance Property "Integration" HandlerConfigProperty where
  type PropertyType "Integration" HandlerConfigProperty = IntegrationProperty
  set newValue HandlerConfigProperty {..}
    = HandlerConfigProperty {integration = newValue, ..}