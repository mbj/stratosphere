module Stratosphere.CloudFormation.HookTypeConfig (
        HookTypeConfig(..), mkHookTypeConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HookTypeConfig
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-hooktypeconfig.html>
    HookTypeConfig {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-hooktypeconfig.html#cfn-cloudformation-hooktypeconfig-configuration>
                    configuration :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-hooktypeconfig.html#cfn-cloudformation-hooktypeconfig-configurationalias>
                    configurationAlias :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-hooktypeconfig.html#cfn-cloudformation-hooktypeconfig-typearn>
                    typeArn :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-hooktypeconfig.html#cfn-cloudformation-hooktypeconfig-typename>
                    typeName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHookTypeConfig :: Value Prelude.Text -> HookTypeConfig
mkHookTypeConfig configuration
  = HookTypeConfig
      {haddock_workaround_ = (), configuration = configuration,
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