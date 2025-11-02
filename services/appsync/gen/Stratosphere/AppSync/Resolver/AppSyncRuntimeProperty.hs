module Stratosphere.AppSync.Resolver.AppSyncRuntimeProperty (
        AppSyncRuntimeProperty(..), mkAppSyncRuntimeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AppSyncRuntimeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-appsyncruntime.html>
    AppSyncRuntimeProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-appsyncruntime.html#cfn-appsync-resolver-appsyncruntime-name>
                            name :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-appsyncruntime.html#cfn-appsync-resolver-appsyncruntime-runtimeversion>
                            runtimeVersion :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAppSyncRuntimeProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AppSyncRuntimeProperty
mkAppSyncRuntimeProperty name runtimeVersion
  = AppSyncRuntimeProperty
      {haddock_workaround_ = (), name = name,
       runtimeVersion = runtimeVersion}
instance ToResourceProperties AppSyncRuntimeProperty where
  toResourceProperties AppSyncRuntimeProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::Resolver.AppSyncRuntime",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name,
                       "RuntimeVersion" JSON..= runtimeVersion]}
instance JSON.ToJSON AppSyncRuntimeProperty where
  toJSON AppSyncRuntimeProperty {..}
    = JSON.object
        ["Name" JSON..= name, "RuntimeVersion" JSON..= runtimeVersion]
instance Property "Name" AppSyncRuntimeProperty where
  type PropertyType "Name" AppSyncRuntimeProperty = Value Prelude.Text
  set newValue AppSyncRuntimeProperty {..}
    = AppSyncRuntimeProperty {name = newValue, ..}
instance Property "RuntimeVersion" AppSyncRuntimeProperty where
  type PropertyType "RuntimeVersion" AppSyncRuntimeProperty = Value Prelude.Text
  set newValue AppSyncRuntimeProperty {..}
    = AppSyncRuntimeProperty {runtimeVersion = newValue, ..}