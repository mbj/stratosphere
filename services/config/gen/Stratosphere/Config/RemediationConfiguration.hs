module Stratosphere.Config.RemediationConfiguration (
        module Exports, RemediationConfiguration(..),
        mkRemediationConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Config.RemediationConfiguration.ExecutionControlsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RemediationConfiguration
  = RemediationConfiguration {automatic :: (Prelude.Maybe (Value Prelude.Bool)),
                              configRuleName :: (Value Prelude.Text),
                              executionControls :: (Prelude.Maybe ExecutionControlsProperty),
                              maximumAutomaticAttempts :: (Prelude.Maybe (Value Prelude.Integer)),
                              parameters :: (Prelude.Maybe JSON.Object),
                              resourceType :: (Prelude.Maybe (Value Prelude.Text)),
                              retryAttemptSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                              targetId :: (Value Prelude.Text),
                              targetType :: (Value Prelude.Text),
                              targetVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRemediationConfiguration ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> RemediationConfiguration
mkRemediationConfiguration configRuleName targetId targetType
  = RemediationConfiguration
      {configRuleName = configRuleName, targetId = targetId,
       targetType = targetType, automatic = Prelude.Nothing,
       executionControls = Prelude.Nothing,
       maximumAutomaticAttempts = Prelude.Nothing,
       parameters = Prelude.Nothing, resourceType = Prelude.Nothing,
       retryAttemptSeconds = Prelude.Nothing,
       targetVersion = Prelude.Nothing}
instance ToResourceProperties RemediationConfiguration where
  toResourceProperties RemediationConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::Config::RemediationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConfigRuleName" JSON..= configRuleName,
                            "TargetId" JSON..= targetId, "TargetType" JSON..= targetType]
                           (Prelude.catMaybes
                              [(JSON..=) "Automatic" Prelude.<$> automatic,
                               (JSON..=) "ExecutionControls" Prelude.<$> executionControls,
                               (JSON..=) "MaximumAutomaticAttempts"
                                 Prelude.<$> maximumAutomaticAttempts,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "ResourceType" Prelude.<$> resourceType,
                               (JSON..=) "RetryAttemptSeconds" Prelude.<$> retryAttemptSeconds,
                               (JSON..=) "TargetVersion" Prelude.<$> targetVersion]))}
instance JSON.ToJSON RemediationConfiguration where
  toJSON RemediationConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConfigRuleName" JSON..= configRuleName,
               "TargetId" JSON..= targetId, "TargetType" JSON..= targetType]
              (Prelude.catMaybes
                 [(JSON..=) "Automatic" Prelude.<$> automatic,
                  (JSON..=) "ExecutionControls" Prelude.<$> executionControls,
                  (JSON..=) "MaximumAutomaticAttempts"
                    Prelude.<$> maximumAutomaticAttempts,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "ResourceType" Prelude.<$> resourceType,
                  (JSON..=) "RetryAttemptSeconds" Prelude.<$> retryAttemptSeconds,
                  (JSON..=) "TargetVersion" Prelude.<$> targetVersion])))
instance Property "Automatic" RemediationConfiguration where
  type PropertyType "Automatic" RemediationConfiguration = Value Prelude.Bool
  set newValue RemediationConfiguration {..}
    = RemediationConfiguration {automatic = Prelude.pure newValue, ..}
instance Property "ConfigRuleName" RemediationConfiguration where
  type PropertyType "ConfigRuleName" RemediationConfiguration = Value Prelude.Text
  set newValue RemediationConfiguration {..}
    = RemediationConfiguration {configRuleName = newValue, ..}
instance Property "ExecutionControls" RemediationConfiguration where
  type PropertyType "ExecutionControls" RemediationConfiguration = ExecutionControlsProperty
  set newValue RemediationConfiguration {..}
    = RemediationConfiguration
        {executionControls = Prelude.pure newValue, ..}
instance Property "MaximumAutomaticAttempts" RemediationConfiguration where
  type PropertyType "MaximumAutomaticAttempts" RemediationConfiguration = Value Prelude.Integer
  set newValue RemediationConfiguration {..}
    = RemediationConfiguration
        {maximumAutomaticAttempts = Prelude.pure newValue, ..}
instance Property "Parameters" RemediationConfiguration where
  type PropertyType "Parameters" RemediationConfiguration = JSON.Object
  set newValue RemediationConfiguration {..}
    = RemediationConfiguration {parameters = Prelude.pure newValue, ..}
instance Property "ResourceType" RemediationConfiguration where
  type PropertyType "ResourceType" RemediationConfiguration = Value Prelude.Text
  set newValue RemediationConfiguration {..}
    = RemediationConfiguration
        {resourceType = Prelude.pure newValue, ..}
instance Property "RetryAttemptSeconds" RemediationConfiguration where
  type PropertyType "RetryAttemptSeconds" RemediationConfiguration = Value Prelude.Integer
  set newValue RemediationConfiguration {..}
    = RemediationConfiguration
        {retryAttemptSeconds = Prelude.pure newValue, ..}
instance Property "TargetId" RemediationConfiguration where
  type PropertyType "TargetId" RemediationConfiguration = Value Prelude.Text
  set newValue RemediationConfiguration {..}
    = RemediationConfiguration {targetId = newValue, ..}
instance Property "TargetType" RemediationConfiguration where
  type PropertyType "TargetType" RemediationConfiguration = Value Prelude.Text
  set newValue RemediationConfiguration {..}
    = RemediationConfiguration {targetType = newValue, ..}
instance Property "TargetVersion" RemediationConfiguration where
  type PropertyType "TargetVersion" RemediationConfiguration = Value Prelude.Text
  set newValue RemediationConfiguration {..}
    = RemediationConfiguration
        {targetVersion = Prelude.pure newValue, ..}