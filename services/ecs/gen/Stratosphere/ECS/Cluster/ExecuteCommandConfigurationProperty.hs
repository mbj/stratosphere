module Stratosphere.ECS.Cluster.ExecuteCommandConfigurationProperty (
        module Exports, ExecuteCommandConfigurationProperty(..),
        mkExecuteCommandConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Cluster.ExecuteCommandLogConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExecuteCommandConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-executecommandconfiguration.html>
    ExecuteCommandConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-executecommandconfiguration.html#cfn-ecs-cluster-executecommandconfiguration-kmskeyid>
                                         kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-executecommandconfiguration.html#cfn-ecs-cluster-executecommandconfiguration-logconfiguration>
                                         logConfiguration :: (Prelude.Maybe ExecuteCommandLogConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-executecommandconfiguration.html#cfn-ecs-cluster-executecommandconfiguration-logging>
                                         logging :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExecuteCommandConfigurationProperty ::
  ExecuteCommandConfigurationProperty
mkExecuteCommandConfigurationProperty
  = ExecuteCommandConfigurationProperty
      {haddock_workaround_ = (), kmsKeyId = Prelude.Nothing,
       logConfiguration = Prelude.Nothing, logging = Prelude.Nothing}
instance ToResourceProperties ExecuteCommandConfigurationProperty where
  toResourceProperties ExecuteCommandConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Cluster.ExecuteCommandConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                            (JSON..=) "Logging" Prelude.<$> logging])}
instance JSON.ToJSON ExecuteCommandConfigurationProperty where
  toJSON ExecuteCommandConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
               (JSON..=) "Logging" Prelude.<$> logging]))
instance Property "KmsKeyId" ExecuteCommandConfigurationProperty where
  type PropertyType "KmsKeyId" ExecuteCommandConfigurationProperty = Value Prelude.Text
  set newValue ExecuteCommandConfigurationProperty {..}
    = ExecuteCommandConfigurationProperty
        {kmsKeyId = Prelude.pure newValue, ..}
instance Property "LogConfiguration" ExecuteCommandConfigurationProperty where
  type PropertyType "LogConfiguration" ExecuteCommandConfigurationProperty = ExecuteCommandLogConfigurationProperty
  set newValue ExecuteCommandConfigurationProperty {..}
    = ExecuteCommandConfigurationProperty
        {logConfiguration = Prelude.pure newValue, ..}
instance Property "Logging" ExecuteCommandConfigurationProperty where
  type PropertyType "Logging" ExecuteCommandConfigurationProperty = Value Prelude.Text
  set newValue ExecuteCommandConfigurationProperty {..}
    = ExecuteCommandConfigurationProperty
        {logging = Prelude.pure newValue, ..}