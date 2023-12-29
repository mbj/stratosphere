module Stratosphere.CloudFormation.HookTypeConfig (
        HookTypeConfig(..), mkHookTypeConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HookTypeConfig
  = HookTypeConfig {configuration :: (Value Prelude.Text),
                    configurationAlias :: (Prelude.Maybe (Value Prelude.Text)),
                    typeArn :: (Prelude.Maybe (Value Prelude.Text)),
                    typeName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHookTypeConfig :: Value Prelude.Text -> HookTypeConfig
mkHookTypeConfig configuration
  = HookTypeConfig
      {configuration = configuration,
       configurationAlias = Prelude.Nothing, typeArn = Prelude.Nothing,
       typeName = Prelude.Nothing}
instance ToResourceProperties HookTypeConfig where
  toResourceProperties HookTypeConfig {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::HookTypeConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Configuration" JSON..= configuration]
                           (Prelude.catMaybes
                              [(JSON..=) "ConfigurationAlias" Prelude.<$> configurationAlias,
                               (JSON..=) "TypeArn" Prelude.<$> typeArn,
                               (JSON..=) "TypeName" Prelude.<$> typeName]))}
instance JSON.ToJSON HookTypeConfig where
  toJSON HookTypeConfig {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Configuration" JSON..= configuration]
              (Prelude.catMaybes
                 [(JSON..=) "ConfigurationAlias" Prelude.<$> configurationAlias,
                  (JSON..=) "TypeArn" Prelude.<$> typeArn,
                  (JSON..=) "TypeName" Prelude.<$> typeName])))
instance Property "Configuration" HookTypeConfig where
  type PropertyType "Configuration" HookTypeConfig = Value Prelude.Text
  set newValue HookTypeConfig {..}
    = HookTypeConfig {configuration = newValue, ..}
instance Property "ConfigurationAlias" HookTypeConfig where
  type PropertyType "ConfigurationAlias" HookTypeConfig = Value Prelude.Text
  set newValue HookTypeConfig {..}
    = HookTypeConfig {configurationAlias = Prelude.pure newValue, ..}
instance Property "TypeArn" HookTypeConfig where
  type PropertyType "TypeArn" HookTypeConfig = Value Prelude.Text
  set newValue HookTypeConfig {..}
    = HookTypeConfig {typeArn = Prelude.pure newValue, ..}
instance Property "TypeName" HookTypeConfig where
  type PropertyType "TypeName" HookTypeConfig = Value Prelude.Text
  set newValue HookTypeConfig {..}
    = HookTypeConfig {typeName = Prelude.pure newValue, ..}