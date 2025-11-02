module Stratosphere.AppSync.FunctionConfiguration.SyncConfigProperty (
        module Exports, SyncConfigProperty(..), mkSyncConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.FunctionConfiguration.LambdaConflictHandlerConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SyncConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-functionconfiguration-syncconfig.html>
    SyncConfigProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-functionconfiguration-syncconfig.html#cfn-appsync-functionconfiguration-syncconfig-conflictdetection>
                        conflictDetection :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-functionconfiguration-syncconfig.html#cfn-appsync-functionconfiguration-syncconfig-conflicthandler>
                        conflictHandler :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-functionconfiguration-syncconfig.html#cfn-appsync-functionconfiguration-syncconfig-lambdaconflicthandlerconfig>
                        lambdaConflictHandlerConfig :: (Prelude.Maybe LambdaConflictHandlerConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSyncConfigProperty :: Value Prelude.Text -> SyncConfigProperty
mkSyncConfigProperty conflictDetection
  = SyncConfigProperty
      {haddock_workaround_ = (), conflictDetection = conflictDetection,
       conflictHandler = Prelude.Nothing,
       lambdaConflictHandlerConfig = Prelude.Nothing}
instance ToResourceProperties SyncConfigProperty where
  toResourceProperties SyncConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::FunctionConfiguration.SyncConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConflictDetection" JSON..= conflictDetection]
                           (Prelude.catMaybes
                              [(JSON..=) "ConflictHandler" Prelude.<$> conflictHandler,
                               (JSON..=) "LambdaConflictHandlerConfig"
                                 Prelude.<$> lambdaConflictHandlerConfig]))}
instance JSON.ToJSON SyncConfigProperty where
  toJSON SyncConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConflictDetection" JSON..= conflictDetection]
              (Prelude.catMaybes
                 [(JSON..=) "ConflictHandler" Prelude.<$> conflictHandler,
                  (JSON..=) "LambdaConflictHandlerConfig"
                    Prelude.<$> lambdaConflictHandlerConfig])))
instance Property "ConflictDetection" SyncConfigProperty where
  type PropertyType "ConflictDetection" SyncConfigProperty = Value Prelude.Text
  set newValue SyncConfigProperty {..}
    = SyncConfigProperty {conflictDetection = newValue, ..}
instance Property "ConflictHandler" SyncConfigProperty where
  type PropertyType "ConflictHandler" SyncConfigProperty = Value Prelude.Text
  set newValue SyncConfigProperty {..}
    = SyncConfigProperty {conflictHandler = Prelude.pure newValue, ..}
instance Property "LambdaConflictHandlerConfig" SyncConfigProperty where
  type PropertyType "LambdaConflictHandlerConfig" SyncConfigProperty = LambdaConflictHandlerConfigProperty
  set newValue SyncConfigProperty {..}
    = SyncConfigProperty
        {lambdaConflictHandlerConfig = Prelude.pure newValue, ..}